void brewMode(){
  // if(digitalRead(PUMP)){
  //   u8g2.setFont(u8g2_font_t0_15_mr);
  //   u8g2.setCursor(0, 60);
  //   u8g2.print("HIGH");
  //   u8g2.sendBuffer(); 
  // }else{
  //   u8g2.setFont(u8g2_font_t0_15_mr);
  //   u8g2.setCursor(0, 60);
  //   u8g2.print("LOW");
  //   u8g2.sendBuffer(); 
  // }

  if(!timerActive){
    if(digitalRead(PUMP)){
      Serial.println("Start timer...");  
      long brewStarted = millis();

      if(brewEnded){
        timerAlarmDisable(timer);     //stop alarm
        timerDetachInterrupt(timer);  //detach interrupt
        timerEnd(timer);              //end timer
        brewEnded = false;
        totalInterruptCounter = 0;
      }

      setupTimer(10);
      timerActive = true;
      timerRuns = true; 
      brews = true;   
    }  
  }else{
      if(!digitalRead(PUMP)){
        Serial.println("Stop timer...");  
        timerActive = false;
        timerRuns = false;
        brews = false;
        brewEnded = true;        
      }

  }

  if(timerRuns){
    totalInterruptCounter += interruptCounter;
  }
  portENTER_CRITICAL(&timerMux);
  interruptCounter = 0;
  portEXIT_CRITICAL(&timerMux);  
  

  ms = totalInterruptCounter*timerFactor;
  milliseconds = (ms % 1000)/10;
  seconds = (ms/1000) % 60;
  minutes = (ms/(1000*60)) % 60;
  hours = (ms/(1000*60*60)) % 24;

  if(minutes > 5){
    timerRuns = false;
  }
  
  displayBrew((char)minutes, (char)seconds, (char)milliseconds);
  
}
