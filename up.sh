#!/bin/bash

# Requires sudo
# Updates the OS and all docker containers, and then removes legacy unused images
# Does not automatically restart the host OS if an update requires it

sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
docker-compose pull
docker-compose up -d --remove-orphans
docker system prune -a -f
