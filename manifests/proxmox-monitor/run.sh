#!/bin/sh

sudo docker volume create influxdb-volume
sudo docker volume create grafana-volume

sudo docker network create monitoring_network

sudo docker-compose up -d
