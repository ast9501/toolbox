#!/bin/sh

sudo apt install docker.io
wget https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64
mv docker-compose-Linux-x86_64 docker-compose
chmod +x docker-compose
sudo mv docker-compose /usr/local/bin
