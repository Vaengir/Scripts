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
# Monitor setup
xrandr --output DP-1 --off --output DP-3 --primary --mode 2560x1440 --rate 164.83 --pos 0x167 --rotate normal --output DP-2 --mode 1920x1080 --rate 164.92 --pos 2560x0 --rotate right --output HDMI-1 --off
# Run Compositor
picom &
# Enable numlock
numlockx on
# Hide Cursor after 5 seconds
unclutter --timeout 5 --hide-on-touch --start-hidden&
# Update all repos
rigit fetch ~/personal/
rigit fetch ~/vaengir/
