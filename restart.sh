#!/bin/bash
cd ~/nginx-certbot
docker-compose down
docker-compose -f ~/nginx-certbot/medrdr.yml down 
docker-compose  -f ~/nginx-certbot/medrdr.yml up -d
docker-compose  -f ~/nginx-certbot/medrdr.yml exec laravel.test composer dump
docker-compose  -f ~/nginx-certbot/medrdr.yml exec laravel.test php artisan optimize
docker-compose  -f ~/nginx-certbot/medrdr.yml exec laravel.test php artisan view:cache
chown -R 33:33 ~/drsearch/storage/
docker-compose up -d
