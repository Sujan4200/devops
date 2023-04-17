#!/bin/bash
######################################################################
##
##   MySQL Database Backup Script (in Docker)
##   Written By: Ankit Ojha
##   URL: https://ankitojha.com.np
##   Update on: Apr 17, 2023
##
######################################################################

CONTAINER=$(docker ps | grep mysql | cut -d " " -f 1)
docker exec -t $CONTAINER sh -c 'rm -f /tmp/*.sql.gz'
docker exec -t $CONTAINER sh -c 'mysqldump -u <userName> -p'<password>' <dbName> | gzip > /tmp/<dbName>-`date +%Y-%m-%d`.sql.gz'
docker cp $CONTAINER:/tmp/<dbName>-`date +%Y-%m-%d`.sql.gz /app/backup/sqlbackup


find /app/backup/sqlbackup -type f -mtime +30 -delete
