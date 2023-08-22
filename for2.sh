#!/bin/bash

Myusers="alpha beta gamma"
for usr in $Myusers
do
 echo "Adding the $usr"
 useradd $usr
 id $usr
done
