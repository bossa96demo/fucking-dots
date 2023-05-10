#!/bin/bash

# options to be displayed
option0='whole screen'
option1='select area or window'
option2='currently focused window'
options="$option0\n$option1\n$option2"

# save file
photo="screenshot-$(date +%F_%T).png"
file="$(xdg-user-dir)/screenshot-s/$photo"
selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p 'scrot')"
case $selected in
  "$option0")
    sleep 1 && scrot -F "$file";;
  "$option1")
    sleep 1 && scrot -s -F "$file";;
  "$option2")
    sleep 1 && scrot -u -F "$file";;
esac
cat $file | xclip -selection clipboard -target image/png -i
