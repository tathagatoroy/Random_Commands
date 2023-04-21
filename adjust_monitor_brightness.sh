#!/bin/bash 

# adjust brightness of the connected monitor
# first find out what devices are connected to the computer

xrandr -q | grep "connected"

# this outputs a list of options of which HDMI-1/ or VGA-1 is the one which is connected to monitor typically
# In my case it is HDMI-1

#now adjust the brightness
xrandr --output HDMI-1 --brightness 2


