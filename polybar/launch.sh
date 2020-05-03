#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait 
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload white &
done
# Launch bar 
#polybar white -r &
