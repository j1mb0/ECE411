/*
 * T03_MtnCtrlLmp_BM.c
 *
 * Created: 11/27/2015 10:10:34 AM
 * Author : J1mb0
 * Motion Controlled Lamp using SR04 Ultrasonic Sensor
 * And custom Power NFET LED Driver.
 * 16 Mhz 62.5 ns Clock
 * Use prescale of 256 to get 16 us resolution on clock
 * with a range of 4 mS
 * Want response under 10 ms
 * Maybe not possible, SR04 has recommended read cycle of at least 60 ms
 */ 

#include <avr/io.h>
#define F_CPU 16000000UL //16 MHz
#include <util/delay.h>

#define MAX_PULSE_WIDTH 139 // 16 us * 139 ~= 2220 us
#define TIME_OUT 60		// 60 ms measurement cycle
#define MILLI_SECOND 64 // 16 us * 64 = 1024 uS or 1 mS 
#define US_ERROR 0xFFFF
// Ultrasonic Sensor (US) pin configuration
#define US_PORT PORTD
#define US_PIN PIND
#define US_DDR DDRD
#define US_ECHO_POS PORTD2
#define US_TRIG_POS PORTD3
// PWM conversion factors
#define MINIMUM_DISTANCE 27 // (3 in * 148)/ 16 uS = 27.75 rounded down 
#define MICROSEC_TO_PWM 2.28f // 2^8 / (139 - 27) ~= 2.28, our conversion factor

uint16_t getPulseWidth()
{
	uint16_t i, savedTimer, result, millisCount;
	
	i = 0;
	result = US_ERROR;		// Timed out code
	millisCount = 0;
	
	// set up timer
	TCCR0A = 0x00;
	TCCR0B = (1<<CS02);  // Prescaler = Fcpu/256
	TCNT0 = 0;			// Init Counter to 0
	
	// wait for the rising edge of ECHO or until time out
	while(millisCount < TIME_OUT && !(US_PIN & (1<<US_ECHO_POS)))
	{
		if(TCNT0 >= MILLI_SECOND)
		{
			TCNT0 = 0;
			millisCount++;
		}
	}
	// stop timer - I DO NOT THINK WE NEED TO DO THIS
	//CCR0B = 0x00 
	// Reset the timer
	//TCNT0 = 0;
	// Start timer again 
	//TCCR0B |= (1<<CS02);
	savedTimer = TCNT0;
	
	// Now wait for the falling edge or for the measurement to time out
	while((i - savedTimer) < MAX_PULSE_WIDTH && US_PIN & (1<<US_ECHO_POS))
	{
		i = TCNT0;
	}
	
	// if it did not time out, save the timer value
	if(i < MAX_PULSE_WIDTH)
	{
		result = i;
	}
	
	while(millisCount < MILLI_SECOND)
	{
		if(TCNT0 >= MILLI_SECOND)
		{
			TCNT0 = 0;
			millisCount++;
		}
	}
	
	// TURN OFF TIMER0
	TCCR0B = 0x00;
	
	return result;	
}

int main(void)
{
    uint16_t  i, result, averageResult;
	uint8_t pwmOut;
	pwmOut = 0;
	
	// Set Output/Input modes for pins
	// PWM_LEDS (PB2) as output (set 1)
	DDRB |= (1<<DDB2);
	// TRIG (PD3) as output (set 1)
	US_DDR |= (1<<DDD3);
	_delay_us(10);
	// ECHO (PD2) as input (set 0) NOT NECESSARY DEFAULT IS INPUT
	// US_DDR &= (0b111111011);
	
	// configure timer 0 NOT NECESSARY HERE, is done in 
	// set prescaler = FCPU/256
	// TCCR0B |= (1<<CS02);
	// initialize counter
	// TCNT0 = 0;
	
	// configure PWM
	// Set non-inverting 8-bit  fast PWM with no pre-scaler (full Fclk)
	TCCR1A = 0x23;
	TCCR1B = 0x09;
	
    while (1) 
    {
		// Read from SR04
			// DESIRED: Average 4 or so readings. 
		averageResult = 0;
		for(i = 0; i < 4; i++)
		{
			// Give the SR04 TRIG pin a 15 us High Pulse
			US_PORT |= (1<<US_TRIG_POS);
			_delay_us(16);
			US_PORT &= (~(1<<US_TRIG_POS));
			
			result = getPulseWidth();
			if(result == US_ERROR)
			{
				// SR04 timed out. Reset everything.
				averageResult = 0;
				break;
			} else
			{
				averageResult += result;
			}
		}
		
		// convert to PWM 
		if(averageResult > 0 )
		{
			averageResult = averageResult >> 2; // divide by 4 to get average
			// now check if further than 3 inches away
			if(averageResult > MINIMUM_DISTANCE)
			{
				// if it is, convert it to our 16 bit PWM value
				pwmOut = (uint8_t) (averageResult - MINIMUM_DISTANCE) * MICROSEC_TO_PWM;
			}
			else
			{
				pwmOut = 0;
			}
		}
		
		// Set PWM out accordingly
		OCR1A = pwmOut;
    }
}

