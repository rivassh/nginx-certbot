#!/bin/bash
cp /etc/resolvshecan.conf /etc/resolv.conf
#cd ~/drsearch/;git status; git stash; git pull ;cd ~/nginx-certbot/; docker-compose -f medrdr.yml down; docker-compose -f medrdr.yml up -d; tail -f ~/drsearch/storage/logs/laravel-$(date +%F).log
cd ~/nginx-certbot
docker-compose down
docker-compose -f ~/nginx-certbot/medrdr.yml down 
cd ~/drsearch/

DB::unprepared("
        insert into bots
        (md5,created_at,updated_at,name)
        select visits.md5,now(),now(),agent from visits
        left join bots on bots.md5 = visits.md5
        where (

ekkkkkkkkkkkkkkkkkkhkjjhhhhhhRstatementagent like '%bot%'
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

        or agent like '%mj12bot%'
        or agent like '%comsys%'
        or agent like '%bing.com%'
        or agent like '%uptimerobot.com%'
        or agent in ('Mozilla/5.0 zgrab/0.x','Cloudflare-SSLDetector','ALittle Client','downnotifier.com monitoring','Python/3.10 aiohttp/3.8.3'
  
  :q
  ,'Go-http-client/1.1','Zeno'
        )
        or agent like '%censys%' or agent like '%internet-measurement%' or agent like '%curl/%'
        

:q	SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
exit
) and bots.md5 is null
        
	group by md5
        ")qql[et global sql_mode = '';
	exit
	;5D~/ng	
	:q
	ysql 
	show variables;
	#git status
