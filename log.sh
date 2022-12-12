#/bin/bash
#echo entrer un nombre n 
export RANDOM="$RANDOM"
read n
num=1
sudo mkdir -p /var/log/exercice/recent_logs
while [ $num -le $n ] ; do
	chemin=$(mktemp /var/log/exercice/recent_logs/XXXX.txt)
	echo $(head -c 10 /dev/random)>> $chemin
	num=$((num + 1)) 
done

