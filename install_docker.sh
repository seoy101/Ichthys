#!/bin/bash

apt-get install -y -q apt-transport-https ca-certificates && apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && apt-key adv -k 58118E89F3A912897C070ADBF76221572C52609D >/dev/null 

mkdir -p /etc/apt/sources.list.d
touch /etc/apt/sources.list.d/docker.list
echo deb \[arch=amd64\] https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y -q docker-engine
sapt-mark hold docker-engine
