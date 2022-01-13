#! /usr/bin/ env python

import os
import requests
import stat
import time
import datetime

dirname = os.path.dirname(__file__)
#codefilePath = os.path.join(dirname, 'CW_ECM_v6.ino.esp32.bin')
codefilePath = os.path.join(dirname, 'build/esp32.esp32.esp32/CW_ECM_v8.ino.bin')

print(codefilePath)

last_modification_time = os.path.getmtime(codefilePath)

while True:

    modification_time = os.path.getmtime(codefilePath)

    if modification_time != last_modification_time:
        with open(codefilePath,'rb') as codefile:
            last_modification_time = os.path.getmtime(codefilePath)
            print("Previous Modified Time : ", last_modification_time)
            print("Latest Modified Time : ", modification_time )
            print("Start uploading...")

            files = {'bin': codefile}
            values = {}

            r = requests.post("http://192.168.178.55/_ac/update_act", files=files, data=values, timeout=120)
            print("Finished uploading!")
    time.sleep(5)