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
xrandr --output DisplayPort-0 --off --output DisplayPort-1 --primary --mode 2560x1440 --rate 164.83 --pos 0x194 --rotate normal --output DisplayPort-2 --mode 1920x1080 --rate 164.92 --pos 2560x0 --rotate right --output HDMI-A-0 --off
# Run Compositor
picom &
# Update all repos
# g fetch ~/personal/
# g fetch ~/work/
