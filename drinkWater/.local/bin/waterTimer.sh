#! /usr/bin/bash

if [[ $1 ]]; then
  echo "The Timer was set to $(($1/60)) min"
  sleepTime=$1;
else
  echo "No Timer set, using default 15 min";
  sleepTime=9000;
fi
while true; do
  notify-send -i ~/.local/bin/waterIcon.png "Time to drink Water!!";
  sleep $sleepTime
done
