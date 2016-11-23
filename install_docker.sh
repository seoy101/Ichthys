#!/bin/bash

sudo apt-get install -y -q apt-transport-https ca-certificates 
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D 
sudo apt-key adv -k 58118E89F3A912897C070ADBF76221572C52609D >/dev/null 
