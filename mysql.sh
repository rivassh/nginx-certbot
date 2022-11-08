#!/bin/bash
for i in {1..3}
do
	echo $i;
	sleep 20;
cd ~/nginx-certbot/;docker-compose  -f ~/nginx-certbot/medrdr.yml ps|grep Exit
if [ $? -eq 0 ]
then
cd ~/nginx-certbot/;docker-compose  -f ~/nginx-certbot/medrdr.yml up -d	
fi
done
