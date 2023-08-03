# Pull the docker hub on ubuntu image
FROM ubuntu:latest

# Update aplication
RUN apt-get update && apt-get -y upgrade && apt-get -y install vim

# User add and swicha user 
RUN useradd -m -d /home/Nature3 -s /bin/bash Nature3
USER Nature3

# file transfer 
ADD sample1.java /home/Nature3
WORKDIR /home/Nature3
