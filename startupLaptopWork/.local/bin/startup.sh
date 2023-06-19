#!/bin/bash

# Sets background of root window to black
xsetroot -solid black 
# Sets Cursor
xsetroot -cursor_name top_left_arrow 
# Bell Volume 0
xset b 0 
# Screensaver and Screen blanking off
xset s off 
xset -dpms 
xset s noblank 
# Run Compositor
picom &
# Allow Mousepad tapping to click
xinput set-prop "$(xinput list --name-only | grep -i touch)" "libinput Tapping Enabled" 1
# Monitor setup
xrandr --output LVDS1 --mode 1920x1080 --pos 2560x700 --rotate normal --output DP1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP2 --off --output DP3 --off --output HDMI1 --off --output HDMI2 --off --output HDMI3 --off --output VGA1 --off --output VIRTUAL1 --off
# Update all repos
g pull ~/git/
