#!/bin/bash

# Time zone
rm /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
timedatectl set-ntp true

# Lib
ln -s /lib64/libcrypt.so.1.1.0 /lib64/libcrypt.so.1
ln -s /usr/lib/libcpprest.so.2.10 /usr/lib/libcpprest.so
ln -s /usr/lib/libpaho-mqtt3a.so.1.3.8 /usr/lib/libpaho-mqtt3a.so.1
ln -s /usr/lib/libpaho-mqtt3a.so.1 /usr/lib/libpaho-mqtt3a.so
ln -s /usr/lib/libpaho-mqtt3as.so.1.3.8 /usr/lib/libpaho-mqtt3as.so.1
ln -s /usr/lib/libpaho-mqtt3as.so.1 /usr/lib/libpaho-mqtt3as.so
ln -s /usr/lib/libpaho-mqtt3c.so.1.3.8 /usr/lib/libpaho-mqtt3c.so.1
ln -s /usr/lib/libpaho-mqtt3c.so.1 /usr/lib/libpaho-mqtt3c.so
ln -s /usr/lib/libpaho-mqtt3cs.so.1.3.8 /usr/lib/libpaho-mqtt3cs.so.1
ln -s /usr/lib/libpaho-mqtt3cs.so.1 /usr/lib/libpaho-mqtt3cs.so
ln -s /usr/lib/libpaho-mqttpp3.so.1.2.0 /usr/lib/libpaho-mqttpp3.so.1
ln -s /usr/lib/libpaho-mqttpp3.so.1 /usr/lib/libpaho-mqttpp3.so

# App
ln -s /data/MqttClient /usr/local/linuxapp/bin/MqttClient
ln -s /data/HttpClient /usr/local/linuxapp/bin/HttpClient
ln -s /data/ssh_app /usr/local/linuxapp/bin/ssh_app

ldconfig

# Systemctl
cp /script/restream.service /etc/systemd/system/
cp /script/4g_setup.service /etc/systemd/system/
cp /script/wifi_setup.service /etc/systemd/system/
cp /script/ssh_app.service /etc/systemd/system/

chmod +x /script/4g_setup.sh
chmod +x /script/wifi_setup.sh
chmod +x /script/ssh_app.sh

systemctl daemon-reload
systemctl enable restream
systemctl enable 4g_setup
systemctl enable wifi_setup
systemctl enable ssh_app
systemctl start restream
systemctl start 4g_setup
systemctl start wifi_setup
systemctl start ssh_app
