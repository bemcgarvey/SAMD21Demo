EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 3
Title "SAMD21 Demo Board"
Date ""
Rev "1.0"
Comp "Quantum Embedded Systems"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SamacSys_Parts:ATSAMD21G18A-AU IC1
U 1 1 6191A1BA
P 4600 3100
F 0 "IC1" H 5350 2700 50  0000 L CNN
F 1 "ATSAMD21G18A-AU" H 5100 1850 50  0000 L CNN
F 2 "SamacSys_Parts:QFP50P900X900X120-48N" H 6150 3700 50  0001 L CNN
F 3 "" H 6150 3600 50  0001 L CNN
F 4 "ATMEL - ATSAMD21G18A-AU - MCU, 32BIT, CORTEX-M0+, 48MHZ, TQFP-48" H 6150 3500 50  0001 L CNN "Description"
F 5 "1.2" H 6150 3400 50  0001 L CNN "Height"
F 6 "556-ATSAMD21G18A-AU" H 6150 3300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology-Atmel/ATSAMD21G18A-AU?qs=KLFHFgXTQiDh1vL0VLU76Q%3D%3D" H 6150 3200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 6150 3100 50  0001 L CNN "Manufacturer_Name"
F 9 "ATSAMD21G18A-AU" H 6150 3000 50  0001 L CNN "Manufacturer_Part_Number"
	1    4600 3100
	1    0    0    -1  
$EndComp
$Sheet
S 1100 1150 1250 1150
U 61934BBF
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 1100 2900 1250 1050
U 61942803
F0 "Connectors" 50
F1 "external.sch" 50
$EndSheet
Text Notes 1250 1800 0    79   ~ 16
Power, leds\nUSB connectors,\nbuttons
Text Notes 1250 3450 0    79   ~ 16
Headers and\nUSB to Serial
Text GLabel 5700 2000 1    50   Input ~ 0
RESET
Text GLabel 4300 3600 0    50   Input ~ 0
VDDANA
Text GLabel 5300 2000 1    50   Input ~ 0
VCC3V3
Text GLabel 6700 3100 2    50   Input ~ 0
VCC3V3
Text GLabel 5300 5350 3    50   Input ~ 0
VCC3V3
$Comp
L power:GND #PWR04
U 1 1 6198B0B0
P 6450 3200
F 0 "#PWR04" H 6450 2950 50  0001 C CNN
F 1 "GND" V 6455 3072 50  0000 R CNN
F 2 "" H 6450 3200 50  0001 C CNN
F 3 "" H 6450 3200 50  0001 C CNN
	1    6450 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6198B817
P 5400 5150
F 0 "#PWR02" H 5400 4900 50  0001 C CNN
F 1 "GND" H 5405 4977 50  0000 C CNN
F 2 "" H 5400 5150 50  0001 C CNN
F 3 "" H 5400 5150 50  0001 C CNN
	1    5400 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6198BC74
P 4500 3500
F 0 "#PWR01" H 4500 3250 50  0001 C CNN
F 1 "GND" V 4505 3372 50  0000 R CNN
F 2 "" H 4500 3500 50  0001 C CNN
F 3 "" H 4500 3500 50  0001 C CNN
	1    4500 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6198C722
P 5500 2200
F 0 "#PWR03" H 5500 1950 50  0001 C CNN
F 1 "GND" H 5505 2027 50  0000 C CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "" H 5500 2200 50  0001 C CNN
	1    5500 2200
	-1   0    0    1   
$EndComp
Text GLabel 5100 2000 1    50   Input ~ 0
SWDIO
Text GLabel 5200 2000 1    50   Input ~ 0
SWCLK
Text GLabel 6700 3300 2    50   Input ~ 0
D+
Text GLabel 6700 3400 2    50   Input ~ 0
D-
Text GLabel 6700 4200 2    50   Input ~ 0
PA16
Text GLabel 6700 4100 2    50   Input ~ 0
PA17
Text GLabel 4300 3100 0    50   Input ~ 0
SERCOM1_PAD0
Text GLabel 4300 3200 0    50   Input ~ 0
SERCOM1_PAD1
Text GLabel 5800 5350 3    50   Input ~ 0
SERCOM2_PAD1
Text GLabel 5700 5350 3    50   Input ~ 0
SERCOM2_PAD0
Wire Wire Line
	4600 3100 4300 3100
Wire Wire Line
	4600 3200 4300 3200
Wire Wire Line
	4600 3500 4500 3500
Wire Wire Line
	4600 3600 4300 3600
Wire Wire Line
	6300 3300 6700 3300
