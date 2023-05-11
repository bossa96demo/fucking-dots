abob=$(curl -s ipinfo.io?token=$token)
ip=$(echo $abob | jq ".ip" | tr -d '"')
country=$(echo $abob | jq ".country" | tr -d '"')
if [ "$country" == "RU" ];then
    printf "%%{F#D45A5A} ";
else
    printf "%%{F#5AD45A} ";
fi
echo "$ip $country"
