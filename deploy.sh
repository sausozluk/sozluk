#!/usr/bin/env bash
sudo docker rmi $(sudo docker images -f "dangling=true" -q)
sudo docker-compose down
sudo docker-compose rm
sudo docker-compose pull
sudo docker-compose build --no-cache
sudo docker-compose up -d --force-recreate