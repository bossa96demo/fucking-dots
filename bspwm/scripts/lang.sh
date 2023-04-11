lang=$(setxkbmap -query | grep layout | tail -c 3)

if [ "$lang" == "us" ]; then
	setxkbmap ru
else
	setxkbmap us
fi
