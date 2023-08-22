#!/bin/bash

#Variable Declartion
PACKAGE="httpd wget unzip"
SVC="httpd"
#URL="https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip"
#ART_NAME="2136_kool_form_pack"
TEMPDIR="/tmp/webfiles"

#Installing Packages
echo "#######################################"
echo "INSTALLING PACKAGES"
echo "#######################################"
sudo yum install -y $PACKAGE
echo

#START & ENABLE THE SERVICE
echo "########################################"
echo "START & ENABLE THE HTTPD SERVICE"
echo "########################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
sudo systemctl status $SVC

echo "####################################"
# Creating Temporary Directory
echo "###################################"
# Starting artifact deployment
mkdir -p $TEMPDIR
cd $TEMPDIR



wget $1
unzip $2.zip
sudo cp -r $2/* /var/www/html/
echo "###################################"
echo "REBOOT SERVICES"
echo "####################################"
sudo systemctl restart $SVC

rm -rf $TEMPDIR
ls /var/www/html


