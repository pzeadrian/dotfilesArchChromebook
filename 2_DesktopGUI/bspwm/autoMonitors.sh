#! /bin/bash

if [[ $(xrandr -q | grep "HDMI-1 connected") ]] ; then
	polybar externalMonitor &
fi
