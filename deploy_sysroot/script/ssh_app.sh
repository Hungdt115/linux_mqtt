#!/bin/bash
imei4g=$(cat /usr/local/linuxapp/var/imei)
echo "Connect to ssh with imei: $imei4g"
SHELLCLOUD_PREFERRED_IDENTITY=$imei4g SHELLCLOUD_PRIVATE_KEY=/usr/local/linuxapp/bin/private.key SHELLCLOUD_TENANT_ID=9e4a069c-d3f3-4c57-893c-81ad2cfbdc0a /usr/local/linuxapp/bin/ssh_app
sleep 2