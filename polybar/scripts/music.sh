data=$(playerctl metadata --format "{{ artist }} - {{ title }}")
num=$(echo $data | wc -c)
if [ $num -gt 42 ]; then
	echo $data | head -c 42 | sed 's/.\{1\}$/…/'
else
	echo $data
fi
