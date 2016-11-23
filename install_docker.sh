#!/bin/bash

sudo apt-get install -y -q apt-transport-https ca-certificates 
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D 
sudo apt-key adv -k 58118E89F3A912897C070ADBF76221572C52609D >/dev/null 

sudo mkdir -p /etc/apt/sources.list.d
sudo touch /etc/apt/sources.list.d/docker.list
sudo echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y -q docker-engine=1.11.2-0~trusty
sudo apt-mark hold docker-engine
