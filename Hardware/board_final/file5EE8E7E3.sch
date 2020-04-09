EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AD8031ARZ-REEL:AD8031ARZ-REEL U?
U 1 1 5E86A2C2
P 4250 1750
F 0 "U?" H 4250 2320 50  0000 C CNN
F 1 "AD8031ARZ-REEL" H 4250 2229 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P600X175-8N" H 4250 1750 50  0001 L BNN
F 3 "AD8031ARZ-REEL" H 4250 1750 50  0001 L BNN
F 4 "2074885" H 4250 1750 50  0001 L BNN "Field4"
F 5 "88H0118" H 4250 1750 50  0001 L BNN "Field5"
F 6 "Analog Devices" H 4250 1750 50  0001 L BNN "Field6"
F 7 "8-Lead SOIC_N" H 4250 1750 50  0001 L BNN "Field7"
	1    4250 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E86A2C8
P 1000 2250
F 0 "#PWR?" H 1000 2000 50  0001 C CNN
F 1 "GND" H 1005 2077 50  0000 C CNN
F 2 "" H 1000 2250 50  0001 C CNN
F 3 "" H 1000 2250 50  0001 C CNN
	1    1000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E86A2CE
P 1500 2250
F 0 "#PWR?" H 1500 2000 50  0001 C CNN
F 1 "GND" H 1505 2077 50  0000 C CNN
F 2 "" H 1500 2250 50  0001 C CNN
F 3 "" H 1500 2250 50  0001 C CNN
	1    1500 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E86A2D4
P 2100 2300
F 0 "#PWR?" H 2100 2050 50  0001 C CNN
F 1 "GND" H 2105 2127 50  0000 C CNN
F 2 "" H 2100 2300 50  0001 C CNN
F 3 "" H 2100 2300 50  0001 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E86A2DA
P 3550 2150
F 0 "#PWR?" H 3550 1900 50  0001 C CNN
F 1 "GND" H 3555 1977 50  0000 C CNN
F 2 "" H 3550 2150 50  0001 C CNN
F 3 "" H 3550 2150 50  0001 C CNN
	1    3550 2150
	1    0    0    -1  
$EndComp
Text GLabel 1950 1050 1    50   Input ~ 0
3V3
$Comp
L Device:R_Small_US R?
U 1 1 5E86A2E1
P 2100 2000
F 0 "R?" V 1895 2000 50  0000 C CNN
F 1 "10k" V 1986 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2100 2000 50  0001 C CNN
F 3 "~" H 2100 2000 50  0001 C CNN
	1    2100 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E86A2E7
P 1950 1150
F 0 "R?" V 1745 1150 50  0000 C CNN
F 1 "10k" V 1836 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1950 1150 50  0001 C CNN
F 3 "~" H 1950 1150 50  0001 C CNN
	1    1950 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E86A2ED
P 1500 2000
F 0 "C?" H 1592 2046 50  0000 L CNN
F 1 "100n" H 1592 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1500 2000 50  0001 C CNN
F 3 "~" H 1500 2000 50  0001 C CNN
	1    1500 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E86A2F3
P 1000 2000
F 0 "C?" H 1092 2046 50  0000 L CNN
F 1 "10u" H 1092 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1000 2000 50  0001 C CNN
F 3 "~" H 1000 2000 50  0001 C CNN
	1    1000 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E86A2F9
P 5600 1750
F 0 "C?" H 5692 1796 50  0000 L CNN
F 1 "10u" H 5692 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5600 1750 50  0001 C CNN
F 3 "~" H 5600 1750 50  0001 C CNN
	1    5600 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E86A2FF
P 6100 1750
F 0 "C?" H 6192 1796 50  0000 L CNN
F 1 "100n" H 6192 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6100 1750 50  0001 C CNN
F 3 "~" H 6100 1750 50  0001 C CNN
	1    6100 1750
	-1   0    0    1   
$EndComp
Text GLabel 3550 1550 0    50   Input ~ 0
3V3
$Comp
L Device:R_Small_US R?
U 1 1 5E86A306
P 3050 2300
F 0 "R?" V 2845 2300 50  0000 C CNN
F 1 "4.99k" V 2936 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3050 2300 50  0001 C CNN
F 3 "~" H 3050 2300 50  0001 C CNN
	1    3050 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 1850 3050 1850
Wire Wire Line
	3050 1850 3050 2200
