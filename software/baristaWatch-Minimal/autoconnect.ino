void startAutoConnect(){
  server.on("/", []() {
    String content = R"(
    <!DOCTYPE html>
    <html>
    <head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
    Place the root page with the sketch application.&ensp;
    __AC_LINK__
    </body>
    </html>
    )";
    content.replace("__AC_LINK__", String(AUTOCONNECT_LINK(COG_16)));
    server.send(200, "text/html", content);
  });
  
  config.ota = AC_OTA_BUILTIN;
  portal.config(config);
  portal.begin(wifi_ssid, wifi_password);
}
