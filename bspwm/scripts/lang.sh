lang=$(setxkbmap -query | grep layout | cut -d ":" -f 2)

if [ "$lang" == "     us" ]; then
	setxkbmap ru
else
	setxkbmap us
fi