Wire Wire Line
	3050 2400 3050 2700
Wire Wire Line
	3050 2700 5050 2700
Wire Wire Line
	5050 2700 5050 1650
Wire Wire Line
	2100 2100 2100 2300
Wire Wire Line
	1000 2100 1000 2250
Wire Wire Line
	1500 2100 1500 2250
Wire Wire Line
	1000 1900 1500 1900
Wire Wire Line
	2100 1900 1950 1900
Connection ~ 1500 1900
Wire Wire Line
	2100 1900 2600 1900
Wire Wire Line
	2600 1900 2600 1750
Wire Wire Line
	2600 1750 3550 1750
Connection ~ 2100 1900
Wire Wire Line
	1950 1250 1950 1900
Connection ~ 1950 1900
Wire Wire Line
	1950 1900 1500 1900
Wire Wire Line
	4950 1650 5050 1650
Connection ~ 5050 1650
Wire Wire Line
	5050 1650 5600 1650
Connection ~ 5600 1650
Text GLabel 6400 1650 2    50   Input ~ 0
VREF
Wire Wire Line
	6100 1650 5600 1650
Wire Wire Line
	6400 1650 6100 1650
Connection ~ 6100 1650
$Comp
L power:GND #PWR?
U 1 1 5E86A326
P 5600 1850
F 0 "#PWR?" H 5600 1600 50  0001 C CNN
F 1 "GND" H 5605 1677 50  0000 C CNN
F 2 "" H 5600 1850 50  0001 C CNN
F 3 "" H 5600 1850 50  0001 C CNN
	1    5600 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E86A32C
P 6100 1850
F 0 "#PWR?" H 6100 1600 50  0001 C CNN
F 1 "GND" H 6105 1677 50  0000 C CNN
F 2 "" H 6100 1850 50  0001 C CNN
F 3 "" H 6100 1850 50  0001 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
NoConn ~ 4950 1950
NoConn ~ 4950 2050
NoConn ~ 4950 2150
Text Notes 1600 3150 0    118  ~ 24
PREAMP VOLTAGE DIVIDER\n
Wire Notes Line
	700  3800 6850 3800
Wire Notes Line
	6850 3800 6850 600 
Wire Notes Line
	6850 600  700  600 
Wire Notes Line
	700  600  700  3800
$Comp
L stm32_board-rescue:PJS008-2003-1-SamacSys_Parts J?
U 1 1 5E8812C6
P 2750 5600
AR Path="/5E8812C6" Ref="J?"  Part="1" 
AR Path="/5E85F0ED/5E8812C6" Ref="J?"  Part="1" 
AR Path="/5EE8E7E4/5E8812C6" Ref="J?"  Part="1" 
F 0 "J?" H 3200 5865 50  0000 C CNN
F 1 "PJS008-2003-1" H 3200 5774 50  0000 C CNN
F 2 "SamacSys_Parts:PJS00820031" H 3500 5700 50  0001 L CNN
F 3 "https://www.mouser.com/datasheet/2/448/yamaichi_electronics_yeui-s-a0004672260-1-1694640.pdf" H 3500 5600 50  0001 L CNN
F 4 "micro SD push/push reversed type,  with positionin" H 3500 5500 50  0001 L CNN "Description"
F 5 "1.85" H 3500 5400 50  0001 L CNN "Height"
F 6 "Yamaichi" H 3500 5300 50  0001 L CNN "Manufacturer_Name"
F 7 "PJS008-2003-1" H 3500 5200 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "945-PJS008-2003-1" H 3500 5100 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=945-PJS008-2003-1" H 3500 5000 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3500 4900 50  0001 L CNN "RS Part Number"
F 11 "" H 3500 4800 50  0001 L CNN "RS Price/Stock"
	1    2750 5600
	1    0    0    -1  
$EndComp
Text GLabel 4800 5900 1    48   Input ~ 0
3V3
$Comp
L Device:R_Small_US R?
U 1 1 5E8812CD
P 4300 6200
AR Path="/5E8812CD" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E8812CD" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E8812CD" Ref="R?"  Part="1" 
F 0 "R?" V 4500 6200 50  0000 C CNN
F 1 "0" V 4400 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4300 6200 50  0001 C CNN
F 3 "~" H 4300 6200 50  0001 C CNN
	1    4300 6200
	0    1    1    0   
$EndComp
Text GLabel 5250 6200 2    50   Input ~ 0
uSD_Detect
Wire Wire Line
	3650 6200 4200 6200
