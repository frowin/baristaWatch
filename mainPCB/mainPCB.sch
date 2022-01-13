EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L ESP32-DEVKITC-32D:ESP32-DEVKITC-32D U1
U 1 1 608811C2
P 2400 5200
F 0 "U1" H 2400 6367 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 2400 6276 50  0000 C CNN
F 2 "ESP32-DEVKITC-32D:MODULE_ESP32-DEVKITC-32D" H 2400 5200 50  0001 L BNN
F 3 "" H 2400 5200 50  0001 L BNN
F 4 "Espressif Systems" H 2400 5200 50  0001 L BNN "MANUFACTURER"
F 5 "4" H 2400 5200 50  0001 L BNN "PARTREV"
	1    2400 5200
	1    0    0    -1  
$EndComp
Text Label 1600 5700 2    50   ~ 0
SPI_CS_OLED
Text Label 1600 5500 2    50   ~ 0
SPI_DC
Text Label 3200 5700 0    50   ~ 0
SPI_RES
Text Label 3200 4400 0    50   ~ 0
SPI_MOSI
Text Label 3200 5100 0    50   ~ 0
SPI_CLK
Text Label 1600 5200 2    50   ~ 0
TLC_DATA
Text Label 1600 5300 2    50   ~ 0
TLC_CLK
$Comp
L power:+3V3 #PWR0101
U 1 1 60A43323
P 1600 4300
F 0 "#PWR0101" H 1600 4150 50  0001 C CNN
F 1 "+3V3" H 1615 4473 50  0000 C CNN
F 2 "" H 1600 4300 50  0001 C CNN
F 3 "" H 1600 4300 50  0001 C CNN
	1    1600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60A43F65
P 3850 4300
F 0 "#PWR0102" H 3850 4050 50  0001 C CNN
F 1 "GND" H 3855 4127 50  0000 C CNN
F 2 "" H 3850 4300 50  0001 C CNN
F 3 "" H 3850 4300 50  0001 C CNN
	1    3850 4300
	1    0    0    -1  
$EndComp
Text Label 3200 5500 0    50   ~ 0
DHT22
Text Label 3200 5400 0    50   ~ 0
UART2_RX
Text Label 3200 5300 0    50   ~ 0
UART2_TX
Text Label 3200 5000 0    50   ~ 0
SPI_MISO
Text Label 3200 4800 0    50   ~ 0
SPI_CS_TEMP1
Text Label 3200 4500 0    50   ~ 0
SPI_CS_TEMP2
Text Label 1600 5100 2    50   ~ 0
ROTARY_DT_LED_BLUE
Text Label 1600 4900 2    50   ~ 0
ROTARY_CLK_PUMP_RELAIS
Text Label 1600 4600 2    50   ~ 0
WATER_IN
Text Label 1600 4800 2    50   ~ 0
PUMP_IN
Text Label 1600 4500 2    50   ~ 0
PHOTO_IN
$Comp
L max31865:MAX31865 MAX1
U 1 1 60AD67E2
P 1700 1600
F 0 "MAX1" H 2178 1538 50  0000 L CNN
F 1 "MAX31865" H 2178 1447 50  0000 L CNN
F 2 "max31865:MAX31865" H 1700 1600 50  0001 C CNN
F 3 "" H 1700 1600 50  0001 C CNN
	1    1700 1600
	1    0    0    -1  
$EndComp
$Comp
L max31865:MAX31865 MAX2
U 1 1 60AD7358
P 1700 2800
F 0 "MAX2" H 2178 2738 50  0000 L CNN
F 1 "MAX31865" H 2178 2647 50  0000 L CNN
F 2 "max31865:MAX31865" H 1700 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0001 C CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 60AD7AE8
P 2050 3500
F 0 "#PWR0103" H 2050 3350 50  0001 C CNN
F 1 "+3V3" H 2065 3673 50  0000 C CNN
F 2 "" H 2050 3500 50  0001 C CNN
F 3 "" H 2050 3500 50  0001 C CNN
	1    2050 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 60AD878E
P 2050 2300
F 0 "#PWR0104" H 2050 2150 50  0001 C CNN
F 1 "+3V3" H 2065 2473 50  0000 C CNN
F 2 "" H 2050 2300 50  0001 C CNN
F 3 "" H 2050 2300 50  0001 C CNN
	1    2050 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60AD98AD
P 2250 2200
F 0 "#PWR0105" H 2250 1950 50  0001 C CNN
F 1 "GND" H 2255 2027 50  0000 C CNN
F 2 "" H 2250 2200 50  0001 C CNN
F 3 "" H 2250 2200 50  0001 C CNN
	1    2250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60AD9FCF
