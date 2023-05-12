abob=$(mpris-ctl info | cut -d "-" -f 1)
aboba=$(mpris-ctl info | rev | cut -d "-" -f 1 | rev)
aaa=$(echo $abob - $aboba)
is=$(echo $aaa | wc -c)
if [ $is -gt 42 ];then
	echo $aaa | head -c 42 | sed 's/.\{1\}$/…/'
else
	echo $aaa
fi
