#!/bin/bash
cp /etc/resolvshecan.conf /etc/resolv.conf
#cd ~/drsearch/;git status; git stash; git pull ;cd ~/nginx-certbot/; docker-compose -f medrdr.yml down; docker-compose -f medrdr.yml up -d; tail -f ~/drsearch/storage/logs/laravel-$(date +%F).log
cd ~/nginx-certbot
docker-compose down
docker-compose -f ~/nginx-certbot/medrdr.yml down 
cd ~/drsearch/