Wire Wire Line
	4400 6200 4800 6200
$Comp
L Device:R_Small_US R?
U 1 1 5E8812D6
P 4800 6050
AR Path="/5E8812D6" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E8812D6" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E8812D6" Ref="R?"  Part="1" 
F 0 "R?" V 5000 6050 50  0000 C CNN
F 1 "NA" V 4900 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4800 6050 50  0001 C CNN
F 3 "~" H 4800 6050 50  0001 C CNN
	1    4800 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 5950 4800 5900
Wire Wire Line
	4800 6150 4800 6200
Connection ~ 4800 6200
Wire Wire Line
	4800 6200 5250 6200
Text GLabel 1650 6200 0    50   Input ~ 0
uSD_D0
Text GLabel 1650 6300 0    50   Input ~ 0
uSD_D1
Text GLabel 1650 6000 0    50   Input ~ 0
uSD_CLK
Text GLabel 1650 5700 0    50   Input ~ 0
uSD_D3
Text GLabel 1650 5800 0    50   Input ~ 0
uSD_CMD
Text GLabel 1650 5600 0    50   Input ~ 0
uSD_D2
Wire Wire Line
	1650 5800 1800 5800
Text GLabel 1450 5900 0    39   Input ~ 0
3V3
Wire Wire Line
	1450 5900 2750 5900
Wire Wire Line
	1650 6000 2750 6000
$Comp
L Device:R_Small_US R?
U 1 1 5E8812EA
P 1800 4950
AR Path="/5E8812EA" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E8812EA" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E8812EA" Ref="R?"  Part="1" 
F 0 "R?" V 2000 4950 50  0000 C CNN
F 1 "47k" V 1900 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1800 4950 50  0001 C CNN
F 3 "~" H 1800 4950 50  0001 C CNN
	1    1800 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF0E
P 2000 4950
AR Path="/5EE8FF0E" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF0E" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF0E" Ref="R?"  Part="1" 
F 0 "R?" V 2100 5100 50  0000 C CNN
F 1 "47k" V 2100 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2000 4950 50  0001 C CNN
F 3 "~" H 2000 4950 50  0001 C CNN
	1    2000 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF0F
P 2250 4950
AR Path="/5EE8FF0F" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF0F" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF0F" Ref="R?"  Part="1" 
F 0 "R?" V 2350 5100 50  0000 C CNN
F 1 "47k" V 2350 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2250 4950 50  0001 C CNN
F 3 "~" H 2250 4950 50  0001 C CNN
	1    2250 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF10
P 2450 4950
AR Path="/5EE8FF10" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF10" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF10" Ref="R?"  Part="1" 
F 0 "R?" H 2450 4650 50  0000 C CNN
F 1 "47k" H 2450 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2450 4950 50  0001 C CNN
F 3 "~" H 2450 4950 50  0001 C CNN
	1    2450 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E881302
P 2700 4950
AR Path="/5E881302" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E881302" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E881302" Ref="R?"  Part="1" 
F 0 "R?" V 2600 5000 50  0000 C CNN
F 1 "47k" V 2500 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2700 4950 50  0001 C CNN
F 3 "~" H 2700 4950 50  0001 C CNN
	1    2700 4950
	-1   0    0    1   
$EndComp
Text GLabel 2200 4450 1    48   Input ~ 0
3V3
Wire Wire Line
	1800 4850 2000 4850
Wire Wire Line
	2000 4850 2200 4850
Connection ~ 2000 4850
Wire Wire Line
	2250 4850 2450 4850
Connection ~ 2250 4850
Wire Wire Line
	2450 4850 2700 4850
Connection ~ 2450 4850
Wire Wire Line
	2200 4450 2200 4850
Wire Wire Line
	2200 4850 2250 4850
Connection ~ 2200 4850
Connection ~ 1800 5800
Wire Wire Line
	1800 5800 2750 5800
Wire Wire Line
	1800 5050 1800 5800
Wire Wire Line
	2000 5050 2000 5700
Wire Wire Line
	1650 5700 2000 5700
Connection ~ 2000 5700
Wire Wire Line
	2000 5700 2750 5700
Wire Wire Line
	2250 5050 2250 5600
Wire Wire Line
	1650 5600 2250 5600
Connection ~ 2250 5600
Wire Wire Line
	2250 5600 2750 5600
