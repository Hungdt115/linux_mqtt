#!/bin/bash
USER=$1
PASS=$2
wpa_cli -i wlan0 -p /tmp/wpa_supplicant add_network
wpa_cli -i wlan0 -p /tmp/wpa_supplicant set_network 0 ssid '"'$USER'"'
wpa_cli -i wlan0 -p /tmp/wpa_supplicant set_network 0 psk '"'$PASS'"' 
wpa_cli -i wlan0 -p /tmp/wpa_supplicant set_network 0 key_mgmt WPA-PSK
wpa_cli -i wlan0 -p /tmp/wpa_supplicant select_network 0
udhcpc -b -i wlan0
