#! /bin/sh

# Terminate already running polybars
killall -q polybar

# Wait until the processes have been shutdown
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

sleep 1

# Launch bar
polybar principal &
