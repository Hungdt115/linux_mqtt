#!/bin/bash
VOLUME=$1

amixer -c0 cset name='Audio_Amp_R_Switch' 0 > /dev/null
amixer -c0 cset name='Audio_Amp_L_Switch' 0 > /dev/null
amixer -c0 cset name='Audio_Amp_R_Switch' 1 > /dev/null
amixer -c0 cset name='Audio_Amp_L_Switch' 1 > /dev/null
amixer -c0 cset name='Audio_Amp_R_Switch' 2 > /dev/null
amixer -c0 cset name='Audio_Amp_L_Switch' 2 > /dev/null
amixer -c0 cset name='Headset_PGAR_GAIN' 30 > /dev/null
amixer -c0 cset name='Headset_PGAR_GAIN' $VOLUME > /dev/null