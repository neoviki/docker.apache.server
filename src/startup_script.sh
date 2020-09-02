#!/bin/bash

#This script will be called each time the container is started

echo "ServerName localhost" >> /etc/apache2/apache2.conf
service apache2 start
/bin/bash 
