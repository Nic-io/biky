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
Text HLabel 3950 3250 0    50   Input ~ 0
Dyn+
Text HLabel 3950 4800 0    50   Input ~ 0
Dyn-
$Comp
L Diode:1N4007 D21
U 1 1 61A5A325
P 4300 3750
F 0 "D21" H 4300 3966 50  0000 C CNN
F 1 "1N4007" H 4300 3875 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4300 3575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4300 3750 50  0001 C CNN
	1    4300 3750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D22
U 1 1 61A5A365
P 4300 4300
F 0 "D22" H 4300 4084 50  0000 C CNN
F 1 "1N4007" H 4300 4175 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4300 4125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4300 4300 50  0001 C CNN
	1    4300 4300
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4007 D23
U 1 1 61A5A3A3
P 4300 4800
F 0 "D23" H 4300 5016 50  0000 C CNN
F 1 "1N4007" H 4300 4925 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4300 4625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4300 4800 50  0001 C CNN
	1    4300 4800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D20
U 1 1 61A5A3C5
P 4300 3250
F 0 "D20" H 4300 3034 50  0000 C CNN
F 1 "1N4007" H 4300 3125 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4300 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4300 3250 50  0001 C CNN
	1    4300 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 3250 3950 3250
Wire Wire Line
	4150 3750 4150 3250
Connection ~ 4150 3250
Wire Wire Line
	3950 4800 4150 4800
Wire Wire Line
	4150 4800 4150 4300
Connection ~ 4150 4800
$Comp
L Device:R R15
U 1 1 61A5A939
P 5300 3400
F 0 "R15" H 5370 3446 50  0000 L CNN
F 1 "1k" H 5370 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 3400 50  0001 C CNN
F 3 "~" H 5300 3400 50  0001 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D24
U 1 1 61A5AA05
P 5300 4450
F 0 "D24" V 5254 4529 50  0000 L CNN
F 1 "Vz10V" V 5345 4529 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P12.70mm_Horizontal" H 5300 4450 50  0001 C CNN
F 3 "~" H 5300 4450 50  0001 C CNN
	1    5300 4450
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:MPSA42 Q4
U 1 1 61A5AAB4
P 6550 3350
F 0 "Q4" V 6878 3350 50  0000 C CNN
F 1 "MPSA42" V 6787 3350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6750 3275 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/MPSA42-D.PDF" H 6550 3350 50  0001 L CNN
	1    6550 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C1
U 1 1 61A5AE50
P 7200 3850
F 0 "C1" H 7318 3896 50  0000 L CNN
F 1 "1F" H 7318 3805 50  0000 L CNN
F 2 "biky:Supercap" H 7238 3700 50  0001 C CNN
F 3 "~" H 7200 3850 50  0001 C CNN
	1    7200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 61A5AF7B
P 6000 3900
F 0 "R16" V 5793 3900 50  0000 C CNN
F 1 "1k" V 5884 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5930 3900 50  0001 C CNN
F 3 "~" H 6000 3900 50  0001 C CNN
	1    6000 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 61A5AFB5
P 6550 4350
F 0 "R17" H 6620 4396 50  0000 L CNN
F 1 "1k" H 6620 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6480 4350 50  0001 C CNN
F 3 "~" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3250 4750 3250
Wire Wire Line
	6350 3250 5300 3250
Connection ~ 5300 3250
Wire Wire Line
	5300 4600 5300 4800
Wire Wire Line
	5300 4800 4950 4800
Wire Wire Line
	5300 3900 5850 3900
Wire Wire Line
	5300 3550 5300 3900
Connection ~ 5300 3900
Wire Wire Line
	5300 3900 5300 4300
Wire Wire Line
	6150 3900 6550 3900
Wire Wire Line
	6550 3900 6550 4200
Wire Wire Line
	6550 3550 6550 3900
Connection ~ 6550 3900
Wire Wire Line
	6550 4500 6550 4800
Wire Wire Line
	6550 4800 5300 4800
Connection ~ 5300 4800
Wire Wire Line
	4450 3750 4950 3750
Wire Wire Line
	4950 3750 4950 4800
Connection ~ 4950 4800
Wire Wire Line
	4950 4800 4450 4800
Wire Wire Line
	4450 4300 4750 4300
Wire Wire Line
	4750 4300 4750 3250
Connection ~ 4750 3250
Wire Wire Line
	4750 3250 5300 3250
Wire Wire Line
	6750 3250 7200 3250
Wire Wire Line
	7200 3250 7200 3700
Wire Wire Line
	7200 4000 7200 4800
Wire Wire Line
	7200 4800 6550 4800
Connection ~ 6550 4800
Text HLabel 8050 3250 2    50   Input ~ 0
vin
Text HLabel 8050 4800 2    50   Input ~ 0
ground
Wire Wire Line
	7200 3250 8050 3250
Connection ~ 7200 3250
Wire Wire Line
	7200 4800 8050 4800
Connection ~ 7200 4800
$EndSCHEMATC