P 2250 3400
F 0 "#PWR0106" H 2250 3150 50  0001 C CNN
F 1 "GND" H 2255 3227 50  0000 C CNN
F 2 "" H 2250 3400 50  0001 C CNN
F 3 "" H 2250 3400 50  0001 C CNN
	1    2250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1950 1850 2300
Wire Wire Line
	1850 2300 2050 2300
Wire Wire Line
	1950 1950 1950 2050
Wire Wire Line
	1950 2050 2250 2050
Wire Wire Line
	2250 2050 2250 2200
Wire Wire Line
	1850 3150 1850 3500
Wire Wire Line
	1850 3500 2050 3500
Wire Wire Line
	1950 3150 1950 3250
Wire Wire Line
	1950 3250 2250 3250
Wire Wire Line
	2250 3250 2250 3400
Text Label 1750 3150 3    50   ~ 0
SPI_CLK
Text Label 1750 1950 3    50   ~ 0
SPI_CLK
Text Label 1550 3150 3    50   ~ 0
SPI_MOSI
Text Label 1550 1950 3    50   ~ 0
SPI_MOSI
Text Label 1650 3150 3    50   ~ 0
SPI_MISO
Text Label 1650 1950 3    50   ~ 0
SPI_MISO
Text Label 1450 3150 3    50   ~ 0
SPI_CS_TEMP2
Text Label 1450 1950 3    50   ~ 0
SPI_CS_TEMP1
Text Label 1600 5400 2    50   ~ 0
LED_RED_BLANK2
Text Label 3200 5800 0    50   ~ 0
LED_GREEN
Text Label 1600 5000 2    50   ~ 0
SCALE_DT_ANALOG_T1
Text Label 1600 4700 2    50   ~ 0
ROTARY_SW_ANALOG_T2
Text Label 3200 5200 0    50   ~ 0
SPI_CS_SD_BLANK1
$Comp
L power:GND #PWR0107
U 1 1 6195A666
P 3250 1300
F 0 "#PWR0107" H 3250 1050 50  0001 C CNN
F 1 "GND" H 3255 1127 50  0000 C CNN
F 2 "" H 3250 1300 50  0001 C CNN
F 3 "" H 3250 1300 50  0001 C CNN
	1    3250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6195B6C2
P 3600 1300
F 0 "C1" V 3348 1300 50  0000 C CNN
F 1 "2.2uF" V 3439 1300 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3638 1150 50  0001 C CNN
F 3 "~" H 3600 1300 50  0001 C CNN
	1    3600 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1300 3250 1300
$Comp
L power:+3V3 #PWR0108
U 1 1 6195E3A8
P 4850 1000
F 0 "#PWR0108" H 4850 850 50  0001 C CNN
F 1 "+3V3" H 4865 1173 50  0000 C CNN
F 2 "" H 4850 1000 50  0001 C CNN
F 3 "" H 4850 1000 50  0001 C CNN
	1    4850 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R DHT22_R1
U 1 1 6195EFAE
P 4700 1000
F 0 "DHT22_R1" V 4493 1000 50  0000 C CNN
F 1 "10K" V 4584 1000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4630 1000 50  0001 C CNN
F 3 "~" H 4700 1000 50  0001 C CNN
	1    4700 1000
	0    1    1    0   
$EndComp
Text Label 4550 1000 2    50   ~ 0
DHT22
$Comp
L power:+5V #PWR0109
U 1 1 6196014B
P 6100 950
F 0 "#PWR0109" H 6100 800 50  0001 C CNN
F 1 "+5V" H 6200 1050 50  0000 C CNN
F 2 "" H 6100 950 50  0001 C CNN
F 3 "" H 6100 950 50  0001 C CNN
	1    6100 950 
	1    0    0    -1  
$EndComp
Text Label 5750 1050 0    50   ~ 0
V_IN
Text Label 1600 6100 2    50   ~ 0
V_IN
$Comp
L Connector:Conn_01x02_Male H1_5V_IN1
U 1 1 61961610
P 6800 1100
F 0 "H1_5V_IN1" H 6908 1281 50  0000 C CNN
F 1 "Conn_01x02_Male" H 6908 1190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6800 1100 50  0001 C CNN
F 3 "~" H 6800 1100 50  0001 C CNN
	1    6800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 61962573
P 7000 1200
F 0 "#PWR0110" H 7000 950 50  0001 C CNN
F 1 "GND" H 7005 1027 50  0000 C CNN
F 2 "" H 7000 1200 50  0001 C CNN
F 3 "" H 7000 1200 50  0001 C CNN
	1    7000 1200
	1    0    0    -1  
