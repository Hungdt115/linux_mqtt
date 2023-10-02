#!/bin/bash
APP_ROOT=$(dirname $(readlink -f $0))/..

adb push $APP_ROOT/etc/ppp /etc
adb push $APP_ROOT/usr/local /usr
adb push $APP_ROOT/script /
adb push $APP_ROOT/data /