Wire Wire Line
	2450 5050 2450 6200
Wire Wire Line
	1650 6200 2450 6200
Connection ~ 2450 6200
Wire Wire Line
	2450 6200 2750 6200
Wire Wire Line
	2700 5050 2700 6300
Wire Wire Line
	1650 6300 2700 6300
Connection ~ 2700 6300
Wire Wire Line
	2700 6300 2750 6300
Wire Wire Line
	3650 5800 3850 5800
Wire Wire Line
	3650 5900 3850 5900
Wire Wire Line
	3850 5800 3850 5900
Connection ~ 3850 5900
Wire Wire Line
	3850 5900 3850 6000
Wire Wire Line
	3650 6000 3850 6000
Connection ~ 3850 6000
Wire Wire Line
	3650 6100 3850 6100
Wire Wire Line
	3850 6100 3850 6000
NoConn ~ 3650 5600
NoConn ~ 3650 5700
$Comp
L power:GND #PWR?
U 1 1 5E881331
P 3850 6000
AR Path="/5E881331" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E881331" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5E881331" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3850 5750 50  0001 C CNN
F 1 "GND" H 3855 5827 50  0000 C CNN
F 2 "" H 3850 6000 50  0001 C CNN
F 3 "" H 3850 6000 50  0001 C CNN
	1    3850 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE8FF13
P 2600 6100
AR Path="/5EE8FF13" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF13" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF13" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2600 5850 50  0001 C CNN
F 1 "GND" H 2605 5927 50  0000 C CNN
F 2 "" H 2600 6100 50  0001 C CNN
F 3 "" H 2600 6100 50  0001 C CNN
	1    2600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6100 2750 6100
$Comp
L power:GND #PWR?
U 1 1 5EE8FF14
P 3650 6300
AR Path="/5EE8FF14" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF14" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF14" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3650 6050 50  0001 C CNN
F 1 "GND" H 3655 6127 50  0000 C CNN
F 2 "" H 3650 6300 50  0001 C CNN
F 3 "" H 3650 6300 50  0001 C CNN
	1    3650 6300
	1    0    0    -1  
$EndComp
Text Notes 3050 6800 0    118  ~ 24
uSD 
Wire Notes Line
	750  7000 6100 7000
Wire Notes Line
	6100 7000 6100 3900
Wire Notes Line
	6100 3900 750  3900
Wire Notes Line
	750  3900 750  7000
$Comp
L stm32_board-rescue:142-0701-851-SamacSys_Parts J?
U 1 1 5E917AF3
P 1650 10650
AR Path="/5E917AF3" Ref="J?"  Part="1" 
AR Path="/5E85F0ED/5E917AF3" Ref="J?"  Part="1" 
AR Path="/5EE8E7E4/5E917AF3" Ref="J?"  Part="1" 
F 0 "J?" V 2000 11050 50  0000 C CNN
F 1 "142-0701-851" H 1750 11350 50  0000 C CNN
F 2 "SamacSys_Parts:142-0701-851" H 2000 11250 50  0001 L CNN
F 3 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701851.pdf" H 2000 11150 50  0001 L CNN
F 4 "SMA 50 Ohm End Launch Jack Receptacle - Tab Contact" H 2000 11050 50  0001 L CNN "Description"
F 5 "" H 2000 10950 50  0001 L CNN "Height"
F 6 "Cinch" H 2000 10850 50  0001 L CNN "Manufacturer_Name"
F 7 "142-0701-851" H 2000 10750 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "530-142-0701-851" H 2000 10650 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=530-142-0701-851" H 2000 10550 50  0001 L CNN "Mouser Price/Stock"
F 10 "8857532" H 2000 10450 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/8857532" H 2000 10350 50  0001 L CNN "RS Price/Stock"
F 12 "70090523" H 2000 10250 50  0001 L CNN "Allied_Number"
F 13 "https://www.alliedelec.com/johnson-cinch-connectivity-solutions-142-0701-851/70090523/" H 2000 10150 50  0001 L CNN "Allied Price/Stock"
	1    1650 10650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E917AF9
P 1650 10450
AR Path="/5E917AF9" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917AF9" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5E917AF9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 10200 50  0001 C CNN
F 1 "GND" H 1655 10277 50  0000 C CNN
F 2 "" H 1650 10450 50  0001 C CNN
F 3 "" H 1650 10450 50  0001 C CNN
	1    1650 10450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE8FF17
