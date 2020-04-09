EESchema Schematic File Version 4
LIBS:stm32_board-cache
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
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
F 0 "R?" V 2000 4950 50  0000 C CNN
F 1 "47k" V 1900 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1800 4950 50  0001 C CNN
F 3 "~" H 1800 4950 50  0001 C CNN
	1    1800 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E8812F0
P 2000 4950
AR Path="/5E8812F0" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E8812F0" Ref="R?"  Part="1" 
F 0 "R?" V 2100 5100 50  0000 C CNN
F 1 "47k" V 2100 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2000 4950 50  0001 C CNN
F 3 "~" H 2000 4950 50  0001 C CNN
	1    2000 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E8812F6
P 2250 4950
AR Path="/5E8812F6" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E8812F6" Ref="R?"  Part="1" 
F 0 "R?" V 2350 5100 50  0000 C CNN
F 1 "47k" V 2350 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2250 4950 50  0001 C CNN
F 3 "~" H 2250 4950 50  0001 C CNN
	1    2250 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E8812FC
P 2450 4950
AR Path="/5E8812FC" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E8812FC" Ref="R?"  Part="1" 
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
F 0 "#PWR?" H 3850 5750 50  0001 C CNN
F 1 "GND" H 3855 5827 50  0000 C CNN
F 2 "" H 3850 6000 50  0001 C CNN
F 3 "" H 3850 6000 50  0001 C CNN
	1    3850 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E881337
P 2600 6100
AR Path="/5E881337" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E881337" Ref="#PWR?"  Part="1" 
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
U 1 1 5E88133E
P 3650 6300
AR Path="/5E88133E" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E88133E" Ref="#PWR?"  Part="1" 
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
P 2000 9000
AR Path="/5E917AF3" Ref="J?"  Part="1" 
AR Path="/5E85F0ED/5E917AF3" Ref="J?"  Part="1" 
F 0 "J?" V 2350 9400 50  0000 C CNN
F 1 "142-0701-851" H 2100 9700 50  0000 C CNN
F 2 "SamacSys_Parts:142-0701-851" H 2350 9600 50  0001 L CNN
F 3 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701851.pdf" H 2350 9500 50  0001 L CNN
F 4 "SMA 50 Ohm End Launch Jack Receptacle - Tab Contact" H 2350 9400 50  0001 L CNN "Description"
F 5 "" H 2350 9300 50  0001 L CNN "Height"
F 6 "Cinch" H 2350 9200 50  0001 L CNN "Manufacturer_Name"
F 7 "142-0701-851" H 2350 9100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "530-142-0701-851" H 2350 9000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=530-142-0701-851" H 2350 8900 50  0001 L CNN "Mouser Price/Stock"
F 10 "8857532" H 2350 8800 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/8857532" H 2350 8700 50  0001 L CNN "RS Price/Stock"
F 12 "70090523" H 2350 8600 50  0001 L CNN "Allied_Number"
F 13 "https://www.alliedelec.com/johnson-cinch-connectivity-solutions-142-0701-851/70090523/" H 2350 8500 50  0001 L CNN "Allied Price/Stock"
	1    2000 9000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E917AF9
P 2000 8800
AR Path="/5E917AF9" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917AF9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 8550 50  0001 C CNN
F 1 "GND" H 2005 8627 50  0000 C CNN
F 2 "" H 2000 8800 50  0001 C CNN
F 3 "" H 2000 8800 50  0001 C CNN
	1    2000 8800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E917AFF
P 2000 9000
AR Path="/5E917AFF" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917AFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 8750 50  0001 C CNN
F 1 "GND" H 2005 8827 50  0000 C CNN
F 2 "" H 2000 9000 50  0001 C CNN
F 3 "" H 2000 9000 50  0001 C CNN
	1    2000 9000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B05
P 2700 8900
AR Path="/5E917B05" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B05" Ref="R?"  Part="1" 
F 0 "R?" V 2495 8900 50  0000 C CNN
F 1 "418" V 2586 8900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2700 8900 50  0001 C CNN
F 3 "~" H 2700 8900 50  0001 C CNN
	1    2700 8900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B0B
