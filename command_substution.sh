#!/bin/bash




UP=`uptime`




echo "############################"
echo "$UP"
echo "############################"




who_is_user=$(who)
echo "############################"
echo "$who_is_user"
echo "############################"


echo "###################################"
echo "directly we are using"
echo "`whoami`"
echo "$(hostname)"
echo "Welcome `whoami` on $(hostname)"

#we can use `` and $() both...


echo "#####################################"
free_ram=`free -m | grep -i "Mem" | awk '{print $4}'`
echo "Free ram is $free_ram"
echo "###########################"



echo "################################"
LOAD=`uptime | awk '{print $9}'`
echo "current load average $LOAD"
