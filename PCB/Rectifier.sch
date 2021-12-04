EESchema Schematic File Version 4
LIBS:biky-cache
EELAYER 26 0
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
Text HLabel 4550 2300 0    50   Input ~ 0
Dyn+
Text HLabel 4550 3550 0    50   Input ~ 0
Dyn-
$Comp
L Diode:1N4007 D23
U 1 1 61A5A3A3
P 4900 3550
F 0 "D23" H 4900 3650 50  0000 C CNN
F 1 "1N4007" H 4900 3450 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4900 3375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4900 3550 50  0001 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D20
U 1 1 61A5A3C5
P 4900 2300
F 0 "D20" H 4900 2084 50  0000 C CNN
F 1 "1N4007" H 4900 2175 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4900 2125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4900 2300 50  0001 C CNN
	1    4900 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 2300 4600 2300
Wire Wire Line
	4550 3550 4650 3550
$Comp
L Device:CP C1
U 1 1 61A5AE50
P 5600 2850
F 0 "C1" H 5718 2896 50  0000 L CNN
F 1 "1F" H 5718 2805 50  0000 L CNN
F 2 "biky:Supercap" H 5638 2700 50  0001 C CNN
F 3 "~" H 5600 2850 50  0001 C CNN
	1    5600 2850
	1    0    0    -1  
$EndComp
Text HLabel 6100 2300 2    50   Input ~ 0
vin
Text HLabel 6100 3550 2    50   Input ~ 0
ground
$Comp
L Diode:1N4007 D21
U 1 1 61AA616E
P 4900 2700
F 0 "D21" H 4900 2484 50  0000 C CNN
F 1 "1N4007" H 4900 2575 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4900 2525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4900 2700 50  0001 C CNN
	1    4900 2700
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4007 D22
U 1 1 61AA6293
P 4900 3100
F 0 "D22" H 4900 2884 50  0000 C CNN
F 1 "1N4007" H 4900 2975 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4900 2925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4900 3100 50  0001 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2300 5300 2300
Wire Wire Line
	5050 3550 5300 3550
Wire Wire Line
	4750 3100 4600 3100
Wire Wire Line
	4600 3100 4600 2300
Connection ~ 4600 2300
Wire Wire Line
	4600 2300 4550 2300
Wire Wire Line
	4750 2700 4650 2700
Wire Wire Line
	4650 2700 4650 3550
Connection ~ 4650 3550
Wire Wire Line
	4650 3550 4750 3550
Wire Wire Line
	5050 3100 5300 3100
Wire Wire Line
	5300 3100 5300 3550
Connection ~ 5300 3550
Wire Wire Line
	5300 3550 5600 3550
Wire Wire Line
	5050 2700 5300 2700
Wire Wire Line
	5300 2700 5300 2300
Connection ~ 5300 2300
Wire Wire Line
	5300 2300 5600 2300
Wire Wire Line
	5600 2700 5600 2300
Connection ~ 5600 2300
Wire Wire Line
	5600 3000 5600 3550
Connection ~ 5600 3550
Wire Wire Line
	5600 3550 6100 3550
Wire Wire Line
	5600 2300 6100 2300
$EndSCHEMATC