P 1650 10650
AR Path="/5EE8FF17" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF17" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF17" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 10400 50  0001 C CNN
F 1 "GND" H 1655 10477 50  0000 C CNN
F 2 "" H 1650 10650 50  0001 C CNN
F 3 "" H 1650 10650 50  0001 C CNN
	1    1650 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF18
P 2350 10550
AR Path="/5EE8FF18" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF18" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF18" Ref="R?"  Part="1" 
F 0 "R?" V 2145 10550 50  0000 C CNN
F 1 "418" V 2236 10550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2350 10550 50  0001 C CNN
F 3 "~" H 2350 10550 50  0001 C CNN
	1    2350 10550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF19
P 2750 10900
AR Path="/5EE8FF19" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF19" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF19" Ref="R?"  Part="1" 
F 0 "R?" V 2545 10900 50  0000 C CNN
F 1 "558" V 2636 10900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2750 10900 50  0001 C CNN
F 3 "~" H 2750 10900 50  0001 C CNN
	1    2750 10900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF1A
P 3450 10050
AR Path="/5EE8FF1A" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF1A" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF1A" Ref="R?"  Part="1" 
F 0 "R?" V 3245 10050 50  0000 C CNN
F 1 "4.52k" V 3336 10050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3450 10050 50  0001 C CNN
F 3 "~" H 3450 10050 50  0001 C CNN
	1    3450 10050
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EE8FF1B
P 3100 10550
AR Path="/5EE8FF1B" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF1B" Ref="C?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF1B" Ref="C?"  Part="1" 
F 0 "C?" H 3192 10596 50  0000 L CNN
F 1 "1.3n" H 3192 10505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3100 10550 50  0001 C CNN
F 3 "~" H 3100 10550 50  0001 C CNN
	1    3100 10550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EE8FF1C
P 3000 9750
AR Path="/5EE8FF1C" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF1C" Ref="C?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF1C" Ref="C?"  Part="1" 
F 0 "C?" H 3092 9796 50  0000 L CNN
F 1 "1.3n" H 3092 9705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3000 9750 50  0001 C CNN
F 3 "~" H 3000 9750 50  0001 C CNN
	1    3000 9750
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4807-1 U?
U 1 1 5EE8FF1D
P 4050 10650
AR Path="/5EE8FF1D" Ref="U?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF1D" Ref="U?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF1D" Ref="U?"  Part="1" 
F 0 "U?" H 4300 10900 50  0000 L CNN
F 1 "ADA4807-1" H 4200 10800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4050 10400 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 4050 10300 50  0001 L CNN
	1    4050 10650
	1    0    0    1   
$EndComp
Wire Wire Line
	1650 10550 2250 10550
Text GLabel 2750 11000 3    50   Input ~ 0
VREF
Wire Wire Line
	2450 10550 2750 10550
Wire Wire Line
	2750 10800 2750 10550
Connection ~ 2750 10550
Wire Wire Line
	2750 10550 3000 10550
Wire Wire Line
	3750 10550 3450 10550
Wire Wire Line
	2900 9750 2750 9750
Wire Wire Line
	2750 9750 2750 10550
Wire Wire Line
	3450 10150 3450 10550
Connection ~ 3450 10550
Wire Wire Line
	3450 10550 3200 10550
Wire Wire Line
	3100 9750 3450 9750
Wire Wire Line
	4350 9750 4350 10650
Wire Wire Line
	3450 9950 3450 9750
Connection ~ 3450 9750
Wire Wire Line
	3450 9750 4350 9750
Text GLabel 3950 10950 3    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5EE8FF1E
P 3950 10350
AR Path="/5EE8FF1E" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF1E" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF1E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 10100 50  0001 C CNN
F 1 "GND" H 3955 10177 50  0000 C CNN
F 2 "" H 3950 10350 50  0001 C CNN
F 3 "" H 3950 10350 50  0001 C CNN
	1    3950 10350
	-1   0    0    1   
$EndComp
Text GLabel 3750 10750 0    50   Input ~ 0
VREF
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF1F
P 5500 10650
AR Path="/5EE8FF1F" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF1F" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF1F" Ref="R?"  Part="1" 
F 0 "R?" V 5295 10650 50  0000 C CNN
F 1 "406" V 5386 10650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5500 10650 50  0001 C CNN
F 3 "~" H 5500 10650 50  0001 C CNN
	1    5500 10650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF20
