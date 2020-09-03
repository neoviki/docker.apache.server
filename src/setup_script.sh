#!/bin/bash
#This script will be called only once during docker build

echo "ServerName localhost" >> /etc/apache2/apache2.conf
cp -rf /000-default-le-ssl.conf /etc/apache2/sites-available/000-default-le-ssl.conf
cp -rf /000-default.conf /etc/apache2/sites-available/000-default.conf
a2ensite 000-default.conf
a2ensite 000-default-le-ssl.conf
service apache2 start
service apache2 stop
service apache2 start
