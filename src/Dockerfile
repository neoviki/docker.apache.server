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

#Install Apache

RUN apt-get install -y apache2

#Install vim

RUN apt-get install -y vim

# Clean package list to save space
RUN rm -rf /var/lib/apt/lists/* 

# Clean package cache to save space
RUN apt-get clean

#Execute a command [ CMD - Execute a command when ever the docker image is run ]
#CMD ["touch", "/test123.txt"]

COPY startup_script.sh /startup_script.sh
RUN chmod +x /startup_script.sh

#This script will be called each time the container is started
ENTRYPOINT /startup_script.sh

# Expose port for applications
EXPOSE 80 443

#Execte the command during startup
#CMD service apache2 start


