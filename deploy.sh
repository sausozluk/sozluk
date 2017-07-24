#!/usr/bin/env bash
sudo docker rmi -f $(sudo docker images -f "dangling=true" -q)
sudo docker-compose pull
sudo docker-compose up -d --build