P 3100 9250
AR Path="/5E917B0B" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B0B" Ref="R?"  Part="1" 
F 0 "R?" V 2895 9250 50  0000 C CNN
F 1 "558" V 2986 9250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3100 9250 50  0001 C CNN
F 3 "~" H 3100 9250 50  0001 C CNN
	1    3100 9250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B11
P 3800 8400
AR Path="/5E917B11" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B11" Ref="R?"  Part="1" 
F 0 "R?" V 3595 8400 50  0000 C CNN
F 1 "4.52k" V 3686 8400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3800 8400 50  0001 C CNN
F 3 "~" H 3800 8400 50  0001 C CNN
	1    3800 8400
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B17
P 3450 8900
AR Path="/5E917B17" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B17" Ref="C?"  Part="1" 
F 0 "C?" H 3542 8946 50  0000 L CNN
F 1 "1.3n" H 3542 8855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 8900 50  0001 C CNN
F 3 "~" H 3450 8900 50  0001 C CNN
	1    3450 8900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B1D
P 3350 8100
AR Path="/5E917B1D" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B1D" Ref="C?"  Part="1" 
F 0 "C?" H 3442 8146 50  0000 L CNN
F 1 "1.3n" H 3442 8055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3350 8100 50  0001 C CNN
F 3 "~" H 3350 8100 50  0001 C CNN
	1    3350 8100
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4807-1 U?
U 1 1 5E917B23
P 4400 9000
AR Path="/5E917B23" Ref="U?"  Part="1" 
AR Path="/5E85F0ED/5E917B23" Ref="U?"  Part="1" 
F 0 "U?" H 4650 9250 50  0000 L CNN
F 1 "ADA4807-1" H 4550 9150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4400 8750 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 4400 8650 50  0001 L CNN
	1    4400 9000
	1    0    0    1   
$EndComp
Wire Wire Line
	2000 8900 2600 8900
Text GLabel 3100 9350 3    50   Input ~ 0
VREF
Wire Wire Line
	2800 8900 3100 8900
Wire Wire Line
	3100 9150 3100 8900
Connection ~ 3100 8900
Wire Wire Line
	3100 8900 3350 8900
Wire Wire Line
	4100 8900 3800 8900
Wire Wire Line
	3250 8100 3100 8100
Wire Wire Line
	3100 8100 3100 8900
Wire Wire Line
	3800 8500 3800 8900
Connection ~ 3800 8900
Wire Wire Line
	3800 8900 3550 8900
Wire Wire Line
	3450 8100 3800 8100
Wire Wire Line
	4700 8100 4700 9000
Wire Wire Line
	3800 8300 3800 8100
Connection ~ 3800 8100
Wire Wire Line
	3800 8100 4700 8100
Text GLabel 4300 9300 3    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5E917B3B
P 4300 8700
AR Path="/5E917B3B" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917B3B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 8450 50  0001 C CNN
F 1 "GND" H 4305 8527 50  0000 C CNN
F 2 "" H 4300 8700 50  0001 C CNN
F 3 "" H 4300 8700 50  0001 C CNN
	1    4300 8700
	-1   0    0    1   
$EndComp
Text GLabel 4100 9100 0    50   Input ~ 0
VREF
$Comp
L Device:R_Small_US R?
U 1 1 5E917B42
P 5850 9000
AR Path="/5E917B42" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B42" Ref="R?"  Part="1" 
F 0 "R?" V 5645 9000 50  0000 C CNN
F 1 "406" V 5736 9000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5850 9000 50  0001 C CNN
F 3 "~" H 5850 9000 50  0001 C CNN
	1    5850 9000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B48
P 6250 9350
AR Path="/5E917B48" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B48" Ref="R?"  Part="1" 
F 0 "R?" V 6045 9350 50  0000 C CNN
F 1 "541" V 6136 9350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6250 9350 50  0001 C CNN
F 3 "~" H 6250 9350 50  0001 C CNN
	1    6250 9350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B4E
