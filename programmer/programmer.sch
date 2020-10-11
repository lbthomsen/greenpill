EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Green Pill"
Date ""
Rev "c"
Comp "Lars Boegild Thomsen"
Comment1 "STM32 Development Board"
Comment2 "lbthomsen@gmail.com"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x20 J3
U 1 1 5EF5C946
P 10750 2100
F 0 "J3" H 10830 2046 50  0000 L CNN
F 1 "~" H 10830 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 10750 2100 50  0001 C CNN
F 3 "~" H 10750 2100 50  0001 C CNN
	1    10750 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x20 J4
U 1 1 5EF5DEF5
P 10750 4450
F 0 "J4" H 10830 4396 50  0000 L CNN
F 1 "~" H 10830 4351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical" H 10750 4450 50  0001 C CNN
F 3 "~" H 10750 4450 50  0001 C CNN
	1    10750 4450
	1    0    0    -1  
$EndComp
Text GLabel 9700 1300 0    50   Input ~ 0
C13
Text GLabel 9700 1400 0    50   Input ~ 0
C14
Text GLabel 9700 1500 0    50   Input ~ 0
C15
Wire Wire Line
	9700 1300 10550 1300
Wire Wire Line
	10550 1400 9700 1400
Wire Wire Line
	9700 1500 10550 1500
Text GLabel 9700 1600 0    50   Input ~ 0
A0
Text GLabel 9700 1700 0    50   Input ~ 0
A1
Text GLabel 9700 1800 0    50   Input ~ 0
A2
Wire Wire Line
	9700 1600 10550 1600
Wire Wire Line
	10550 1700 9700 1700
Wire Wire Line
	9700 1800 10550 1800
Text GLabel 9700 3850 0    50   Input ~ 0
B9
Text GLabel 9700 3950 0    50   Input ~ 0
B8
Text GLabel 9700 4050 0    50   Input ~ 0
B7
Wire Wire Line
	9700 3850 10550 3850
Text GLabel 9700 4150 0    50   Input ~ 0
B6
Text GLabel 9700 4250 0    50   Input ~ 0
B5
Text GLabel 9700 4450 0    50   Input ~ 0
B3
Wire Wire Line
	9700 3950 10550 3950
Wire Wire Line
	10550 4050 9700 4050
Wire Wire Line
	9700 4150 10550 4150
Wire Wire Line
	9700 4250 10550 4250
Text GLabel 9700 4550 0    50   Input ~ 0
A15
Wire Wire Line
	9700 4350 10550 4350
Wire Wire Line
	9700 4450 10550 4450
Text GLabel 9700 4650 0    50   Input ~ 0
A12
Text GLabel 9700 4750 0    50   Input ~ 0
A11
Wire Wire Line
	9700 4550 10550 4550
Wire Wire Line
	10550 4650 9700 4650
Wire Wire Line
	9700 4750 10550 4750
Text GLabel 9700 4850 0    50   Input ~ 0
A10
Text GLabel 9700 4950 0    50   Input ~ 0
A9
Text GLabel 9700 5050 0    50   Input ~ 0
A8
Wire Wire Line
	9700 4850 10550 4850
Wire Wire Line
	9700 4950 10550 4950
Wire Wire Line
	9700 5050 10550 5050
Text GLabel 9700 5150 0    50   Input ~ 0
B15
Text GLabel 9700 5250 0    50   Input ~ 0
B14
Text GLabel 9700 5350 0    50   Input ~ 0
B13
Text GLabel 9700 5450 0    50   Input ~ 0
B12
Wire Wire Line
	9700 5150 10550 5150
Wire Wire Line
	9700 5250 10550 5250
Wire Wire Line
	10550 5350 9700 5350
Wire Wire Line
	9700 5450 10550 5450
Wire Wire Line
	9700 1900 10550 1900
