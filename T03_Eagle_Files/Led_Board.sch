<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="2" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="10" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="9" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="7" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="5" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="9" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="T03_CustomLib">
<packages>
<package name="TL1F2-NW1">
<smd name="ANODE" x="-2.2" y="0" dx="3.2" dy="2" layer="1" rot="R90"/>
<smd name="CATHODE" x="1.6" y="0" dx="3.2" dy="3.2" layer="1" rot="R90"/>
<wire x1="2.5" y1="2.5" x2="2.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="2.5" y1="-2.5" x2="-2.5" y2="-2.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="-2.5" x2="-2.5" y2="2.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="2.5" x2="2.5" y2="2.5" width="0.127" layer="21"/>
<text x="-3.2" y="2.9" size="1.27" layer="21">&gt;name</text>
<text x="-3.3" y="-3.8" size="1.27" layer="21">&gt;value</text>
</package>
</packages>
<symbols>
<symbol name="TL1F2-NW1">
<wire x1="-5.08" y1="10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<pin name="CHD" x="0" y="-12.7" visible="pin" length="middle" rot="R90"/>
<pin name="AND" x="0" y="12.7" visible="pin" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TL1F2-NW1">
<gates>
<gate name="G$1" symbol="TL1F2-NW1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TL1F2-NW1">
<connects>
<connect gate="G$1" pin="AND" pad="ANODE"/>
<connect gate="G$1" pin="CHD" pad="CATHODE"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-samtec">
<description>&lt;b&gt;Samtec Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TSW-101-02-S-S">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<wire x1="-1.399" y1="1.155" x2="1.399" y2="1.155" width="0.2032" layer="21"/>
<wire x1="1.399" y1="1.155" x2="1.399" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="1.399" y1="-1.155" x2="-1.399" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="-1.399" y1="-1.155" x2="-1.399" y2="1.155" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<text x="-0.258" y="-2.498" size="1.1" layer="21" font="vector" rot="SR0">1</text>
<text x="-1.905" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.175" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.35" y1="-0.35" x2="0.35" y2="0.35" layer="51"/>
</package>
<package name="TSW-101-02-S-S-RA">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<wire x1="-1.399" y1="-2.046" x2="1.399" y2="-2.046" width="0.2032" layer="21"/>
<wire x1="1.399" y1="-2.046" x2="1.399" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="1.399" y1="-0.106" x2="-1.399" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="-1.399" y1="-0.106" x2="-1.399" y2="-2.046" width="0.2032" layer="21"/>
<pad name="1" x="0" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<text x="-1.905" y="-7.62" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.175" y="-7.62" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="1.282" y="1.152" size="1.1" layer="21" font="vector" rot="SR0">1</text>
<rectangle x1="-0.254" y1="0" x2="0.254" y2="1.778" layer="51"/>
<rectangle x1="-0.254" y1="-7.89" x2="0.254" y2="-2.04" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MPINV">
<text x="-1.27" y="1.27" size="1.778" layer="96">&gt;VALUE</text>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<rectangle x1="0" y1="-0.254" x2="1.778" y2="0.254" layer="94"/>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TSW-101-02-S-S" prefix="X">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<gates>
<gate name="-1" symbol="MPINV" x="-1.27" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="TSW-101-02-S-S">
<connects>
<connect gate="-1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-RA" package="TSW-101-02-S-S-RA">
<connects>
<connect gate="-1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="T03_CustomLib" deviceset="TL1F2-NW1" device=""/>
<part name="U$2" library="T03_CustomLib" deviceset="TL1F2-NW1" device=""/>
<part name="LED_V+" library="con-samtec" deviceset="TSW-101-02-S-S" device=""/>
<part name="LED_V-" library="con-samtec" deviceset="TSW-101-02-S-S" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="55.88" y="55.88"/>
<instance part="U$2" gate="G$1" x="55.88" y="22.86"/>
<instance part="LED_V+" gate="-1" x="55.88" y="80.01" rot="R90"/>
<instance part="LED_V-" gate="-1" x="55.88" y="-6.35" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="CHD"/>
<pinref part="U$2" gate="G$1" pin="AND"/>
<wire x1="55.88" y1="43.18" x2="55.88" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="CHD"/>
<pinref part="LED_V-" gate="-1" pin="1"/>
<wire x1="55.88" y1="-3.81" x2="55.88" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="AND"/>
<pinref part="LED_V+" gate="-1" pin="1"/>
<wire x1="55.88" y1="77.47" x2="55.88" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
