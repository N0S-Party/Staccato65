EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L keyboard_parts:ATMEGA32U4 U1
U 1 1 5F1FA654
P 5150 7400
F 0 "U1" H 5175 8737 60  0000 C CNN
F 1 "ATMEGA32U4" H 5175 8631 60  0000 C CNN
F 2 "" H 5150 7400 60  0000 C CNN
F 3 "" H 5150 7400 60  0000 C CNN
	1    5150 7400
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 5F1FB4C4
P 1350 7200
F 0 "J?" H 1457 8067 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1457 7976 50  0000 C CNN
F 2 "" H 1500 7200 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1500 7200 50  0001 C CNN
	1    1350 7200
	1    0    0    -1  
$EndComp
Text GLabel 3400 6550 0    50   Input ~ 0
USB_D-
Text GLabel 3400 6650 0    50   Input ~ 0
USB_D+
Text GLabel 1950 7100 2    50   Input ~ 0
USB_D-
Text GLabel 1950 7200 2    50   Input ~ 0
USB_D-
Text GLabel 1950 7300 2    50   Input ~ 0
USB_D+
Text GLabel 1950 7400 2    50   Input ~ 0
USB_D+
$Comp
L power:GND #PWR?
U 1 1 5F2128CD
P 1350 8250
F 0 "#PWR?" H 1350 8000 50  0001 C CNN
F 1 "GND" H 1355 8077 50  0000 C CNN
F 2 "" H 1350 8250 50  0001 C CNN
F 3 "" H 1350 8250 50  0001 C CNN
	1    1350 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 8100 1350 8150
Wire Wire Line
	1050 8100 1050 8150
Wire Wire Line
	1050 8150 1350 8150
Connection ~ 1350 8150
Wire Wire Line
	1350 8150 1350 8250
$Comp
L power:VCC #PWR?
U 1 1 5F2189DA
P 4100 6450
F 0 "#PWR?" H 4100 6300 50  0001 C CNN
F 1 "VCC" V 4115 6577 50  0000 L CNN
F 2 "" H 4100 6450 50  0001 C CNN
F 3 "" H 4100 6450 50  0001 C CNN
	1    4100 6450
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5F21B859
P 1950 6600
F 0 "#PWR?" H 1950 6450 50  0001 C CNN
F 1 "VCC" V 1965 6728 50  0000 L CNN
F 2 "" H 1950 6600 50  0001 C CNN
F 3 "" H 1950 6600 50  0001 C CNN
	1    1950 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 8150 1350 8150
$Comp
L Device:R R?
U 1 1 5F230CB1
P 2100 6800
F 0 "R?" V 2000 6800 50  0000 C CNN
F 1 "5.1k" V 2100 6800 50  0000 C CNN
F 2 "" V 2030 6800 50  0001 C CNN
F 3 "~" H 2100 6800 50  0001 C CNN
	1    2100 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 6800 2500 6900
$Comp
L Device:R R?
U 1 1 5F232D2C
P 2100 6900
F 0 "R?" V 2200 6900 50  0000 C CNN
F 1 "5.1k" V 2100 6900 50  0000 C CNN
F 2 "" V 2030 6900 50  0001 C CNN
F 3 "~" H 2100 6900 50  0001 C CNN
	1    2100 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 6800 2500 6800
Wire Wire Line
	2250 6900 2500 6900
Connection ~ 2500 6900
Wire Wire Line
	2500 6900 2500 8150
$Comp
L Device:R R?
U 1 1 5F23399C
P 3700 6550
F 0 "R?" V 3650 6400 50  0000 C CNN
F 1 "22" V 3700 6550 50  0000 C CNN
F 2 "" V 3630 6550 50  0001 C CNN
F 3 "~" H 3700 6550 50  0001 C CNN
	1    3700 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F235553
P 3700 6650
F 0 "R?" V 3750 6500 50  0000 C CNN
F 1 "22" V 3700 6650 50  0000 C CNN
F 2 "" V 3630 6650 50  0001 C CNN
F 3 "~" H 3700 6650 50  0001 C CNN
	1    3700 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6550 4100 6550
Wire Wire Line
	3850 6650 4100 6650
Wire Wire Line
	3400 6550 3550 6550
Wire Wire Line
	3550 6650 3400 6650
$Comp
L Device:C_Small C?
U 1 1 5F24EAF4
P 3750 6850
F 0 "C?" V 3800 6700 50  0000 L CNN
F 1 "1u" V 3800 6900 50  0000 L CNN
F 2 "" H 3750 6850 50  0001 C CNN
F 3 "~" H 3750 6850 50  0001 C CNN
	1    3750 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 6850 3850 6850
$Comp
L power:GND #PWR?
U 1 1 5F2519A5
P 3450 7000
F 0 "#PWR?" H 3450 6750 50  0001 C CNN
F 1 "GND" H 3455 6827 50  0000 C CNN
F 2 "" H 3450 7000 50  0001 C CNN
F 3 "" H 3450 7000 50  0001 C CNN
	1    3450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6750 3450 6750
Wire Wire Line
	3450 6750 3450 6850
Wire Wire Line
	3650 6850 3450 6850
Connection ~ 3450 6850
Wire Wire Line
	3450 6850 3450 7000
$EndSCHEMATC