Wire Wire Line
	6300 3400 6700 3400
Wire Wire Line
	6300 4100 6700 4100
Wire Wire Line
	6300 4200 6700 4200
Wire Wire Line
	6300 3100 6700 3100
Wire Wire Line
	6300 3200 6450 3200
Wire Wire Line
	5500 2300 5500 2200
Wire Wire Line
	5700 2300 5700 2000
Wire Wire Line
	5300 2300 5300 2000
Wire Wire Line
	5200 2300 5200 2000
Wire Wire Line
	4900 2300 4900 2000
Wire Wire Line
	5100 2300 5100 2000
Wire Wire Line
	5000 2300 5000 2000
Wire Wire Line
	5300 5350 5300 5000
Wire Wire Line
	5400 5150 5400 5000
Text GLabel 4300 3300 0    50   Input ~ 0
PA02
Text GLabel 4300 3400 0    50   Input ~ 0
PA03
Text GLabel 4300 3700 0    50   Input ~ 0
PB08
Text GLabel 4300 3800 0    50   Input ~ 0
PB09
Text GLabel 4300 3900 0    50   Input ~ 0
PA04
Text GLabel 4300 4000 0    50   Input ~ 0
PA05
Text GLabel 4300 4100 0    50   Input ~ 0
PA06
Text GLabel 4300 4200 0    50   Input ~ 0
PA07
Text GLabel 5600 2000 1    50   Input ~ 0
PA28
Text GLabel 5800 2000 1    50   Input ~ 0
PA27
Text GLabel 5900 2000 1    50   Input ~ 0
PB23
Text GLabel 6000 2000 1    50   Input ~ 0
PB22
Text GLabel 6700 3500 2    50   Input ~ 0
PA23
Wire Wire Line
	6300 3500 6700 3500
Wire Wire Line
	5600 2000 5600 2300
Wire Wire Line
	5800 2000 5800 2300
Wire Wire Line
	5900 2000 5900 2300
Wire Wire Line
	6000 2000 6000 2300
Wire Wire Line
	4300 3300 4600 3300
Wire Wire Line
	4300 3400 4600 3400
Wire Wire Line
	4300 3700 4600 3700
Wire Wire Line
	4300 3800 4600 3800
Wire Wire Line
	4300 3900 4600 3900
Wire Wire Line
	4300 4000 4600 4000
Wire Wire Line
	4300 4100 4600 4100
Wire Wire Line
	4300 4200 4600 4200
Text GLabel 4900 5350 3    50   Input ~ 0
PA08
Text GLabel 5000 5350 3    50   Input ~ 0
PA09
Text GLabel 5100 5350 3    50   Input ~ 0
PA10
Text GLabel 5200 5350 3    50   Input ~ 0
PA11
Text GLabel 5500 5350 3    50   Input ~ 0
PB10
Text GLabel 5600 5350 3    50   Input ~ 0
PB11
Text GLabel 5900 5350 3    50   Input ~ 0
PA14
Text GLabel 6000 5350 3    50   Input ~ 0
PA15
Text GLabel 6700 4000 2    50   Input ~ 0
PA18
Text GLabel 6700 3900 2    50   Input ~ 0
PA19
Text GLabel 6700 3800 2    50   Input ~ 0
PA20
Text GLabel 6700 3700 2    50   Input ~ 0
PA21
Text GLabel 6700 3600 2    50   Input ~ 0
PA22
Wire Wire Line
	6300 3600 6700 3600
Wire Wire Line
	6300 3700 6700 3700
Wire Wire Line
	6300 3800 6700 3800
Wire Wire Line
	6300 3900 6700 3900
Wire Wire Line
	6300 4000 6700 4000
Wire Wire Line
	4900 5000 4900 5350
Wire Wire Line
	5000 5000 5000 5350
Wire Wire Line
	5100 5000 5100 5350
Wire Wire Line
	5200 5000 5200 5350
Wire Wire Line
	5500 5000 5500 5350
Wire Wire Line
	5600 5000 5600 5350
Wire Wire Line
	5700 5000 5700 5350
Wire Wire Line
	5800 5000 5800 5350
Wire Wire Line
	5900 5000 5900 5350
Wire Wire Line
	6000 5000 6000 5350
Text GLabel 5400 2000 1    50   Input ~ 0
VDDCORE
Text GLabel 4900 2000 1    50   Input ~ 0
PB03
Text GLabel 5000 2000 1    50   Input ~ 0
PB02
Wire Wire Line
	5400 2000 5400 2300
$EndSCHEMATC
