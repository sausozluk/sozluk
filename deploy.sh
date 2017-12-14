#!/usr/bin/env bash
echo "VERSION: $1"
sudo docker rmi -f $(sudo docker images -f "dangling=true" -q)
sudo docker-compose pull
sudo docker-compose up -d --build