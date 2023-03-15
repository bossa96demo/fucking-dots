#!/bin/sh
# Simple script to show the cpu temp formatted to be shown in polybar

temp0=$(sensors | grep "Core 0" | cut -d " " -f 10 | cut -d "." -f 1 | cut -d "+" -f 2)
temp1=$(sensors | grep "Core 1" | cut -d " " -f 10 | cut -d "." -f 1 | cut -d "+" -f 2)
temp2=$(sensors | grep "Core 2" | cut -d " " -f 10 | cut -d "." -f 1 | cut -d "+" -f 2)
temp3=$(sensors | grep "Core 3" | cut -d " " -f 10 | cut -d "." -f 1 | cut -d "+" -f 2)
declare -i temp=($temp0+$temp1+$temp2+$temp3)/4
if [ 1 -eq "$(echo "$temp > 65" | bc)" ]; then
    printf "%%{F#F51200}󰈸 "
elif [ 1 -eq "$(echo "$temp > 55" | bc)" ]; then
    printf "%%{F#FF980F}󰈸 ";
elif [ 1 -eq "$(echo "$temp > 45" | bc)" ]; then
    printf "%%{F#FFED42}󰈸 ";
fi
echo "$temp"°C
