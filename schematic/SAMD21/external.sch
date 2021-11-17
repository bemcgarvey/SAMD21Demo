EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 3
Title "SAMD21 Demo Board"
Date "2021-10-25"
Rev "1.0"
Comp "Quantum Embedded Systems"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SamacSys_Parts:MCP2221-I_SL IC3
U 1 1 616206CE
P 2500 1850
F 0 "IC3" H 3050 2115 50  0000 C CNN
F 1 "MCP2221-I_SL" H 3050 2024 50  0000 C CNN
F 2 "SamacSys_Parts:SOIC127P600X175-14N" H 3450 1950 50  0001 L CNN
F 3 "" H 3450 1850 50  0001 L CNN
F 4 "USB 2.0 to I2C/UART Converter GPIO SO14 Microchip MCP2221-I/SL, USB Converter, USB 2.0 at 12Mbit/s, 3  5.5 V, 14-Pin SOIC" H 3450 1750 50  0001 L CNN "Description"
F 5 "1.75" H 3450 1650 50  0001 L CNN "Height"
F 6 "579-MCP2221-I/SL" H 3450 1550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/MCP2221-I-SL?qs=wzzOUr4NhYrXnl%252BgbTV6ag%3D%3D" H 3450 1450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 3450 1350 50  0001 L CNN "Manufacturer_Name"
F 9 "MCP2221-I/SL" H 3450 1250 50  0001 L CNN "Manufacturer_Part_Number"
	1    2500 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 616AABD0
P 4150 2600
F 0 "C9" H 4265 2646 50  0000 L CNN
F 1 "220n" H 4265 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4188 2450 50  0001 C CNN
F 3 "~" H 4150 2600 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 616ABA21
P 2200 1350
F 0 "C8" V 1948 1350 50  0000 C CNN
F 1 "100n" V 2039 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2238 1200 50  0001 C CNN
F 3 "~" H 2200 1350 50  0001 C CNN
	1    2200 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 616AC1B1
P 1800 2950
F 0 "R11" H 1870 2996 50  0000 L CNN
F 1 "220R" H 1870 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1730 2950 50  0001 C CNN
F 3 "~" H 1800 2950 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 616AC7F4
P 2200 2950
F 0 "R12" H 2270 2996 50  0000 L CNN
F 1 "220R" H 2270 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2130 2950 50  0001 C CNN
F 3 "~" H 2200 2950 50  0001 C CNN
	1    2200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 616AD36C
P 1800 3450
F 0 "D8" V 1747 3530 50  0000 L CNN
F 1 "Green" V 1838 3530 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1800 3450 50  0001 C CNN
F 3 "~" H 1800 3450 50  0001 C CNN
	1    1800 3450
	0    1    1    0   
$EndComp
$Comp
L Device:LED D9
U 1 1 616ADE58
P 2200 3450
F 0 "D9" V 2147 3530 50  0000 L CNN
F 1 "Yellow" V 2238 3530 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2200 3450 50  0001 C CNN
F 3 "~" H 2200 3450 50  0001 C CNN
	1    2200 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 2150 4150 2150
$Comp
L power:GND #PWR025
U 1 1 616B00B3
P 4150 2750
F 0 "#PWR025" H 4150 2500 50  0001 C CNN
F 1 "GND" H 4155 2577 50  0000 C CNN
F 2 "" H 4150 2750 50  0001 C CNN
F 3 "" H 4150 2750 50  0001 C CNN
	1    4150 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 616B0724
P 2200 1500
F 0 "#PWR023" H 2200 1250 50  0001 C CNN
F 1 "GND" H 2205 1327 50  0000 C CNN
F 2 "" H 2200 1500 50  0001 C CNN
F 3 "" H 2200 1500 50  0001 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 616B0DF5
P 3700 1850
F 0 "#PWR024" H 3700 1600 50  0001 C CNN
F 1 "GND" V 3705 1722 50  0000 R CNN
F 2 "" H 3700 1850 50  0001 C CNN
F 3 "" H 3700 1850 50  0001 C CNN
	1    3700 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 1950 2100 1950
