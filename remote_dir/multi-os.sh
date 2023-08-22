#!/bin/bash

#Variable Declartion
URL="https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip"
ART_NAME="2136_kool_form_pack"
TEMPDIR="/tmp/webfiles"


yum --help 
if [ $? -eq 0 ]
then 
	#Installing Packages
        
        PACKAGE="httpd wget unzip"
        SVC="httpd"
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



	wget $URL
	unzip $ART_NAME.zip
	sudo cp -r $TEMPDIR/$ART_NAME/* /var/www/html/
	echo "###################################"
	echo "REBOOT SERVICES"
	echo "####################################"
	sudo systemctl restart $SVC

	rm -rf $TEMPDIR
	ls /var/www/html
else    
         #Installing Packages
        PACKAGE="apache2 wget unzip"
        svc="apache2"
        echo "#######################################"
        echo "INSTALLING PACKAGES"
        echo "#######################################"
        sudo apt install -y $PACKAGE
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



        wget $URL
        unzip $ART_NAME.zip
        sudo cp -r $TEMPDIR/$ART_NAME/* /var/www/html/
        echo "###################################"
        echo "REBOOT SERVICES"
        echo "####################################"
        sudo systemctl restart $SVC

        rm -rf $TEMPDIR
        ls /var/www/html

fi       

