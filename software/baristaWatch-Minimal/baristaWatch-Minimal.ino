bool debug = false;
bool loopi = false;
int version = 28;

#include <Arduino.h>
#include <U8g2lib.h>



//#include "Adafruit_TLC59711.h"

#include <SPI.h>

#include "soc/timer_group_struct.h"
#include "soc/timer_group_reg.h"

#include <PubSubClient.h>




#define NTP_SERVER "de.pool.ntp.org"
#define TZ_INFO "WEST-1DWEST-2,M3.5.0/02:00:00,M10.5.0/03:00:00" // Western European Time


#include "labtura_MAX31865.h"

labtura_MAX31865 thermo1 = labtura_MAX31865(21);
labtura_MAX31865 thermo2 = labtura_MAX31865(22);


#define RREF      4300.0
#define RNOMINAL  1000.0
// thermocouple end


//U8G2_SH1106_128X64_NONAME_F_4W_HW_SPI u8g2(U8G2_R0, /* cs=*/ 13, /* dc=*/ 12, /* reset=*/ 2);
U8G2_SH1106_128X64_NONAME_F_4W_HW_SPI u8g2(U8G2_R0, /* cs=*/ 13, /* dc=*/ 12, /* reset=*/ 4);


// LED driver begins

#define NUM_TLC59711 2

#define led_data 26
#define led_clock 27

//Adafruit_TLC59711 tlc = Adafruit_TLC59711(NUM_TLC59711, led_clock, led_data);

// LED driver ends

// AutoConnect begins
#include <WiFi.h>
#include <WebServer.h>
typedef WebServer WiFiWebServer;
#include <AutoConnect.h>
WiFiWebServer server;
AutoConnect portal(server);
AutoConnectConfig config;
// AutoConnect ends

// Timer begins
volatile int interruptCounter;
int totalInterruptCounter = 0;
hw_timer_t * timer = NULL;
portMUX_TYPE timerMux = portMUX_INITIALIZER_UNLOCKED;
String localTime;
struct tm local;
String timeHMS;
String timeHM;
String timeH;
String timeM;
String timeS;
bool timerActive = false;
bool timerRuns = false;
int timerFactor;
bool secondIndicatorBlinkSign = true;
long secondIndicatorLastBlink = 0;
long lastLoop;
long lastLoopMain;
bool forceTemperatureReading = true;

int ms;
int milliseconds;
int seconds;
int minutes;
int hours;


// Timer ends

// Rotary begins
#define CLK 25
#define DATA 27
#define BTN 34
static uint8_t prevNextCode = 0;
static uint16_t store=0;
static int8_t c,val;
int encoderMax=3;
int encoderVal=0;
int encoderValPrev=encoderMax+1;
boolean btnShort = false;
boolean btnLong = false;
// Rotary ends

// other pins begin

#define PUMP 35

// other pins end



// mqtt begins


byte mac[6]; 

WiFiClient espClient;
PubSubClient client(espClient);
unsigned long lastMsg = 0;
char payload_str[1024];
DynamicJsonDocument payload(1024);
char mac_buffer[64];
char mqtt_payload_str[1024];
char mqtt_temp_payload_str[1024];
DynamicJsonDocument mqtt_payload(1024);
DynamicJsonDocument mqtt_temp_payload(1024);
String clientName ="unset";
String macAddress;
long lastMQTTRappeling = 0;


// mqtt ends


// General begins

char displayMode = 'mainMenu';
long lastDisplayRefresh = 0;
bool brews;
long brewStarted;
bool brewEnded = false;
float analogReadVP;




// General ends


// interfaces begin

float boilerTemperature = 0;
float brewHeadTemperature = 0;

float brewHeadTemperatureReadOut;
float boilerTemperatureReadOut;

long temperatureFetchMillis = 0;
// interfaces ends


TaskHandle_t Task1;

void Task1code( void * pvParameters ){
  Serial.print("Task1 running on core ");
  Serial.println(xPortGetCoreID());
  for(;;){
    
    yield();   
    readEncoder(encoderMax);
    button();
    if(btnShort){
      btnShort = false;
      //break;
    }
      
    delay(1); 
  }
}

void setup(void) {
 

  u8g2.begin();
  u8g2.setContrast(128);
  u8g2.setBusClock(8*1000000);

  displayWelcome();

  // tlc.begin();
  // tlc.write();



  startAutoConnect();


  core0Task();

  Serial.begin(115200);
  Serial.print("setup() running on core ");
  Serial.println(xPortGetCoreID());
  Serial.print("Version: ");
  Serial.println(version);


  pinMode(CLK, INPUT_PULLUP);

  pinMode(DATA, INPUT_PULLUP);
  pinMode(PUMP, INPUT);

  pinMode(BTN, INPUT);
  pinMode(2,OUTPUT);

  pinMode(36, INPUT);

  
  pinMode(21, OUTPUT); 
  pinMode(22, OUTPUT); 

  // rtd0.begin(21, RTD_4_WIRE, RTD_TYPE_PT1000);
  // rtd1.begin(22, RTD_4_WIRE, RTD_TYPE_PT1000);








  thermo1.begin(MAX31865_4WIRE);
  thermo1.enableBias(true);
  thermo1.autoConvert(true);
  delay(250);

  readTemperature();
  
  delay(250);
  forceTemperatureReading = true;
  thermo2.begin(MAX31865_4WIRE);
  thermo2.enableBias(true);
  thermo2.autoConvert(true);
  delay(250);

  readTemperature();
  
  delay(250);







  

  
  Serial.println("WiFi connected: " + WiFi.localIP().toString());
  

  pullTime();


  client.setServer(mqtt_server, mqtt_port);
  client.setCallback(callback);

  
  
 
  Serial.println("Start loop...");



  
}

void loop(void) {
  lastLoop = millis();

//  for(uint16_t i=0; i<8*NUM_TLC59711; i++) {
//      yield();
//      tlc.setLED(i, 65535, 65535, 65535);
//      tlc.simpleSetBrightness(128);
//      tlc.write();
//      delay(100);
//  }


  kickWatchdog();
  processTime();

  portal.handleClient();       
  //button();
  
  displayHandler();


  delay(1);



  //mqttHandler();  
  

  
  lastLoopMain = millis()-lastLoop;
  if(debug && loopi) Serial.print("LT: ");
  if(debug && loopi) Serial.println(lastLoopMain);  
}
