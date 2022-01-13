void pullTime(){
  configTzTime(TZ_INFO, NTP_SERVER); // ESP32 Systemzeit mit NTP Synchronisieren
  getLocalTime(&local, 10000);      // Versuche 10 s zu Synchronisieren
  //WiFi.mode(WIFI_OFF);
  setenv("TZ", TZ_INFO, 1); // Zeitzone  muss nach dem reset neu eingestellt werden
  tzset();
}

void processTime(){
  tm local;
  getLocalTime(&local);
  char bufferHMS [80];
  char bufferHM [80];
  char bufferH [80];
  char bufferM [80];
  char bufferS [80];
  strftime(bufferHMS,80,"%H:%M:%S",&local);
  timeHMS = String(bufferHMS);
 strftime(bufferHM,80,"%H:%M",&local);
  timeHM = String(bufferHM);
  strftime(bufferH,80,"%H",&local);
  timeH = String(bufferH); 
  strftime(bufferM,80,"%M",&local);
  timeM = String(bufferM); 
  strftime(bufferS,80,"%S",&local);
  timeS = String(bufferS); 
}

void IRAM_ATTR onTimer() {
  portENTER_CRITICAL_ISR(&timerMux);
  interruptCounter++;
  portEXIT_CRITICAL_ISR(&timerMux);
}

void setupTimer(int ms){
  timerFactor = ms;
  timer = timerBegin(0, 80, true);
  timerAttachInterrupt(timer, &onTimer, true);
  timerAlarmWrite(timer, ms*1000, true);
  timerAlarmEnable(timer);
}
