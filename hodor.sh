toto=$(df -i / | tail -n 1 | cut -d ' ' -f 12 | sed 's/%//')
if ($toto -gt 20 )
then
echo " C'est au dessus de 20"
tar -czvf
else
echo " C'est OK "
fi
echo $toto
