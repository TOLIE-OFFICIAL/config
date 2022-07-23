#!/usr/bin/env bash

# Otherwise you can use the nuclear option:
killall -q polybar
# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit


# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar.log
polybar -c $HOME/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar.log & disown
