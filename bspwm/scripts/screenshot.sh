#!/bin/bash
photo="screenshot-$(date +%F_%T).png"
file="$(xdg-user-dir)/screenshot-s/$photo"
maim -s | xclip -selection clipboard -target image/png -i