$EndComp
Text Notes 6600 800  0    50   ~ 0
HEADER 1\n+5V power input\n
$Comp
L power:+5V #PWR0111
U 1 1 61964932
P 7350 1100
F 0 "#PWR0111" H 7350 950 50  0001 C CNN
F 1 "+5V" H 7365 1273 50  0000 C CNN
F 2 "" H 7350 1100 50  0001 C CNN
F 3 "" H 7350 1100 50  0001 C CNN
	1    7350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1100 7350 1100
Text Label 8300 1150 0    50   ~ 0
UART2_TX
Text Label 8300 1250 0    50   ~ 0
UART2_RX
$Comp
L power:GND #PWR0112
U 1 1 61967ACC
P 8300 1350
F 0 "#PWR0112" H 8300 1100 50  0001 C CNN
F 1 "GND" H 8305 1177 50  0000 C CNN
F 2 "" H 8300 1350 50  0001 C CNN
F 3 "" H 8300 1350 50  0001 C CNN
	1    8300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1150 8300 1150
Wire Wire Line
	8300 1250 8000 1250
Wire Wire Line
	8000 1350 8300 1350
Text Notes 7750 850  0    50   ~ 0
HEADER 2\nUART\n\n
$Comp
L Connector:Conn_01x03_Male H3_PUMPREL1
U 1 1 6196B33A
P 9000 1200
F 0 "H3_PUMPREL1" H 9108 1481 50  0000 C CNN
F 1 "Conn_01x03_Male" H 9108 1390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9000 1200 50  0001 C CNN
F 3 "~" H 9000 1200 50  0001 C CNN
	1    9000 1200
	1    0    0    -1  
$EndComp
Text Label 9500 1200 0    50   ~ 0
ROTARY_CLK_PUMP_RELAIS
$Comp
L power:GND #PWR0113
U 1 1 6196B346
P 9500 1300
F 0 "#PWR0113" H 9500 1050 50  0001 C CNN
F 1 "GND" H 9505 1127 50  0000 C CNN
F 2 "" H 9500 1300 50  0001 C CNN
F 3 "" H 9500 1300 50  0001 C CNN
	1    9500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1100 9500 1100
Wire Wire Line
	9500 1200 9200 1200
Wire Wire Line
	9200 1300 9500 1300
Text Notes 8950 1000 0    50   ~ 0
HEADER 3\nrelais output\n\n\n
$Comp
L power:+5V #PWR0114
U 1 1 61970D9A
P 9500 1100
F 0 "#PWR0114" H 9500 950 50  0001 C CNN
F 1 "+5V" H 9515 1273 50  0000 C CNN
F 2 "" H 9500 1100 50  0001 C CNN
F 3 "" H 9500 1100 50  0001 C CNN
	1    9500 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male H4_DHT22
U 1 1 619721E2
P 6600 2250
F 0 "H4_DHT22" H 6708 2531 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6708 2440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6600 2250 50  0001 C CNN
F 3 "~" H 6600 2250 50  0001 C CNN
	1    6600 2250
	1    0    0    -1  
$EndComp
Text Label 7100 2250 0    50   ~ 0
DHT22
$Comp
L power:GND #PWR0115
U 1 1 619721EE
P 7100 2350
F 0 "#PWR0115" H 7100 2100 50  0001 C CNN
F 1 "GND" H 7105 2177 50  0000 C CNN
F 2 "" H 7100 2350 50  0001 C CNN
F 3 "" H 7100 2350 50  0001 C CNN
	1    7100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2150 7100 2150
Wire Wire Line
	7100 2250 6800 2250
Wire Wire Line
	6800 2350 7100 2350
Text Notes 6550 1950 0    50   ~ 0
HEADER 4\nDHT22\n\n
$Comp
L power:+3V3 #PWR0116
U 1 1 61977C06
P 7100 2150
F 0 "#PWR0116" H 7100 2000 50  0001 C CNN
F 1 "+3V3" H 7115 2323 50  0000 C CNN
F 2 "" H 7100 2150 50  0001 C CNN
F 3 "" H 7100 2150 50  0001 C CNN
	1    7100 2150
	1    0    0    -1  
$EndComp
Text Label 8900 2250 0    50   ~ 0
LED_GREEN
$Comp
L power:GND #PWR0117
U 1 1 61978E52
P 8900 2450
F 0 "#PWR0117" H 8900 2200 50  0001 C CNN
F 1 "GND" H 8905 2277 50  0000 C CNN
F 2 "" H 8900 2450 50  0001 C CNN
F 3 "" H 8900 2450 50  0001 C CNN
	1    8900 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2150 8900 2150
Wire Wire Line
	8900 2250 8600 2250
Wire Wire Line
	8600 2350 8900 2350
Text Notes 8350 1950 0    50   ~ 0
HEADER 5\nRGB LED\n\n
$Comp
L Connector:Conn_01x04_Male H5_RGBLED1
U 1 1 6197C2E2
P 8400 2250
F 0 "H5_RGBLED1" H 8508 2531 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8508 2440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8400 2250 50  0001 C CNN
F 3 "~" H 8400 2250 50  0001 C CNN
	1    8400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2450 8900 2450