Wire Wire Line
	2100 1950 2100 2500
Wire Wire Line
	2100 2500 1800 2500
Wire Wire Line
	1800 2500 1800 2800
Wire Wire Line
	2500 2050 2200 2050
Wire Wire Line
	2200 2050 2200 2800
Wire Wire Line
	2200 3100 2200 3300
Wire Wire Line
	1800 3100 1800 3300
Text GLabel 2600 3700 2    50   Input ~ 0
VCC3V3
Wire Wire Line
	1800 3600 1800 3700
Wire Wire Line
	1800 3700 2200 3700
Wire Wire Line
	2200 3600 2200 3700
Connection ~ 2200 3700
Wire Wire Line
	2200 3700 2600 3700
Wire Wire Line
	3700 1850 3600 1850
Text GLabel 1950 1100 1    50   Input ~ 0
VCC3V3
Text GLabel 4350 1950 2    50   Input ~ 0
Serial_D+
Text GLabel 4350 2050 2    50   Input ~ 0
Serial_D-
Wire Wire Line
	3600 1950 4350 1950
Wire Wire Line
	4350 2050 3600 2050
Text GLabel 1350 2350 0    50   Input ~ 0
SERCOM1_PAD1
Text GLabel 1350 2250 0    50   Input ~ 0
SERCOM1_PAD0
Wire Wire Line
	1350 2250 2500 2250
Wire Wire Line
	1350 2350 2500 2350
Text Notes 2650 2750 0    50   ~ 0
USB to Serial Bridge
NoConn ~ 2500 2450
NoConn ~ 3600 2250
NoConn ~ 3600 2350
NoConn ~ 3600 2450
Text GLabel 4250 2300 2    50   Input ~ 0
VCC3V3
Wire Wire Line
	4150 2150 4150 2300
Wire Wire Line
	4250 2300 4150 2300
Connection ~ 4150 2300
Wire Wire Line
	4150 2300 4150 2450
Text Notes 1350 3500 0    50   ~ 0
MCU Tx\nindicator
Text Notes 2550 3500 0    50   ~ 0
MCU Rx\nindicator
$Comp
L Device:R R9
U 1 1 616A637E
P 1550 2000
F 0 "R9" H 1620 2046 50  0000 L CNN
F 1 "10k" H 1620 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1480 2000 50  0001 C CNN
F 3 "~" H 1550 2000 50  0001 C CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2150 1550 2150
Wire Wire Line
	2500 1850 1950 1850
Wire Wire Line
	1950 1850 1950 1200
Wire Wire Line
	2200 1200 1950 1200
Connection ~ 1950 1200
Wire Wire Line
	1950 1200 1950 1100
Wire Wire Line
	1550 1850 1950 1850
Connection ~ 1950 1850
Text Notes 1050 5300 0    50   ~ 0
SERCOM5\nTWI
$Comp
L Device:R R10
U 1 1 6180DE82
P 1700 5200
F 0 "R10" H 1770 5246 50  0000 L CNN
F 1 "4k7" H 1770 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1630 5200 50  0001 C CNN
F 3 "~" H 1700 5200 50  0001 C CNN
	1    1700 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 6180E62C
P 2300 5200
F 0 "R13" H 2370 5246 50  0000 L CNN
F 1 "4k7" H 2370 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2230 5200 50  0001 C CNN
F 3 "~" H 2300 5200 50  0001 C CNN
	1    2300 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J8
U 1 1 6175F2EC
P 2050 4800
F 0 "J8" H 2100 4925 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 2100 4926 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 2050 4800 50  0001 C CNN
F 3 "~" H 2050 4800 50  0001 C CNN
	1    2050 4800
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J9
U 1 1 6175FDD7
P 2050 5950
F 0 "J9" V 2100 5762 50  0000 R CNN
F 1 "Conn_02x02_Odd_Even" H 2100 6076 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 2050 5950 50  0001 C CNN
F 3 "~" H 2050 5950 50  0001 C CNN
	1    2050 5950
	0    1    -1   0   