P 5900 11000
AR Path="/5EE8FF20" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF20" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF20" Ref="R?"  Part="1" 
F 0 "R?" V 5695 11000 50  0000 C CNN
F 1 "541" V 5786 11000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5900 11000 50  0001 C CNN
F 3 "~" H 5900 11000 50  0001 C CNN
	1    5900 11000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF21
P 6600 10150
AR Path="/5EE8FF21" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF21" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF21" Ref="R?"  Part="1" 
F 0 "R?" V 6395 10150 50  0000 C CNN
F 1 "4.39k" V 6486 10150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6600 10150 50  0001 C CNN
F 3 "~" H 6600 10150 50  0001 C CNN
	1    6600 10150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EE8FF22
P 6250 10650
AR Path="/5EE8FF22" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF22" Ref="C?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF22" Ref="C?"  Part="1" 
F 0 "C?" H 6342 10696 50  0000 L CNN
F 1 "1.1n" H 6342 10605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6250 10650 50  0001 C CNN
F 3 "~" H 6250 10650 50  0001 C CNN
	1    6250 10650
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B5A
P 6150 9850
AR Path="/5E917B5A" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B5A" Ref="C?"  Part="1" 
AR Path="/5EE8E7E4/5E917B5A" Ref="C?"  Part="1" 
F 0 "C?" H 6242 9896 50  0000 L CNN
F 1 "1.1n" H 6242 9805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6150 9850 50  0001 C CNN
F 3 "~" H 6150 9850 50  0001 C CNN
	1    6150 9850
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4807-1 U?
U 1 1 5E917B60
P 7200 10750
AR Path="/5E917B60" Ref="U?"  Part="1" 
AR Path="/5E85F0ED/5E917B60" Ref="U?"  Part="1" 
AR Path="/5EE8E7E4/5E917B60" Ref="U?"  Part="1" 
F 0 "U?" H 7450 11000 50  0000 L CNN
F 1 "ADA4807-1" H 7400 10900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7200 10500 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 7200 10400 50  0001 L CNN
	1    7200 10750
	1    0    0    1   
$EndComp
Text GLabel 5900 11100 3    50   Input ~ 0
VREF
Wire Wire Line
	5600 10650 5900 10650
Wire Wire Line
	5900 10900 5900 10650
Connection ~ 5900 10650
Wire Wire Line
	5900 10650 6150 10650
Wire Wire Line
	6900 10650 6600 10650
Wire Wire Line
	6050 9850 5900 9850
Wire Wire Line
	5900 9850 5900 10650
Wire Wire Line
	6600 10250 6600 10650
Connection ~ 6600 10650
Wire Wire Line
	6600 10650 6350 10650
Wire Wire Line
	6250 9850 6600 9850
Wire Wire Line
	7500 9850 7500 10750
Wire Wire Line
	6600 10050 6600 9850
Connection ~ 6600 9850
Wire Wire Line
	6600 9850 7500 9850
Text GLabel 7100 11050 3    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5E917B77
P 7100 10450
AR Path="/5E917B77" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917B77" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5E917B77" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7100 10200 50  0001 C CNN
F 1 "GND" H 7105 10277 50  0000 C CNN
F 2 "" H 7100 10450 50  0001 C CNN
F 3 "" H 7100 10450 50  0001 C CNN
	1    7100 10450
	-1   0    0    1   
$EndComp
Text GLabel 6900 10850 0    50   Input ~ 0
VREF
$Comp
L Device:R_Small_US R?
U 1 1 5E917B7E
P 8200 10750
AR Path="/5E917B7E" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B7E" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E917B7E" Ref="R?"  Part="1" 
F 0 "R?" V 7995 10750 50  0000 C CNN
F 1 "1.02k" V 8086 10750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8200 10750 50  0001 C CNN
F 3 "~" H 8200 10750 50  0001 C CNN
	1    8200 10750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B84
P 8600 11100
AR Path="/5E917B84" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B84" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E917B84" Ref="R?"  Part="1" 
F 0 "R?" V 8395 11100 50  0000 C CNN
F 1 "106" V 8486 11100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8600 11100 50  0001 C CNN
F 3 "~" H 8600 11100 50  0001 C CNN
	1    8600 11100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B8A