Text Label 8900 2350 0    50   ~ 0
ROTARY_DT_LED_BLUE
Text Label 8900 2150 0    50   ~ 0
LED_RED_BLANK2
$Comp
L Connector:Conn_01x10_Male H6_DISP1
U 1 1 6197E70F
P 9900 2550
F 0 "H6_DISP1" H 10008 3131 50  0000 C CNN
F 1 "Conn_01x10_Male" H 10008 3040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 9900 2550 50  0001 C CNN
F 3 "~" H 9900 2550 50  0001 C CNN
	1    9900 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 61984405
P 10400 2150
F 0 "#PWR0118" H 10400 2000 50  0001 C CNN
F 1 "+3V3" H 10415 2323 50  0000 C CNN
F 2 "" H 10400 2150 50  0001 C CNN
F 3 "" H 10400 2150 50  0001 C CNN
	1    10400 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 61985383
P 10400 3050
F 0 "#PWR0119" H 10400 2800 50  0001 C CNN
F 1 "GND" H 10405 2877 50  0000 C CNN
F 2 "" H 10400 3050 50  0001 C CNN
F 3 "" H 10400 3050 50  0001 C CNN
	1    10400 3050
	1    0    0    -1  
$EndComp
Text Label 10400 2250 0    50   ~ 0
SPI_RES
Text Label 10400 2350 0    50   ~ 0
SPI_CS_OLED
Text Label 10400 2850 0    50   ~ 0
TLC_DATA
Text Label 10400 2950 0    50   ~ 0
TLC_CLK
Text Label 10400 2450 0    50   ~ 0
SPI_MOSI
Text Label 10400 2550 0    50   ~ 0
SPI_CLK
Text Label 10400 2650 0    50   ~ 0
SPI_DC
Text Label 10400 2750 0    50   ~ 0
PHOTO_IN
Wire Wire Line
	10400 2150 10100 2150
Wire Wire Line
	10100 2250 10400 2250
Wire Wire Line
	10100 2350 10400 2350
Wire Wire Line
	10100 2450 10400 2450
Wire Wire Line
	10100 2550 10400 2550
Wire Wire Line
	10400 2650 10100 2650
Wire Wire Line
	10100 2750 10400 2750
Wire Wire Line
	10400 2850 10100 2850
Wire Wire Line
	10100 2950 10400 2950
Wire Wire Line
	10400 3050 10100 3050
Text Notes 9950 1950 0    50   ~ 0
HEADER 6\ndisplay\n\n
$Comp
L Connector:Conn_01x03_Male H7_SCALE1
U 1 1 6198C86C
P 6600 3950
F 0 "H7_SCALE1" H 6708 4231 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6708 4140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6600 3950 50  0001 C CNN
F 3 "~" H 6600 3950 50  0001 C CNN
	1    6600 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6198C877
P 7100 4050
F 0 "#PWR0120" H 7100 3800 50  0001 C CNN
F 1 "GND" H 7105 3877 50  0000 C CNN
F 2 "" H 7100 4050 50  0001 C CNN
F 3 "" H 7100 4050 50  0001 C CNN
	1    7100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3850 7100 3850
Wire Wire Line
	7100 3950 6800 3950
Wire Wire Line
	6800 4050 7100 4050
Text Notes 6550 3750 0    50   ~ 0
HEADER 7\nscale\n\n\n
$Comp
L power:+3V3 #PWR0121
U 1 1 6198C885
P 7100 3850
F 0 "#PWR0121" H 7100 3700 50  0001 C CNN
F 1 "+3V3" H 7115 4023 50  0000 C CNN
F 2 "" H 7100 3850 50  0001 C CNN
F 3 "" H 7100 3850 50  0001 C CNN
	1    7100 3850
	1    0    0    -1  
$EndComp
Text Label 7100 3950 0    50   ~ 0
SCALE_DT_ANALOG_T1
$Comp
L power:+3V3 #PWR0122
U 1 1 619A0A9B
P 8650 3850
F 0 "#PWR0122" H 8650 3700 50  0001 C CNN
F 1 "+3V3" H 8665 4023 50  0000 C CNN
F 2 "" H 8650 3850 50  0001 C CNN
F 3 "" H 8650 3850 50  0001 C CNN
	1    8650 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 619A150D
P 8650 4250
F 0 "#PWR0123" H 8650 4000 50  0001 C CNN
F 1 "GND" H 8655 4077 50  0000 C CNN
F 2 "" H 8650 4250 50  0001 C CNN
F 3 "" H 8650 4250 50  0001 C CNN
	1    8650 4250
	1    0    0    -1  
