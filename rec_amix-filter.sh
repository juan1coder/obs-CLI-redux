#!/bin/bash

#xfce4-terminal -x just add this line if you want to run in in the xface terminal. 
###command to figure out what input and/or output is going to be recorded. just like in obs we record the #name *.monitor, shown in the script, source not the speakers for audio. ###
#$ pactl list short sources
#$ pactl list short sinks

ffmpeg -f pulse -i alsa_input.usb-Samson_Technologies_Samson_GoMic-00.analog-stereo \
-f pulse -i alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1.monitor \
-filter_complex "[0:a] [1:a] amix=inputs=2:duration=longest:dropout_transition=0[aout]" -map [aout] \
-c:a libmp3lame -b:a 128k /media/yonn/Debian9/home/yonn/Videos/alarm-$(date +"%d-%b-%Y_%H.%M.%S%p").mkv


#notes - mkv container does not care for the aduio n or video in it. 
#mpv is indeed very versatile for the playback 
#the -map follows a certain order.

