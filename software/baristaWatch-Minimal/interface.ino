void readTemperature(){
  if(((millis()-temperatureFetchMillis)>100)||forceTemperatureReading){
    forceTemperatureReading = false;
    if(true){
      
      
      boilerTemperatureReadOut = thermo1.temperature(RNOMINAL, RREF);
      brewHeadTemperatureReadOut = thermo2.temperature(RNOMINAL, RREF);

      


      if( boilerTemperatureReadOut > 0 ){
        boilerTemperature = boilerTemperatureReadOut;
      }
      
      if( brewHeadTemperatureReadOut > 0 ){
        brewHeadTemperature = brewHeadTemperatureReadOut;      
      }

    
      
    }
    temperatureFetchMillis = millis();
  }
}

void readEncoder(int encoderMax){
  if( val=read_rotary() ) {
    c +=val;
    if(c<0){
      c = encoderMax;  
    }
    if(c>encoderMax){
      c = 0;
    }
    encoderVal = c;
  }
}

int8_t read_rotary() {
  static int8_t rot_enc_table[] = {0,1,1,0,1,0,0,1,1,0,0,1,0,1,1,0};
  prevNextCode <<= 2;
  if (digitalRead(DATA)) prevNextCode |= 0x02;
  if (digitalRead(CLK)) prevNextCode |= 0x01;
  prevNextCode &= 0x0f;
   if  (rot_enc_table[prevNextCode] ) {
      store <<= 4;
      store |= prevNextCode;
      if ((store&0xff)==0x2b) return 1;
      if ((store&0xff)==0x17) return -1;
   }
   return 0;
}

void button(){
  if (!(digitalRead(BTN))) {     
    long button_press = millis();
    while (!digitalRead(BTN)) {}  
    delay(10); 
    if((millis()-button_press) > 500){ 
       //Serial.println("Button long"); 
       btnLong = true;
    }else{
      //Serial.println("Button short"); 
      btnShort = true;
    }
  }
}  
