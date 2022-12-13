#!/bin/bash

toto=$(df -i / | tail -n 1 | cut -d ' ' -f 12 | sed 's/%//')
echo $toto
if [ $toto -gt 20 ]
then
echo " C'est au dessus de 20"
tar -czvf  /var/log/exercice/archives/fichier_archivés /var/log/exercice/recent_logs
echo "HODOOOOOR">> /dev/pts/0
else
echo " C'est OK "
fi