P 9300 10250
AR Path="/5E917B8A" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B8A" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E917B8A" Ref="R?"  Part="1" 
F 0 "R?" V 9095 10250 50  0000 C CNN
F 1 "11k" V 9186 10250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9300 10250 50  0001 C CNN
F 3 "~" H 9300 10250 50  0001 C CNN
	1    9300 10250
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B90
P 8950 10750
AR Path="/5E917B90" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B90" Ref="C?"  Part="1" 
AR Path="/5EE8E7E4/5E917B90" Ref="C?"  Part="1" 
F 0 "C?" H 9042 10796 50  0000 L CNN
F 1 "1.5n" H 9042 10705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8950 10750 50  0001 C CNN
F 3 "~" H 8950 10750 50  0001 C CNN
	1    8950 10750
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B96
P 8850 9950
AR Path="/5E917B96" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B96" Ref="C?"  Part="1" 
AR Path="/5EE8E7E4/5E917B96" Ref="C?"  Part="1" 
F 0 "C?" H 8942 9996 50  0000 L CNN
F 1 "1.5n" H 8942 9905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8850 9950 50  0001 C CNN
F 3 "~" H 8850 9950 50  0001 C CNN
	1    8850 9950
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4807-1 U?
U 1 1 5E917B9C
P 9900 10850
AR Path="/5E917B9C" Ref="U?"  Part="1" 
AR Path="/5E85F0ED/5E917B9C" Ref="U?"  Part="1" 
AR Path="/5EE8E7E4/5E917B9C" Ref="U?"  Part="1" 
F 0 "U?" H 10244 10804 50  0000 L CNN
F 1 "ADA4807-1" H 10244 10895 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 9900 10600 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 9900 10500 50  0001 L CNN
	1    9900 10850
	1    0    0    1   
$EndComp
Wire Wire Line
	7500 10750 8100 10750
Text GLabel 8600 11200 3    50   Input ~ 0
VREF
Wire Wire Line
	8300 10750 8600 10750
Wire Wire Line
	8600 11000 8600 10750
Connection ~ 8600 10750
Wire Wire Line
	8600 10750 8850 10750
Wire Wire Line
	9600 10750 9300 10750
Wire Wire Line
	8750 9950 8600 9950
Wire Wire Line
	8600 9950 8600 10750
Wire Wire Line
	9300 10350 9300 10750
Connection ~ 9300 10750
Wire Wire Line
	9300 10750 9050 10750
Wire Wire Line
	8950 9950 9300 9950
Wire Wire Line
	10200 9950 10200 10850
Wire Wire Line
	9300 10150 9300 9950
Connection ~ 9300 9950
Wire Wire Line
	9300 9950 10200 9950
Text GLabel 9800 11150 3    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5E917BB4
P 9800 10550
AR Path="/5E917BB4" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917BB4" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5E917BB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9800 10300 50  0001 C CNN
F 1 "GND" H 9805 10377 50  0000 C CNN
F 2 "" H 9800 10550 50  0001 C CNN
F 3 "" H 9800 10550 50  0001 C CNN
	1    9800 10550
	-1   0    0    1   
$EndComp
Text GLabel 9600 10950 0    50   Input ~ 0
VREF
Wire Wire Line
	4350 10650 5400 10650
Connection ~ 4350 10650
$Comp
L Device:R_Small_US R?
U 1 1 5E917BBD
P 10900 10850
AR Path="/5E917BBD" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917BBD" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E917BBD" Ref="R?"  Part="1" 
F 0 "R?" V 10695 10850 50  0000 C CNN
F 1 "966" V 10786 10850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 10900 10850 50  0001 C CNN
F 3 "~" H 10900 10850 50  0001 C CNN
	1    10900 10850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8FF2C
P 11300 11200
AR Path="/5EE8FF2C" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF2C" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF2C" Ref="R?"  Part="1" 
F 0 "R?" V 11095 11200 50  0000 C CNN
F 1 "100" V 11186 11200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 11300 11200 50  0001 C CNN
F 3 "~" H 11300 11200 50  0001 C CNN
	1    11300 11200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917BC9