$EndComp
Text Label 8650 4150 0    50   ~ 0
ROTARY_SW_ANALOG_T2
Text Label 8650 4050 0    50   ~ 0
ROTARY_DT_LED_BLUE
Text Label 8650 3950 0    50   ~ 0
ROTARY_CLK_PUMP_RELAIS
Wire Wire Line
	8650 3850 8300 3850
Wire Wire Line
	8300 3950 8650 3950
Wire Wire Line
	8650 4050 8300 4050
Wire Wire Line
	8300 4150 8650 4150
Wire Wire Line
	8650 4250 8300 4250
Text Notes 8150 3750 0    50   ~ 0
HEADER 8\nrotary encoder\n\n\n
$Comp
L Connector:Conn_01x03_Male H9_WATER1
U 1 1 619A674E
P 9950 3950
F 0 "H9_WATER1" H 10058 4231 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10058 4140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9950 3950 50  0001 C CNN
F 3 "~" H 9950 3950 50  0001 C CNN
	1    9950 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 619A6758
P 10450 4050
F 0 "#PWR0124" H 10450 3800 50  0001 C CNN
F 1 "GND" H 10455 3877 50  0000 C CNN
F 2 "" H 10450 4050 50  0001 C CNN
F 3 "" H 10450 4050 50  0001 C CNN
	1    10450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3850 10450 3850
Wire Wire Line
	10450 3950 10150 3950
Wire Wire Line
	10150 4050 10450 4050
Text Notes 9900 3750 0    50   ~ 0
HEADER 9\nwater sensor\n\n\n
$Comp
L power:+3V3 #PWR0125
U 1 1 619A6766
P 10450 3850
F 0 "#PWR0125" H 10450 3700 50  0001 C CNN
F 1 "+3V3" H 10465 4023 50  0000 C CNN
F 2 "" H 10450 3850 50  0001 C CNN
F 3 "" H 10450 3850 50  0001 C CNN
	1    10450 3850
	1    0    0    -1  
$EndComp
Text Label 10450 3950 0    50   ~ 0
WATER_IN
$Comp
L Connector:Conn_01x03_Male H10_PUMP1
U 1 1 619ACF75
P 6500 4950
F 0 "H10_PUMP1" H 6608 5231 50  0000 C CNN
F 1 "Conn_01x03_Male" H 6608 5140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6500 4950 50  0001 C CNN
F 3 "~" H 6500 4950 50  0001 C CNN
	1    6500 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 619ACF7F
P 7000 5050
F 0 "#PWR0126" H 7000 4800 50  0001 C CNN
F 1 "GND" H 7005 4877 50  0000 C CNN
F 2 "" H 7000 5050 50  0001 C CNN
F 3 "" H 7000 5050 50  0001 C CNN
	1    7000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4850 7000 4850
Wire Wire Line
	7000 4950 6700 4950
Wire Wire Line
	6700 5050 7000 5050
Text Notes 6450 4750 0    50   ~ 0
HEADER 10\npump in\n\n\n
$Comp
L power:+3V3 #PWR0127
U 1 1 619ACF8D
P 7000 4850
F 0 "#PWR0127" H 7000 4700 50  0001 C CNN
F 1 "+3V3" H 7015 5023 50  0000 C CNN
F 2 "" H 7000 4850 50  0001 C CNN
F 3 "" H 7000 4850 50  0001 C CNN
	1    7000 4850
	1    0    0    -1  
$EndComp
Text Label 7000 4950 0    50   ~ 0
PUMP_IN
$Comp
L power:GND #PWR0128
U 1 1 619B2472
P 8600 5250
F 0 "#PWR0128" H 8600 5000 50  0001 C CNN
F 1 "GND" H 8605 5077 50  0000 C CNN
F 2 "" H 8600 5250 50  0001 C CNN
F 3 "" H 8600 5250 50  0001 C CNN
	1    8600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4950 8600 4950
Wire Wire Line
	8600 5050 8300 5050
Wire Wire Line
	8300 5150 8600 5150
Text Notes 8050 4750 0    50   ~ 0
HEADER 11\nanalog temp in\n\n
$Comp
L Connector:Conn_01x04_Male H11_ANATEMP1
U 1 1 619B2480
P 8100 5050
F 0 "H11_ANATEMP1" H 8208 5331 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8208 5240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8100 5050 50  0001 C CNN
F 3 "~" H 8100 5050 50  0001 C CNN
	1    8100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5250 8600 5250
$Comp
L power:+3V3 #PWR0129
U 1 1 619B7F2B
P 8600 4950
F 0 "#PWR0129" H 8600 4800 50  0001 C CNN
F 1 "+3V3" H 8615 5123 50  0000 C CNN
F 2 "" H 8600 4950 50  0001 C CNN
F 3 "" H 8600 4950 50  0001 C CNN
	1    8600 4950
	1    0    0    -1  
