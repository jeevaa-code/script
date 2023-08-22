#!/bin/bash

counter=0
while [ $counter -lt 5 ]
do
  echo "The value is $counter"	
  sleep 1
  counter=$(($counter + 1))
done