P 12000 10350
AR Path="/5E917BC9" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917BC9" Ref="R?"  Part="1" 
AR Path="/5EE8E7E4/5E917BC9" Ref="R?"  Part="1" 
F 0 "R?" V 11795 10350 50  0000 C CNN
F 1 "10.4k" V 11886 10350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 12000 10350 50  0001 C CNN
F 3 "~" H 12000 10350 50  0001 C CNN
	1    12000 10350
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917BCF
P 11650 10850
AR Path="/5E917BCF" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917BCF" Ref="C?"  Part="1" 
AR Path="/5EE8E7E4/5E917BCF" Ref="C?"  Part="1" 
F 0 "C?" H 11742 10896 50  0000 L CNN
F 1 "1n" H 11742 10805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11650 10850 50  0001 C CNN
F 3 "~" H 11650 10850 50  0001 C CNN
	1    11650 10850
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EE8FF2F
P 11550 10050
AR Path="/5EE8FF2F" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF2F" Ref="C?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF2F" Ref="C?"  Part="1" 
F 0 "C?" H 11642 10096 50  0000 L CNN
F 1 "1n" H 11642 10005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11550 10050 50  0001 C CNN
F 3 "~" H 11550 10050 50  0001 C CNN
	1    11550 10050
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4807-1 U?
U 1 1 5EE8FF30
P 12600 10950
AR Path="/5EE8FF30" Ref="U?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF30" Ref="U?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF30" Ref="U?"  Part="1" 
F 0 "U?" H 13000 10650 50  0000 L CNN
F 1 "ADA4807-1" H 12950 10750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 12600 10700 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 12600 10600 50  0001 L CNN
	1    12600 10950
	1    0    0    1   
$EndComp
Wire Wire Line
	10200 10850 10800 10850
Text GLabel 11300 11300 3    50   Input ~ 0
VREF
Wire Wire Line
	11000 10850 11300 10850
Wire Wire Line
	11300 11100 11300 10850
Connection ~ 11300 10850
Wire Wire Line
	11300 10850 11550 10850
Wire Wire Line
	12300 10850 12000 10850
Wire Wire Line
	11450 10050 11300 10050
Wire Wire Line
	11300 10050 11300 10850
Wire Wire Line
	12000 10450 12000 10850
Connection ~ 12000 10850
Wire Wire Line
	12000 10850 11750 10850
Wire Wire Line
	11650 10050 12000 10050
Wire Wire Line
	12900 10050 12900 10950
Wire Wire Line
	12000 10250 12000 10050
Connection ~ 12000 10050
Wire Wire Line
	12000 10050 12900 10050
Text GLabel 12500 11250 3    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5EE8FF31
P 12500 10650
AR Path="/5EE8FF31" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF31" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF31" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12500 10400 50  0001 C CNN
F 1 "GND" H 12505 10477 50  0000 C CNN
F 2 "" H 12500 10650 50  0001 C CNN
F 3 "" H 12500 10650 50  0001 C CNN
	1    12500 10650
	-1   0    0    1   
$EndComp
Text GLabel 12300 11050 0    50   Input ~ 0
VREF
Connection ~ 7500 10750
Connection ~ 10200 10850
Text GLabel 12900 10950 2    50   Input ~ 0
V_OUT
NoConn ~ 12600 10650
NoConn ~ 9900 10550
NoConn ~ 7200 10450
NoConn ~ 4050 10350
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5EE8FF32
P 12000 11900
AR Path="/5EE8FF32" Ref="J?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF32" Ref="J?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF32" Ref="J?"  Part="1" 
F 0 "J?" H 12028 11876 50  0000 L CNN
F 1 "Conn_01x02_Female" H 12028 11785 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12000 11900 50  0001 C CNN
F 3 "~" H 12000 11900 50  0001 C CNN
	1    12000 11900
	1    0    0    -1  
$EndComp
Text GLabel 11800 11900 0    50   Input ~ 0
V_OUT
$Comp
L power:GND #PWR?
U 1 1 5EE8FF33
P 11800 12000
AR Path="/5EE8FF33" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5EE8FF33" Ref="#PWR?"  Part="1" 
AR Path="/5EE8E7E4/5EE8FF33" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11800 11750 50  0001 C CNN
F 1 "GND" H 11805 11827 50  0000 C CNN
F 2 "" H 11800 12000 50  0001 C CNN
F 3 "" H 11800 12000 50  0001 C CNN
	1    11800 12000
	1    0    0    -1  
$EndComp
Text Notes 6350 9550 0    118  ~ 24
PREAMP
Wire Notes Line
	13500 9000 700  9000
Wire Notes Line
	700  12450 13500 12450
Wire Notes Line
	700  9000 700  12450
Wire Notes Line
	13500 9000 13500 12450
$EndSCHEMATC
