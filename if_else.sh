#!/bin/bash

read -p "Enter a num: " NUM
if [ $NUM -ge 100 ]
then
    echo "WE are entered if else statement"
    sleep 3
    echo "`whoami`"
    echo "Your number is greater than 100"
else
    echo "Your number is less than 100"
    echo "`hostname`"
fi

echo "script successfully executed"
