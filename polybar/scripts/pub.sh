ip=$(host myip.opendns.com resolver1.opendns.com | grep myip | cut -d " " -f 4)
sec=$(curl -s ipinfo.io | jq ".country" | cut -d '"' -f 2)
if [ "$sec" == "RU" ];then
    printf "%%{F#A90015} ";
else
    printf "%%{F#15A900} ";
fi
echo "$ip $sec"
