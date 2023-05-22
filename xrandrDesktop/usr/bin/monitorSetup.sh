#! /usr/bin/bash

RED='\033[0;31m' 
NOCOLOR='\033[0m'

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  printf "${RED}Error:${NOCOLOR} Script needs root to run" 1>&2
  echo ""
  exit
fi

awesome_restart(){
  /bin/su $USER -c "echo 'awesome.restart()' | awesome-client"
}

xrandr --output DisplayPort-1 --primary --auto
echo "First Screen configured"
xrandr --output DisplayPort-2 --right-of DisplayPort-1 --rotate right --auto
echo "Second Screen configured"

awesome_restart
