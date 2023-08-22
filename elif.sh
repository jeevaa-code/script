#!/bin/bash


value=`ip addr show|grep -v LOOPBACK|grep -ic mtu`

if [ $value -eq 1 ]
then
   echo "1 Active network was found"
elif [ $value -eq 2 ]
then 
   echo "2 Active network was found"
else
   echo "NO Active network was found"
fi
   
