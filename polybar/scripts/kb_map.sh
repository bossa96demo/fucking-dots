lang=$(setxkbmap -query | grep layout | tail -c 3)
echo $lang