$EndComp
Text GLabel 1600 6150 0    50   Input ~ 0
VCC3V3
Text GLabel 2450 4800 2    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR022
U 1 1 6181EDC9
P 1750 4800
F 0 "#PWR022" H 1750 4550 50  0001 C CNN
F 1 "GND" V 1755 4672 50  0000 R CNN
F 2 "" H 1750 4800 50  0001 C CNN
F 3 "" H 1750 4800 50  0001 C CNN
	1    1750 4800
	0    1    1    0   
$EndComp
Text GLabel 1550 4900 0    50   Input ~ 0
SERCOM5_PAD0
Text GLabel 2450 4900 2    50   Input ~ 0
SERCOM5_PAD1
Wire Wire Line
	2250 4900 2300 4900
Wire Wire Line
	1700 5050 1700 4900
Connection ~ 1700 4900
Wire Wire Line
	1700 4900 1750 4900
Wire Wire Line
	2300 5050 2300 4900
Connection ~ 2300 4900
Wire Wire Line
	2300 4900 2450 4900
Wire Wire Line
	1700 5350 1700 5550
Wire Wire Line
	1700 5550 1950 5550
Wire Wire Line
	1950 5550 1950 5650
Wire Wire Line
	2300 5350 2300 5550
Wire Wire Line
	2300 5550 2050 5550
Wire Wire Line
	2050 5550 2050 5650
Wire Wire Line
	2050 6150 1950 6150
Text GLabel 4500 4300 0    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR026
U 1 1 6179550E
P 5100 4300
F 0 "#PWR026" H 5100 4050 50  0001 C CNN
F 1 "GND" V 5105 4172 50  0000 R CNN
F 2 "" H 5100 4300 50  0001 C CNN
F 3 "" H 5100 4300 50  0001 C CNN
	1    5100 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J11
U 1 1 61799C22
P 4800 5800
F 0 "J11" H 4850 6125 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 4850 6126 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 4800 5800 50  0001 C CNN
F 3 "~" H 4800 5800 50  0001 C CNN
	1    4800 5800
	1    0    0    -1  
$EndComp
Text GLabel 7200 4300 0    50   Input ~ 0
VCC3V3
Text GLabel 4500 5600 0    50   Input ~ 0
VCC3V3
Text GLabel 7200 5600 0    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR029
U 1 1 617AC5C9
P 7800 4300
F 0 "#PWR029" H 7800 4050 50  0001 C CNN
F 1 "GND" V 7805 4172 50  0000 R CNN
F 2 "" H 7800 4300 50  0001 C CNN
F 3 "" H 7800 4300 50  0001 C CNN
	1    7800 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 617B03D0
P 5100 5600
F 0 "#PWR027" H 5100 5350 50  0001 C CNN
F 1 "GND" V 5105 5472 50  0000 R CNN
F 2 "" H 5100 5600 50  0001 C CNN
F 3 "" H 5100 5600 50  0001 C CNN
	1    5100 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 617B4203
P 7800 5600
F 0 "#PWR030" H 7800 5350 50  0001 C CNN
F 1 "GND" V 7805 5472 50  0000 R CNN
F 2 "" H 7800 5600 50  0001 C CNN
F 3 "" H 7800 5600 50  0001 C CNN
	1    7800 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 4300 4600 4300
Wire Wire Line
	4500 4400 4600 4400
Wire Wire Line
	4500 4500 4600 4500
Wire Wire Line
	4500 4600 4600 4600
Wire Wire Line
	4600 4700 4500 4700
Wire Wire Line
	4500 4800 4600 4800
Wire Wire Line
	5200 4800 5100 4800
Wire Wire Line
	5100 4700 5200 4700
Wire Wire Line
	5200 4600 5100 4600
Wire Wire Line
	5100 4500 5200 4500
Wire Wire Line
	5200 4400 5100 4400
Wire Wire Line
	7200 4300 7300 4300
Wire Wire Line
	7300 4400 7200 4400
Wire Wire Line
	7200 4500 7300 4500
