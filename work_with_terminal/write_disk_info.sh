var=$(lsblk | grep "\bsd.\b" | awk '{print $1}')
OUTPUT=$(ls -l)
if [ $EUID -eq 0 ];then
    USER=""
else
    USER="sudo"
fi

echo $USER
#echo $OUTPUT
for disk in $var;do
	echo $disk
    time=$($USER smartctl -s on  --all /dev/$disk | grep "Power_On_Hours" | awk '{print $10}')
    echo $time
	#$USER smartctl -s on  --all /dev/$disk 
    sed -i -e "s/power_on_hours = [0-9:]*/power_on_hours = $time/" test.py
done
# execute:sudo sh ./write_disk_info.sh


