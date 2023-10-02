#!/bin/bash
APP_ROOT=$(dirname $(readlink -f $0))/..

adb push $APP_ROOT/usr/lib /usr/
adb push $APP_ROOT/lib64 /
