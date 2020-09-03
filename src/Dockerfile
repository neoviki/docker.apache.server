# Docker Command Reference [ https://docs.docker.com/engine/reference/builder/ ]
FROM ubuntu:16.04
LABEL maintainer="vikiemailbox@gmail.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for ubunut 20.04"
# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt-get update

# Install packages RUN [ execute a command only during build ]
RUN apt-get install -y --no-install-recommends apt-utils

# Install packages RUN [ execute a command only during build ]
RUN apt-get install -y iputils-ping

#Install ifconfig
RUN apt-get install -y net-tools

RUN apt-get install -y curl

RUN apt-get install -y wget

RUN apt-get install -y grep

RUN apt-get install -y apt-transport-https ca-certificates

RUN apt-get update

RUN apt-get -y install openssl


#Install Apache

RUN apt-get update

RUN apt-get install -y apache2

RUN apt-get update

#Install vim

RUN apt-get install -y vim

#Lets Encrypt
RUN apt-get install -y python-certbot-apache

# Clean package list to save space
RUN rm -rf /var/lib/apt/lists/* 

# Clean package cache to save space
RUN apt-get clean

#Execute a command [ CMD - Execute a command when ever the docker image is run ]
#CMD ["touch", "/test123.txt"]

#Run this script only once
COPY 000-default.conf /000-default.conf
COPY 000-default-le-ssl.conf  /000-default-le-ssl.conf 
COPY setup_script.sh /setup_script.sh
COPY startup_script.sh /startup_script.sh
RUN chmod +x /setup_script.sh
RUN chmod +x /startup_script.sh


RUN /setup_script.sh

RUN a2enmod rewrite

RUN a2enmod ssl

#This script will be called each time the container is started
ENTRYPOINT /startup_script.sh

# Expose port for applications
EXPOSE 80 
EXPOSE 443

#Execte the command during startup
#CMD service apache2 start


