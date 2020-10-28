#! /bin/bash
# This is a auto backup script for KIC2
mkdir /home/backup
cp -r /var/www/html  /home/backup
tar -zcPvf /home/backup$(date +%Y%m%d).tar.gz /home/backup
rm -rf /home/backup
find ./ -mtime +30 -name "*.tar.gz" -exec rm -rf {} \;