Wire Wire Line
	7300 4600 7200 4600
Wire Wire Line
	7200 4700 7300 4700
Wire Wire Line
	7300 4800 7200 4800
Wire Wire Line
	7900 4800 7800 4800
Wire Wire Line
	7800 4700 7900 4700
Wire Wire Line
	7900 4600 7800 4600
Wire Wire Line
	7800 4500 7900 4500
Wire Wire Line
	7900 4400 7800 4400
Wire Wire Line
	4500 5600 4600 5600
Wire Wire Line
	4600 5700 4500 5700
Wire Wire Line
	4500 5800 4600 5800
Wire Wire Line
	4600 5900 4500 5900
Wire Wire Line
	4500 6000 4600 6000
Wire Wire Line
	4500 6100 4600 6100
Wire Wire Line
	5100 6100 5200 6100
Wire Wire Line
	5200 6000 5100 6000
Wire Wire Line
	5100 5900 5200 5900
Wire Wire Line
	5200 5800 5100 5800
Wire Wire Line
	5100 5700 5200 5700
Wire Wire Line
	7300 5600 7200 5600
Wire Wire Line
	7200 5700 7300 5700
Wire Wire Line
	7800 5800 7900 5800
Wire Wire Line
	7900 5900 7800 5900
Wire Wire Line
	7800 6000 7900 6000
Wire Wire Line
	7300 6000 7200 6000
Wire Wire Line
	7200 5900 7300 5900
Wire Wire Line
	7800 5700 7900 5700
$Comp
L Connector_Generic:Conn_01x08 J15
U 1 1 618F687B
P 8150 2700
F 0 "J15" H 8230 2646 50  0000 L CNN
F 1 "Conn_01x08" H 8230 2601 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Horizontal" H 8150 2700 50  0001 C CNN
F 3 "~" H 8150 2700 50  0001 C CNN
	1    8150 2700
	1    0    0    -1  
$EndComp
Text GLabel 7500 3100 0    50   Input ~ 0
RESET
Text GLabel 7500 3000 0    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR028
U 1 1 618F92B8
P 7800 2900
F 0 "#PWR028" H 7800 2650 50  0001 C CNN
F 1 "GND" V 7805 2772 50  0000 R CNN
F 2 "" H 7800 2900 50  0001 C CNN
F 3 "" H 7800 2900 50  0001 C CNN
	1    7800 2900
	0    1    1    0   
$EndComp
Text GLabel 7500 2700 0    50   Input ~ 0
SWCLK
Text GLabel 7500 2400 0    50   Input ~ 0
SWDIO
$Comp
L Device:R R14
U 1 1 61916009
P 7650 2050
F 0 "R14" H 7720 2096 50  0000 L CNN
F 1 "1k" H 7720 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7580 2050 50  0001 C CNN
F 3 "~" H 7650 2050 50  0001 C CNN
	1    7650 2050
	1    0    0    -1  
$EndComp
Text GLabel 7950 1800 2    50   Input ~ 0
VCC3V3
Wire Wire Line
	7500 3100 7950 3100
Wire Wire Line
	7950 3000 7500 3000
Wire Wire Line
	7950 2700 7650 2700
Wire Wire Line
	7500 2400 7950 2400
Wire Wire Line
	7650 2200 7650 2700
Connection ~ 7650 2700
Wire Wire Line
	7650 2700 7500 2700
Wire Wire Line
	7650 1900 7650 1800
Wire Wire Line
	7950 2900 7800 2900
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 61966AE0
P 7650 1600
F 0 "J13" V 7568 1412 50  0000 R CNN
F 1 "Conn_01x02" V 7523 1412 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7650 1600 50  0001 C CNN
F 3 "~" H 7650 1600 50  0001 C CNN
	1    7650 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 1800 7950 1800
NoConn ~ 7950 2500
NoConn ~ 7950 2600
NoConn ~ 7950 2800
Text Notes 7550 3300 0    50   ~ 0
Program/Debug
Wire Wire Line
	7200 5800 7300 5800
