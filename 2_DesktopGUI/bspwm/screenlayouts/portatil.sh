#!/bin/sh
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output HDMI-1 --off --output HDMI-2 --off

sleep 0

$HOME/.config/polybar/launch.sh
polybar principal &
bspc wm -r

sleep 0

$HOME/.config/polybar/launch.sh

