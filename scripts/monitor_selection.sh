#!/usr/bin/env bash

if ! xrandr --listmonitors | grep 'HDMI2' > /dev/null 2>&1; then
    xrandr --output DP1 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x420 --rotate normal --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate left --output HDMI3 --off --output VIRTUAL1 --off
elif xrandr --listmonitors | grep 'HDMI1' > /dev/null 2>&1; then
    xrandr --output DP1 --off --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI2 --off --output HDMI3 --off --output VIRTUAL1 --off
else
    arandr
fi