P 6950 8500
AR Path="/5E917B4E" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B4E" Ref="R?"  Part="1" 
F 0 "R?" V 6745 8500 50  0000 C CNN
F 1 "4.39k" V 6836 8500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6950 8500 50  0001 C CNN
F 3 "~" H 6950 8500 50  0001 C CNN
	1    6950 8500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B54
P 6600 9000
AR Path="/5E917B54" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B54" Ref="C?"  Part="1" 
F 0 "C?" H 6692 9046 50  0000 L CNN
F 1 "1.1n" H 6692 8955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 9000 50  0001 C CNN
F 3 "~" H 6600 9000 50  0001 C CNN
	1    6600 9000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B5A
P 6500 8200
AR Path="/5E917B5A" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B5A" Ref="C?"  Part="1" 
F 0 "C?" H 6592 8246 50  0000 L CNN
F 1 "1.1n" H 6592 8155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6500 8200 50  0001 C CNN
F 3 "~" H 6500 8200 50  0001 C CNN
	1    6500 8200
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4807-1 U?
U 1 1 5E917B60
P 7550 9100
AR Path="/5E917B60" Ref="U?"  Part="1" 
AR Path="/5E85F0ED/5E917B60" Ref="U?"  Part="1" 
F 0 "U?" H 7800 9350 50  0000 L CNN
F 1 "ADA4807-1" H 7750 9250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7550 8850 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 7550 8750 50  0001 L CNN
	1    7550 9100
	1    0    0    1   
$EndComp
Text GLabel 6250 9450 3    50   Input ~ 0
VREF
Wire Wire Line
	5950 9000 6250 9000
Wire Wire Line
	6250 9250 6250 9000
Connection ~ 6250 9000
Wire Wire Line
	6250 9000 6500 9000
Wire Wire Line
	7250 9000 6950 9000
Wire Wire Line
	6400 8200 6250 8200
Wire Wire Line
	6250 8200 6250 9000
Wire Wire Line
	6950 8600 6950 9000
Connection ~ 6950 9000
Wire Wire Line
	6950 9000 6700 9000
Wire Wire Line
	6600 8200 6950 8200
Wire Wire Line
	7850 8200 7850 9100
Wire Wire Line
	6950 8400 6950 8200
Connection ~ 6950 8200
Wire Wire Line
	6950 8200 7850 8200
Text GLabel 7450 9400 3    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5E917B77
P 7450 8800
AR Path="/5E917B77" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917B77" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7450 8550 50  0001 C CNN
F 1 "GND" H 7455 8627 50  0000 C CNN
F 2 "" H 7450 8800 50  0001 C CNN
F 3 "" H 7450 8800 50  0001 C CNN
	1    7450 8800
	-1   0    0    1   
$EndComp
Text GLabel 7250 9200 0    50   Input ~ 0
VREF
$Comp
L Device:R_Small_US R?
U 1 1 5E917B7E
P 8550 9100
AR Path="/5E917B7E" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B7E" Ref="R?"  Part="1" 
F 0 "R?" V 8345 9100 50  0000 C CNN
F 1 "1.02k" V 8436 9100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8550 9100 50  0001 C CNN
F 3 "~" H 8550 9100 50  0001 C CNN
	1    8550 9100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B84
P 8950 9450
AR Path="/5E917B84" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B84" Ref="R?"  Part="1" 
F 0 "R?" V 8745 9450 50  0000 C CNN
F 1 "106" V 8836 9450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8950 9450 50  0001 C CNN
F 3 "~" H 8950 9450 50  0001 C CNN
	1    8950 9450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917B8A
P 9650 8600
AR Path="/5E917B8A" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917B8A" Ref="R?"  Part="1" 
F 0 "R?" V 9445 8600 50  0000 C CNN
F 1 "11k" V 9536 8600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9650 8600 50  0001 C CNN
F 3 "~" H 9650 8600 50  0001 C CNN
	1    9650 8600
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B90
P 9300 9100
AR Path="/5E917B90" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B90" Ref="C?"  Part="1" 
F 0 "C?" H 9392 9146 50  0000 L CNN
F 1 "1.5n" H 9392 9055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9300 9100 50  0001 C CNN
F 3 "~" H 9300 9100 50  0001 C CNN
	1    9300 9100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917B96
