// ---------------------------------------------------------------------------
// LED LAMP DEMO
// ---------------------------------------------------------------------------

#include <NewPing.h>

#define NPN3904 5 // The transistor that drives the led
#define TRIGGER_PIN  12  // Arduino pin tied to trigger pin on the ultrasonic sensor.
#define ECHO_PIN     11  // Arduino pin tied to echo pin on the ultrasonic sensor.
#define MAX_DISTANCE 35 // Maximum distance we want to ping for (in centimeters). Maximum sensor distance is rated at 400-500cm.
#define MIN_SENSOR_DIST 5

const long Interval = 50;
const float CmToPwm = 8.5;   
unsigned long PreviousMillis = 0;
float FloatPwm = 0.0;
int IntPwm = 255;
NewPing sonar(TRIGGER_PIN, ECHO_PIN, MAX_DISTANCE); // NewPing setup of pins and maximum distance.
int CmDistance = MAX_DISTANCE;

void setup() {
  pinMode(NPN3904, OUTPUT);
  Serial.begin(115200); // Open serial monitor at 115200 baud to see ping results.
}

void loop() {
  
  unsigned long CurrentMillis = millis();
  
  if(CurrentMillis - PreviousMillis >= Interval)
  {
   PreviousMillis = CurrentMillis;
   CmDistance = sonar.convert_cm(sonar.ping_median());
   //delay(50);                     // Wait 50ms between pings (about 20 pings/sec). 29ms should be the shortest delay between pings.
  
   if (CmDistance >= 0)
   {
    if(CmDistance <= 5)
    {
     CmDistance = MIN_SENSOR_DIST; 
    }
    Serial.print("Ping: ");
    Serial.print(CmDistance); // Send ping, get distance in cm and print result (0 = outside set distance range)
    Serial.println("cm");
    FloatPwm = (CmDistance - MIN_SENSOR_DIST) * CmToPwm;
    IntPwm = (int) FloatPwm;
    Serial.println(IntPwm);
   }
  }
  analogWrite(NPN3904, IntPwm);
}



