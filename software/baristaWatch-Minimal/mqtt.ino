void mqttRappeling(){

  if((millis()-lastMQTTRappeling)>1000){
    // mqtt_payload["mac"] = String(mac_buffer);
    // mqtt_payload["debug"] = millis();
    // serializeJson(mqtt_payload, mqtt_payload_str);
    // client.publish("baristaWatch", mqtt_payload_str);
    // lastMQTTRappeling = millis();


    

    mqtt_temp_payload["mac"] = String(mac_buffer);
    mqtt_temp_payload["boilerTemperature"] = boilerTemperature;
    mqtt_temp_payload["brewHeadTemperature"] = brewHeadTemperature;
    
    serializeJson(mqtt_temp_payload, mqtt_temp_payload_str);
    client.publish("baristaWatch-temp", mqtt_temp_payload_str);
    lastMQTTRappeling = millis();
  }


}

void mqttHandler(){
  if (!client.connected()) {
    reconnect();
  }
  client.loop();
  mqttRappeling();
} 
  



void callback(char* topic, byte* payload, unsigned int length) {
  if(debug) Serial.print("Message arrived [");
  if(debug) Serial.print(topic);
  if(debug) Serial.print("] ");
  for (int i = 0; i < length; i++) {
    if(debug) Serial.print((char)payload[i]);
  }



}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    if(debug) Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str(), mosquitto_user, mosquitto_password)) {
      if(debug) Serial.println("connected");
      WiFi.macAddress(mac); 



      if(debug) Serial.printf("Connected, mac address: %02x:%02x:%02x:%02x:%02x:%02x\n", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
      sprintf(mac_buffer,"%02x:%02x:%02x:%02x:%02x:%02x", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);

    } else {
      if(debug) Serial.print("failed, rc=");
      if(debug) Serial.print(client.state());
      if(debug) Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}
