#!/bin/bash


sudo yum install -y httpd wget unzip

sudo systemctl start httpd
sudo systemctl status httpd
mkdir -p /tmp/website
cd /tmp/website

wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip
unzip 2136_kool_form_pack.zip
sudo cp -r /tmp/website/2136_kool_form_pack/* /var/www/html/

sudo systemctl restart httpd