$EndComp
Text Notes 9450 4650 0    50   ~ 0
HEADER 12\nsd card\n
$Comp
L power:+3V3 #PWR0130
U 1 1 619BDD86
P 10200 4950
F 0 "#PWR0130" H 10200 4800 50  0001 C CNN
F 1 "+3V3" H 10215 5123 50  0000 C CNN
F 2 "" H 10200 4950 50  0001 C CNN
F 3 "" H 10200 4950 50  0001 C CNN
	1    10200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 619BE2AB
P 10200 5650
F 0 "#PWR0131" H 10200 5400 50  0001 C CNN
F 1 "GND" H 10205 5477 50  0000 C CNN
F 2 "" H 10200 5650 50  0001 C CNN
F 3 "" H 10200 5650 50  0001 C CNN
	1    10200 5650
	1    0    0    -1  
$EndComp
Text Label 10200 5250 0    50   ~ 0
SPI_MOSI
$Comp
L Connector:Conn_01x08_Male H12_SD1
U 1 1 619C0A91
P 9550 5250
F 0 "H12_SD1" H 9658 5731 50  0000 C CNN
F 1 "Conn_01x08_Male" H 9658 5640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9550 5250 50  0001 C CNN
F 3 "~" H 9550 5250 50  0001 C CNN
	1    9550 5250
	1    0    0    -1  
$EndComp
Text Label 10200 5550 0    50   ~ 0
SPI_MISO
Text Label 10200 5050 0    50   ~ 0
SPI_RES
Text Label 10200 5150 0    50   ~ 0
SPI_CS_SD_BLANK1
Text Label 10200 5350 0    50   ~ 0
SPI_CLK
Text Label 10200 5450 0    50   ~ 0
SPI_DC
Wire Wire Line
	9750 4950 10200 4950
Wire Wire Line
	10200 5050 9750 5050
Wire Wire Line
	9750 5150 10200 5150
Wire Wire Line
	10200 5250 9750 5250
Wire Wire Line
	9750 5350 10200 5350
Wire Wire Line
	10200 5450 9750 5450
Wire Wire Line
	9750 5550 10200 5550
Wire Wire Line
	10200 5650 9750 5650
$Comp
L Connector:Conn_01x04_Male H_5V1
U 1 1 619D2A8A
P 850 7250
F 0 "H_5V1" H 958 7531 50  0000 C CNN
F 1 "Conn_01x04_Male" H 958 7440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 850 7250 50  0001 C CNN
F 3 "~" H 850 7250 50  0001 C CNN
	1    850  7250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0132
U 1 1 619D4244
P 1400 7150
F 0 "#PWR0132" H 1400 7000 50  0001 C CNN
F 1 "+3V3" H 1415 7323 50  0000 C CNN
F 2 "" H 1400 7150 50  0001 C CNN
F 3 "" H 1400 7150 50  0001 C CNN
	1    1400 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7150 1050 7150
Wire Wire Line
	1050 7450 1050 7350
Connection ~ 1050 7150
Connection ~ 1050 7250
Wire Wire Line
	1050 7250 1050 7150
Connection ~ 1050 7350
Wire Wire Line
	1050 7350 1050 7250
$Comp
L Connector:Conn_01x04_Male H_GND1
U 1 1 619D9DAB
P 2800 7250
F 0 "H_GND1" H 2908 7531 50  0000 C CNN
F 1 "Conn_01x04_Male" H 2908 7440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2800 7250 50  0001 C CNN
F 3 "~" H 2800 7250 50  0001 C CNN
	1    2800 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7150 3000 7150
Wire Wire Line
	3000 7450 3000 7350
Connection ~ 3000 7150
Connection ~ 3000 7250
Wire Wire Line
	3000 7250 3000 7150
Connection ~ 3000 7350
Wire Wire Line
	3000 7350 3000 7250
$Comp
L power:GND #PWR0133
U 1 1 619E0E9B
P 3350 7150
F 0 "#PWR0133" H 3350 6900 50  0001 C CNN
F 1 "GND" H 3355 6977 50  0000 C CNN
F 2 "" H 3350 7150 50  0001 C CNN
F 3 "" H 3350 7150 50  0001 C CNN
	1    3350 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male H_3V3
U 1 1 619E65BE
P 1800 7250
F 0 "H_3V3" H 1908 7531 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1908 7440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1800 7250 50  0001 C CNN
F 3 "~" H 1800 7250 50  0001 C CNN
	1    1800 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7150 2000 7150
Wire Wire Line
	2000 7450 2000 7350
