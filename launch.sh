#!/usr/bin/env bash

# destroy other bars
killall -q polybar

# Wait till other procceses stop
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar mybar &
