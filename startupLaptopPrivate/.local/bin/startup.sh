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
# Update all repos
rigit fetch ~/personal/
rigit fetch ~/work/
