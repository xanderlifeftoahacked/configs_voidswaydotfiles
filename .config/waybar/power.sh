#!/bin/zsh
if [ "$(cat /sys/class/power_supply/BAT0/power_now)" = "0" ]; then
  awk '{printf "[%.1fW]", $1/1000000}' /sys/class/power_supply/BAT1/power_now
else
  awk '{printf "[%.1fW]", $1/1000000}' /sys/class/power_supply/BAT0/power_now
fi
 
