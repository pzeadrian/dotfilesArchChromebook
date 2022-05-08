#!/bin/sh
xrandr --output eDP --primary --mode 1920x1080 --pos 0x1080 --rotate normal --output HDMI-1 --mode 1920x1080 --pos 0x0 --rotate normal

sleep 1

$HOME/.config/polybar/launch.sh
polybar externalMonitor &
bspc wm -r