Connection ~ 2000 7150
Connection ~ 2000 7250
Wire Wire Line
	2000 7250 2000 7150
Connection ~ 2000 7350
Wire Wire Line
	2000 7350 2000 7250
$Comp
L power:+5V #PWR0134
U 1 1 619EC180
P 2350 7150
F 0 "#PWR0134" H 2350 7000 50  0001 C CNN
F 1 "+5V" H 2365 7323 50  0000 C CNN
F 2 "" H 2350 7150 50  0001 C CNN
F 3 "" H 2350 7150 50  0001 C CNN
	1    2350 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male H_LED_5V1
U 1 1 619ECCD9
P 4050 7150
F 0 "H_LED_5V1" H 3950 7400 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3850 7300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4050 7150 50  0001 C CNN
F 3 "~" H 4050 7150 50  0001 C CNN
	1    4050 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_5V_ind1
U 1 1 619EE090
P 4550 7150
F 0 "R_5V_ind1" V 4343 7150 50  0000 C CNN
F 1 "R" V 4434 7150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4480 7150 50  0001 C CNN
F 3 "~" H 4550 7150 50  0001 C CNN
	1    4550 7150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0135
U 1 1 619EF70C
P 4700 7150
F 0 "#PWR0135" H 4700 7000 50  0001 C CNN
F 1 "+5V" H 4715 7323 50  0000 C CNN
F 2 "" H 4700 7150 50  0001 C CNN
F 3 "" H 4700 7150 50  0001 C CNN
	1    4700 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 619F06E7
P 4400 7250
F 0 "#PWR0136" H 4400 7000 50  0001 C CNN
F 1 "GND" H 4405 7077 50  0000 C CNN
F 2 "" H 4400 7250 50  0001 C CNN
F 3 "" H 4400 7250 50  0001 C CNN
	1    4400 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7150 4250 7150
Wire Wire Line
	4250 7250 4400 7250
$Comp
L Connector:Conn_01x02_Male H_LED_3V3
U 1 1 619F5F07
P 5550 7150
F 0 "H_LED_3V3" H 5400 7400 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5300 7300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 7150 50  0001 C CNN
F 3 "~" H 5550 7150 50  0001 C CNN
	1    5550 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_3V3_ind1
U 1 1 619F5F11
P 6050 7150
F 0 "R_3V3_ind1" V 5843 7150 50  0000 C CNN
F 1 "R" V 5934 7150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 7150 50  0001 C CNN
F 3 "~" H 6050 7150 50  0001 C CNN
	1    6050 7150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 619F5F25
P 5900 7250
F 0 "#PWR0137" H 5900 7000 50  0001 C CNN
F 1 "GND" H 5905 7077 50  0000 C CNN
F 2 "" H 5900 7250 50  0001 C CNN
F 3 "" H 5900 7250 50  0001 C CNN
	1    5900 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 7150 5750 7150
Wire Wire Line
	5750 7250 5900 7250
$Comp
L power:+3V3 #PWR0138
U 1 1 619FC98D
P 6200 7150
F 0 "#PWR0138" H 6200 7000 50  0001 C CNN
F 1 "+3V3" H 6215 7323 50  0000 C CNN
F 2 "" H 6200 7150 50  0001 C CNN
F 3 "" H 6200 7150 50  0001 C CNN
	1    6200 7150
	1    0    0    -1  
$EndComp
Text Notes 850  6800 0    50   ~ 0
HEADER +5V
Text Notes 1800 6800 0    50   ~ 0
HEADER +3V3
Text Notes 2750 6800 0    50   ~ 0
HEADER GND\n
Text Notes 4150 6800 0    50   ~ 0
+5V indicator LED\n
Text Notes 5500 6800 0    50   ~ 0
+3V3 indicator LED\n
$Comp
L Connector:Conn_01x06_Male H13_BLANK1
U 1 1 619FDE44
P 6550 6000
F 0 "H13_BLANK1" H 6658 6381 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6658 6290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6550 6000 50  0001 C CNN
F 3 "~" H 6550 6000 50  0001 C CNN
	1    6550 6000
	1    0    0    -1  
$EndComp
Text Notes 6450 5700 0    50   ~ 0
HEADER 13\nBLANK general purpose\n\n\n
$Comp
L power:+3V3 #PWR0139
U 1 1 61A00B91
P 7100 5800
F 0 "#PWR0139" H 7100 5650 50  0001 C CNN
F 1 "+3V3" H 7115 5973 50  0000 C CNN
F 2 "" H 7100 5800 50  0001 C CNN
F 3 "" H 7100 5800 50  0001 C CNN
	1    7100 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 61A012F5
