#!/bin/bash
cd ~/drsearch/
git pull 
docker-compose  -f ~/nginx-certbot/medrdr.yml exec laravel.test composer dump 
docker-compose -f ~/nginx-certbot/medrdr.yml down 
cd ~/nginx-certbot
docker-compose  -f ~/nginx-certbot/medrdr.yml up -d
