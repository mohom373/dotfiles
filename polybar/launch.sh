#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait 
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar 
polybar white -r &