P 9200 8300
AR Path="/5E917B96" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917B96" Ref="C?"  Part="1" 
F 0 "C?" H 9292 8346 50  0000 L CNN
F 1 "1.5n" H 9292 8255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9200 8300 50  0001 C CNN
F 3 "~" H 9200 8300 50  0001 C CNN
	1    9200 8300
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4807-1 U?
U 1 1 5E917B9C
P 10250 9200
AR Path="/5E917B9C" Ref="U?"  Part="1" 
AR Path="/5E85F0ED/5E917B9C" Ref="U?"  Part="1" 
F 0 "U?" H 10594 9154 50  0000 L CNN
F 1 "ADA4807-1" H 10594 9245 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 10250 8950 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 10250 8850 50  0001 L CNN
	1    10250 9200
	1    0    0    1   
$EndComp
Wire Wire Line
	7850 9100 8450 9100
Text GLabel 8950 9550 3    50   Input ~ 0
VREF
Wire Wire Line
	8650 9100 8950 9100
Wire Wire Line
	8950 9350 8950 9100
Connection ~ 8950 9100
Wire Wire Line
	8950 9100 9200 9100
Wire Wire Line
	9950 9100 9650 9100
Wire Wire Line
	9100 8300 8950 8300
Wire Wire Line
	8950 8300 8950 9100
Wire Wire Line
	9650 8700 9650 9100
Connection ~ 9650 9100
Wire Wire Line
	9650 9100 9400 9100
Wire Wire Line
	9300 8300 9650 8300
Wire Wire Line
	10550 8300 10550 9200
Wire Wire Line
	9650 8500 9650 8300
Connection ~ 9650 8300
Wire Wire Line
	9650 8300 10550 8300
Text GLabel 10150 9500 3    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5E917BB4
P 10150 8900
AR Path="/5E917BB4" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917BB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 8650 50  0001 C CNN
F 1 "GND" H 10155 8727 50  0000 C CNN
F 2 "" H 10150 8900 50  0001 C CNN
F 3 "" H 10150 8900 50  0001 C CNN
	1    10150 8900
	-1   0    0    1   
$EndComp
Text GLabel 9950 9300 0    50   Input ~ 0
VREF
Wire Wire Line
	4700 9000 5750 9000
Connection ~ 4700 9000
$Comp
L Device:R_Small_US R?
U 1 1 5E917BBD
P 11250 9200
AR Path="/5E917BBD" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917BBD" Ref="R?"  Part="1" 
F 0 "R?" V 11045 9200 50  0000 C CNN
F 1 "966" V 11136 9200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 11250 9200 50  0001 C CNN
F 3 "~" H 11250 9200 50  0001 C CNN
	1    11250 9200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917BC3
P 11650 9550
AR Path="/5E917BC3" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917BC3" Ref="R?"  Part="1" 
F 0 "R?" V 11445 9550 50  0000 C CNN
F 1 "100" V 11536 9550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 11650 9550 50  0001 C CNN
F 3 "~" H 11650 9550 50  0001 C CNN
	1    11650 9550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E917BC9
P 12350 8700
AR Path="/5E917BC9" Ref="R?"  Part="1" 
AR Path="/5E85F0ED/5E917BC9" Ref="R?"  Part="1" 
F 0 "R?" V 12145 8700 50  0000 C CNN
F 1 "10.4k" V 12236 8700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 12350 8700 50  0001 C CNN
F 3 "~" H 12350 8700 50  0001 C CNN
	1    12350 8700
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917BCF
P 12000 9200
AR Path="/5E917BCF" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917BCF" Ref="C?"  Part="1" 
F 0 "C?" H 12092 9246 50  0000 L CNN
F 1 "1n" H 12092 9155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 12000 9200 50  0001 C CNN
F 3 "~" H 12000 9200 50  0001 C CNN
	1    12000 9200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E917BD5