Text GLabel 9700 1900 0    50   Input ~ 0
A3
Text GLabel 9700 2000 0    50   Input ~ 0
A4
Text GLabel 9700 2100 0    50   Input ~ 0
A5
Text GLabel 9700 2200 0    50   Input ~ 0
A6
Text GLabel 9700 2300 0    50   Input ~ 0
A7
Wire Wire Line
	9700 2300 10550 2300
Wire Wire Line
	10550 2200 9700 2200
Wire Wire Line
	9700 2100 10550 2100
Wire Wire Line
	10550 2000 9700 2000
Text GLabel 9700 2400 0    50   Input ~ 0
B0
Text GLabel 9700 2500 0    50   Input ~ 0
B1
Text GLabel 9700 2700 0    50   Input ~ 0
B10
Text GLabel 9700 2800 0    50   Input ~ 0
B11
Wire Wire Line
	9700 2400 10550 2400
Wire Wire Line
	10550 2500 9700 2500
Wire Wire Line
	9700 2600 10550 2600
Wire Wire Line
	9700 2700 10550 2700
Text GLabel 9700 4350 0    50   Input ~ 0
B4
Wire Wire Line
	10450 1200 10550 1200
$Comp
L power:+3.3V #PWR032
U 1 1 5EF5F475
P 10000 1100
F 0 "#PWR032" H 10000 950 50  0001 C CNN
F 1 "+3.3V" H 10015 1273 50  0000 C CNN
F 2 "" H 10000 1100 50  0001 C CNN
F 3 "" H 10000 1100 50  0001 C CNN
	1    10000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2900 10550 2900
Wire Wire Line
	10000 1100 10000 2900
Wire Wire Line
	9700 2800 10550 2800
$Comp
L power:GND #PWR034
U 1 1 5EF9371A
P 10450 3200
F 0 "#PWR034" H 10450 2950 50  0001 C CNN
F 1 "GND" H 10455 3027 50  0000 C CNN
F 2 "" H 10450 3200 50  0001 C CNN
F 3 "" H 10450 3200 50  0001 C CNN
	1    10450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3200 10450 3100
Wire Wire Line
	10550 3100 10450 3100
$Comp
L power:GND #PWR035
U 1 1 5EF95054
P 10450 5550
F 0 "#PWR035" H 10450 5300 50  0001 C CNN
F 1 "GND" H 10455 5377 50  0000 C CNN
F 2 "" H 10450 5550 50  0001 C CNN
F 3 "" H 10450 5550 50  0001 C CNN
	1    10450 5550
	1    0    0    -1  
$EndComp
NoConn ~ 13000 6350
$Comp
L power:+5V #PWR033
U 1 1 5F1B0776
P 10200 1100
F 0 "#PWR033" H 10200 950 50  0001 C CNN
F 1 "+5V" H 10215 1273 50  0000 C CNN
F 2 "" H 10200 1100 50  0001 C CNN
F 3 "" H 10200 1100 50  0001 C CNN
	1    10200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1200 10450 3100
Connection ~ 10450 3100
Wire Wire Line
	10550 3000 10200 3000
Wire Wire Line
	10200 3000 10200 1100
Wire Wire Line
	10550 3550 10450 3550
Wire Wire Line
	10450 3550 10450 5550
Text GLabel 9700 3650 0    50   Input ~ 0
RST
Text GLabel 9700 3750 0    50   Input ~ 0
BO0
Wire Wire Line
	10550 3650 9700 3650
Wire Wire Line
	10550 3750 9700 3750
Text GLabel 9700 2600 0    50   Input ~ 0
B2
Text Notes 9350 6350 0    50   ~ 0
NOTICE!  Headers are mostly but NOT\n100 % compatible with the blue/black pill.
Wire Notes Line
	9300 700  9300 6400
Wire Notes Line
	9300 6400 11000 6400
Wire Notes Line
	11000 6400 11000 700 
Wire Notes Line
	11000 700  9300 700 
Text Notes 9300 650  0    50   ~ 0
Pin Headers
$EndSCHEMATC
