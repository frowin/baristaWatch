void displayHandler(){
  switch(displayMode){
    case 'mainMenu':
      mainMenu();
      break;
    case 'clock':
      mainMenu();
      break;
    default:
      mainMenu();
      break;
  }
}

void displayStatistics(){
  if((millis()-lastDisplayRefresh)>20){
    u8g2.clearBuffer();          
    u8g2.setFont(u8g2_font_t0_15_mr);
    
    u8g2.setCursor(5,10);
    u8g2.print("v" +String(version));

    u8g2.setCursor(5,25);
    u8g2.print("mainloop: " +String(lastLoopMain) + " ms");


    analogReadVP = analogRead(36);
    u8g2.setCursor(5,40);
    u8g2.print("analog: " +String(analogReadVP));

    u8g2.sendBuffer(); 
  }  
}


void mainMenu(){
  if(encoderVal != encoderValPrev){
    encoderValPrev = encoderVal;
  }
  Serial.println(encoderVal);
  switch(encoderVal){
    case 0:
      clockMode();
      break;
    case 1:
      brewMode();
      break;
    case 2:
      tempMode();
      break;
    case 3:
      displayStatistics();
      break;
  }
}


void displayWelcome(){
  u8g2.clearBuffer();          
  u8g2.setFont(u8g2_font_t0_15_mr);
  u8g2.setCursor(0, 10);
  u8g2.print("Howdy, Partner!");
  u8g2.sendBuffer(); 
}

void displayMenuItem(String name){
  u8g2.clearBuffer();          
  u8g2.setFont(u8g2_font_t0_15_mr);
  u8g2.setCursor(0, 10);
  u8g2.print(name);
  u8g2.sendBuffer(); 
}


void clockMode(){
  readTemperature();
  if((millis()-lastDisplayRefresh)>20){
    lastDisplayRefresh = millis();
    u8g2.clearBuffer();          
    u8g2.setFont(u8g2_font_logisoso42_tr);
    u8g2.setCursor(2, 42);

    u8g2.print((secondIndicatorBlinkSign?timeH+":":timeH));
    if((millis()-secondIndicatorLastBlink)>1000){
      secondIndicatorBlinkSign = !secondIndicatorBlinkSign;
      secondIndicatorLastBlink = millis();
    }
    u8g2.setCursor(71, 42);
    u8g2.print(timeM);
    //u8g2.drawFrame(0,0,128,64);

    
    u8g2.setFont(u8g2_font_logisoso16_tr); 
    
    char boilerTemperatureLeadingSpace[3];
    int boilerTemperatureNoDecimal = (int)boilerTemperature;
    sprintf(boilerTemperatureLeadingSpace, "%03d", (char)boilerTemperatureNoDecimal);
    u8g2.setCursor(0, 64);
    u8g2.print(boilerTemperatureLeadingSpace);
    u8g2.drawCircle(44, 52, 2);
    u8g2.setCursor(48, 64);
    u8g2.print("C"); 


    char brewHeadTemperatureLeadingSpace[3];
    int brewHeadTemperatureNoDecimal = (int)brewHeadTemperature;
    sprintf(brewHeadTemperatureLeadingSpace, "%3d", (char)brewHeadTemperatureNoDecimal);
    u8g2.setCursor(60, 64);
    u8g2.print(brewHeadTemperatureLeadingSpace);
    u8g2.drawCircle(104, 52, 2);
    u8g2.setCursor(108, 64);
    u8g2.print("C"); 
    u8g2.sendBuffer(); 
  }
}


void tempMode(){  
  readTemperature();
  if((millis()-lastDisplayRefresh)>20){
    lastDisplayRefresh = millis();  
    u8g2.clearBuffer();          
    u8g2.setFont(u8g2_font_logisoso28_tr);
    u8g2.setCursor(0, 30);
    u8g2.print(boilerTemperature,1);
    u8g2.setCursor(0, 60);
    u8g2.print(brewHeadTemperature,1);
    u8g2.sendBuffer(); 
  }

}

void displayBrew(char minutes, char seconds, char milliseconds){
    u8g2.clearBuffer();   
    u8g2.setFont(u8g2_font_logisoso16_tr);
    u8g2.setCursor(19, 38);
    char minutesLeadingZeros[1];
    sprintf(minutesLeadingZeros, "%01d", (char)minutes);
    u8g2.print(String(minutesLeadingZeros));
    u8g2.setCursor(33, 38);
    u8g2.print(":");

    u8g2.setFont(u8g2_font_logisoso38_tr);
    u8g2.setCursor(41, 38);
    char secondsLeadingZeros[2];
    sprintf(secondsLeadingZeros, "%02d", (char)seconds);
    u8g2.print(String(secondsLeadingZeros));
    u8g2.setFont(u8g2_font_logisoso16_tr);
    u8g2.setCursor(93, 38);
    u8g2.print(":");    

    u8g2.setFont(u8g2_font_logisoso16_tr);
    u8g2.setCursor(103, 38);
    char msLeadingZeros[2];
    sprintf(msLeadingZeros, "%02d", (char)milliseconds);
    u8g2.print(String(msLeadingZeros));


    if(!brews){
      readTemperature();
      u8g2.setFont(u8g2_font_logisoso16_tr); 
      
      char boilerTemperatureLeadingSpace[3];
      int boilerTemperatureNoDecimal = (int)boilerTemperature;
      sprintf(boilerTemperatureLeadingSpace, "%03d", (char)boilerTemperatureNoDecimal);
      u8g2.setCursor(0, 64);
      u8g2.print(boilerTemperatureLeadingSpace);
      u8g2.drawCircle(44, 52, 2);
      u8g2.setCursor(48, 64);
      u8g2.print("C"); 

      char brewHeadTemperatureLeadingSpace[3];
      int brewHeadTemperatureNoDecimal = (int)brewHeadTemperature;
      sprintf(brewHeadTemperatureLeadingSpace, "%3d", (char)brewHeadTemperatureNoDecimal);
      u8g2.setCursor(60, 64);
      u8g2.print(brewHeadTemperatureLeadingSpace);
      u8g2.drawCircle(104, 52, 2);
      u8g2.setCursor(108, 64);
      u8g2.print("C"); 
    }



    u8g2.sendBuffer(); 
}