P 11900 8400
AR Path="/5E917BD5" Ref="C?"  Part="1" 
AR Path="/5E85F0ED/5E917BD5" Ref="C?"  Part="1" 
F 0 "C?" H 11992 8446 50  0000 L CNN
F 1 "1n" H 11992 8355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11900 8400 50  0001 C CNN
F 3 "~" H 11900 8400 50  0001 C CNN
	1    11900 8400
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4807-1 U?
U 1 1 5E917BDB
P 12950 9300
AR Path="/5E917BDB" Ref="U?"  Part="1" 
AR Path="/5E85F0ED/5E917BDB" Ref="U?"  Part="1" 
F 0 "U?" H 13350 9000 50  0000 L CNN
F 1 "ADA4807-1" H 13300 9100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 12950 9050 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADA4807-1_4807-2_4807-4.pdf" H 12950 8950 50  0001 L CNN
	1    12950 9300
	1    0    0    1   
$EndComp
Wire Wire Line
	10550 9200 11150 9200
Text GLabel 11650 9650 3    50   Input ~ 0
VREF
Wire Wire Line
	11350 9200 11650 9200
Wire Wire Line
	11650 9450 11650 9200
Connection ~ 11650 9200
Wire Wire Line
	11650 9200 11900 9200
Wire Wire Line
	12650 9200 12350 9200
Wire Wire Line
	11800 8400 11650 8400
Wire Wire Line
	11650 8400 11650 9200
Wire Wire Line
	12350 8800 12350 9200
Connection ~ 12350 9200
Wire Wire Line
	12350 9200 12100 9200
Wire Wire Line
	12000 8400 12350 8400
Wire Wire Line
	13250 8400 13250 9300
Wire Wire Line
	12350 8600 12350 8400
Connection ~ 12350 8400
Wire Wire Line
	12350 8400 13250 8400
Text GLabel 12850 9600 3    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5E917BF3
P 12850 9000
AR Path="/5E917BF3" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917BF3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12850 8750 50  0001 C CNN
F 1 "GND" H 12855 8827 50  0000 C CNN
F 2 "" H 12850 9000 50  0001 C CNN
F 3 "" H 12850 9000 50  0001 C CNN
	1    12850 9000
	-1   0    0    1   
$EndComp
Text GLabel 12650 9400 0    50   Input ~ 0
VREF
Connection ~ 7850 9100
Connection ~ 10550 9200
Text GLabel 13250 9300 2    50   Input ~ 0
V_OUT
NoConn ~ 12950 9000
NoConn ~ 10250 8900
NoConn ~ 7550 8800
NoConn ~ 4400 8700
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5E917C01
P 12350 10250
AR Path="/5E917C01" Ref="J?"  Part="1" 
AR Path="/5E85F0ED/5E917C01" Ref="J?"  Part="1" 
F 0 "J?" H 12378 10226 50  0000 L CNN
F 1 "Conn_01x02_Female" H 12378 10135 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12350 10250 50  0001 C CNN
F 3 "~" H 12350 10250 50  0001 C CNN
	1    12350 10250
	1    0    0    -1  
$EndComp
Text GLabel 12150 10250 0    50   Input ~ 0
V_OUT
$Comp
L power:GND #PWR?
U 1 1 5E917C08
P 12150 10350
AR Path="/5E917C08" Ref="#PWR?"  Part="1" 
AR Path="/5E85F0ED/5E917C08" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12150 10100 50  0001 C CNN
F 1 "GND" H 12155 10177 50  0000 C CNN
F 2 "" H 12150 10350 50  0001 C CNN
F 3 "" H 12150 10350 50  0001 C CNN
	1    12150 10350
	1    0    0    -1  
$EndComp
Text Notes 6700 7900 0    118  ~ 24
PREAMP
Wire Notes Line
	13850 7350 1050 7350
Wire Notes Line
	1050 10800 13850 10800
Wire Notes Line
	1050 7350 1050 10800
Wire Notes Line
	13850 7350 13850 10800
$EndSCHEMATC
