#! /usr/bin/bash

awesome_restart(){
  /bin/su $USER -c "echo 'awesome.restart()' | awesome-client"
}

xrandr --output DisplayPort-1 --primary --auto
echo "First Screen configured"
xrandr --output DisplayPort-2 --right-of DisplayPort-1 --rotate right --auto
echo "Second Screen configured"

awesome_restart
