#!/bin/bash
cd ~/drsearch/;git status; git stash; git pull ;cd ~/nginx-certbot/; docker-compose -f medrdr.yml down; docker-compose -f medrdr.yml up -d; tail -f ~/drsearch/storage/logs/laravel-$(date +%F).log
cd ~/nginx-certbot
docker-compose down
docker-compose -f ~/nginx-certbot/medrdr.yml down 
cd ~/drsearch/
git status
git add .

git stash
git pull 
#rsync -ahvr --exclude=storage --exclude=vendor --exclude=debugbar --exclude=bootstrap ~/doctorssearch/* ~/drsearch/
cd ~/nginx-certbot
docker-compose  -f ~/nginx-certbot/medrdr.yml up -d
docker-compose  -f ~/nginx-certbot/medrdr.yml exec laravel.test composer update
docker-compose  -f ~/nginx-certbot/medrdr.yml exec laravel.test php artisan migrate
docker-compose  -f ~/nginx-certbot/medrdr.yml up -d
chown -R 33:33 ~/drsearch/storage/
docker-compose up -d
