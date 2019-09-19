### Computer Stuff

#### Wifi Password command

If your pc is connected to a wifi but you don't remember the password, open a command prompt (you need to have access to it) and type
```
netsh wlan show profile WiFi-name key=clear
```
Replace Wifi-name by your wifi with your SSID and add quotes if it contains spaces