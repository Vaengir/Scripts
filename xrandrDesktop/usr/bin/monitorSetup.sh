#! /usr/bin/bash

# RED='\033[0;31m' 
# NOCOLOR='\033[0m'

# if [[ $(/usr/bin/id -u) -ne 0 ]]; then
#   printf "${RED}Error:${NOCOLOR} Script needs root to run" 1>&2
#   echo ""
#   exit
# fi

awesome_restart(){
  /bin/su $USER -c "echo 'awesome.restart()' | awesome-client"
}

xrandr --output DisplayPort-0 --off --output DisplayPort-1 --primary --mode 2560x1440 --rate 164.83 --pos 0x194 --rotate normal --output DisplayPort-2 --mode 1920x1080 --rate 164.92 --pos 2560x0 --rotate right --output HDMI-A-0 --off
echo "Screens configured"

awesome_restart