Text Notes 2900 2900 0    50   ~ 0
SERCOM1
Wire Wire Line
	1550 4900 1700 4900
Wire Wire Line
	2250 4800 2450 4800
Wire Wire Line
	1600 6150 1950 6150
Connection ~ 1950 6150
Text Notes 1100 5050 0    50   ~ 0
SDA
Text Notes 2600 5050 0    50   ~ 0
SCL
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J10
U 1 1 619BE1C8
P 4800 4500
F 0 "J10" H 4850 4825 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 4850 4826 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 4800 4500 50  0001 C CNN
F 3 "~" H 4800 4500 50  0001 C CNN
	1    4800 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J12
U 1 1 619CB274
P 7500 4500
F 0 "J12" H 7550 4825 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 7550 4826 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical_SMD" H 7500 4500 50  0001 C CNN
F 3 "~" H 7500 4500 50  0001 C CNN
	1    7500 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J14
U 1 1 619D2D7D
P 7500 5800
F 0 "J14" H 7550 6125 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7550 6126 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 7500 5800 50  0001 C CNN
F 3 "~" H 7500 5800 50  0001 C CNN
	1    7500 5800
	1    0    0    -1  
$EndComp
Text GLabel 4500 4400 0    50   Input ~ 0
SERCOM1_PAD0
Text GLabel 5200 4400 2    50   Input ~ 0
SERCOM1_PAD1
Text GLabel 4500 4500 0    50   Input ~ 0
PA02
Text GLabel 5200 4500 2    50   Input ~ 0
PA03
Text GLabel 4500 4600 0    50   Input ~ 0
PB08
Text GLabel 5200 4600 2    50   Input ~ 0
PB09
Text GLabel 4500 4700 0    50   Input ~ 0
PA04
Text GLabel 5200 4700 2    50   Input ~ 0
PA05
Text GLabel 4500 4800 0    50   Input ~ 0
PA06
Text GLabel 5200 4800 2    50   Input ~ 0
PA07
Text GLabel 4500 5700 0    50   Input ~ 0
PA08
Text GLabel 5200 5700 2    50   Input ~ 0
PA09
Text GLabel 4500 5800 0    50   Input ~ 0
PA10
Text GLabel 5200 5800 2    50   Input ~ 0
PA11
Text GLabel 4500 5900 0    50   Input ~ 0
PB10
Text GLabel 5200 5900 2    50   Input ~ 0
PB11
Text GLabel 4500 6000 0    50   Input ~ 0
PA12
Text GLabel 5200 6000 2    50   Input ~ 0
PA13
Text GLabel 4500 6100 0    50   Input ~ 0
PA14
Text GLabel 5200 6100 2    50   Input ~ 0
PA15
Text GLabel 7200 4400 0    50   Input ~ 0
PA16
Text GLabel 7900 4400 2    50   Input ~ 0
PA17
Text GLabel 7200 4500 0    50   Input ~ 0
PA18
Text GLabel 7900 4500 2    50   Input ~ 0
PA19
Text GLabel 7200 4600 0    50   Input ~ 0
PA20
Text GLabel 7900 4600 2    50   Input ~ 0
PA21
Text GLabel 7200 4700 0    50   Input ~ 0
PA22
Text GLabel 7900 4700 2    50   Input ~ 0
PA23
Text GLabel 7200 4800 0    50   Input ~ 0
D-
Text GLabel 7900 4800 2    50   Input ~ 0
D+
Text GLabel 7200 5700 0    50   Input ~ 0
PB22
Text GLabel 7900 5700 2    50   Input ~ 0
PB23
Text GLabel 7200 5800 0    50   Input ~ 0
PA27
Text GLabel 7900 5800 2    50   Input ~ 0
PA28
Text GLabel 7200 5900 0    50   Input ~ 0
SWCLK
Text GLabel 7900 5900 2    50   Input ~ 0
SWDIO
Text GLabel 7200 6000 0    50   Input ~ 0
SERCOM5_PAD0
Text GLabel 7900 6000 2    50   Input ~ 0
SERCOM5_PAD1
$EndSCHEMATC