P 7100 6300
F 0 "#PWR0140" H 7100 6050 50  0001 C CNN
F 1 "GND" H 7105 6127 50  0000 C CNN
F 2 "" H 7100 6300 50  0001 C CNN
F 3 "" H 7100 6300 50  0001 C CNN
	1    7100 6300
	1    0    0    -1  
$EndComp
Text Label 7100 5900 0    50   ~ 0
SPI_CS_SD_BLANK1
Text Label 7100 6000 0    50   ~ 0
LED_RED_BLANK2
Text Label 7100 6100 0    50   ~ 0
SCALE_DT_BLANK3
Text Label 7100 6200 0    50   ~ 0
ROTARY_SW_BLANK4
Wire Wire Line
	7100 5800 6750 5800
Wire Wire Line
	6750 5900 7100 5900
Wire Wire Line
	7100 6000 6750 6000
Wire Wire Line
	6750 6100 7100 6100
Wire Wire Line
	7100 6200 6750 6200
Wire Wire Line
	6750 6300 7100 6300
$Comp
L Connector:Conn_01x02_Male H_5V_IN1
U 1 1 61982D91
P 5550 950
F 0 "H_5V_IN1" H 5658 1131 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5658 1040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5550 950 50  0001 C CNN
F 3 "~" H 5550 950 50  0001 C CNN
	1    5550 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 950  6100 950 
Text Label 1600 4400 2    50   ~ 0
EN
Text Label 3900 1300 0    50   ~ 0
EN
$Comp
L Connector:Conn_01x02_Male H_ENABLE1
U 1 1 619A5BE3
P 3150 1750
F 0 "H_ENABLE1" H 3258 1931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3258 1840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3150 1750 50  0001 C CNN
F 3 "~" H 3150 1750 50  0001 C CNN
	1    3150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1300 3450 1750
Wire Wire Line
	3450 1750 3350 1750
Connection ~ 3450 1300
Wire Wire Line
	3750 1300 3750 1850
Wire Wire Line
	3750 1850 3350 1850
Wire Wire Line
	3900 1300 3750 1300
Connection ~ 3750 1300
$Comp
L power:+3V3 #PWR0141
U 1 1 619B671A
P 3750 700
F 0 "#PWR0141" H 3750 550 50  0001 C CNN
F 1 "+3V3" H 3765 873 50  0000 C CNN
F 2 "" H 3750 700 50  0001 C CNN
F 3 "" H 3750 700 50  0001 C CNN
	1    3750 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:R EN_R1
U 1 1 619C96CE
P 3750 850
F 0 "EN_R1" H 3820 896 50  0000 L CNN
F 1 "10K" H 3820 805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 850 50  0001 C CNN
F 3 "~" H 3750 850 50  0001 C CNN
	1    3750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1000 3750 1300
Wire Wire Line
	3850 4300 3200 4300
$Comp
L Connector:Conn_01x04_Male H2_UART1
U 1 1 6199DE2F
P 7800 1150
F 0 "H2_UART1" H 7908 1431 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7908 1340 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7800 1150 50  0001 C CNN
F 3 "~" H 7800 1150 50  0001 C CNN
	1    7800 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0142
U 1 1 619A2C98
P 8300 1050
F 0 "#PWR0142" H 8300 900 50  0001 C CNN
F 1 "+5V" H 8315 1223 50  0000 C CNN
F 2 "" H 8300 1050 50  0001 C CNN
F 3 "" H 8300 1050 50  0001 C CNN
	1    8300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1050 8000 1050
$Comp
L Device:C C_5V_relais1
U 1 1 61A08C95
P 10850 1200
F 0 "C_5V_relais1" V 11000 1200 50  0000 C CNN
F 1 "2.2uF" V 11100 1200 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 10888 1050 50  0001 C CNN
F 3 "~" H 10850 1200 50  0001 C CNN
	1    10850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1100 10750 1100
Wire Wire Line
	10750 1100 10750 1050
Wire Wire Line
	10750 1050 10850 1050
Connection ~ 9500 1100
Wire Wire Line
	9500 1300 10750 1300
Wire Wire Line
	10750 1300 10750 1350
Wire Wire Line
	10750 1350 10850 1350
Connection ~ 9500 1300
$Comp
L Connector:Conn_01x05_Male H8_ROTA1
U 1 1 6199F6D4
P 8100 4050
F 0 "H8_ROTA1" H 8208 4431 50  0000 C CNN
F 1 "Conn_01x05_Male" H 8208 4340 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8100 4050 50  0001 C CNN
F 3 "~" H 8100 4050 50  0001 C CNN
	1    8100 4050
	1    0    0    -1  
$EndComp
Text Label 8600 5050 0    50   ~ 0
SCALE_DT_ANALOG_T1
Text Label 8600 5150 0    50   ~ 0
ROTARY_SW_ANALOG_T2
$EndSCHEMATC
