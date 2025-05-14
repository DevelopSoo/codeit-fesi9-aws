#!/bin/bash 

echo "------------ 어플리케이션 배포 시작 ------------"
cd /home/ubuntu/codeit-fesi9-aws
npm ci
pm2 kill
pm2 start npm --name "nextjs-app" -- start

echo "------------ 어플리케이션 배포 완료 ------------"