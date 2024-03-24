#!/bin/bash
set -x
echo $(date) $1 > /mnt/data/tmp/date.result
mysql -u yoda mysql -e 'show databases' > /mnt/data/tmp/mysql.result
mysql -u yoda mysql -e 'select user from mysql.user' >> /mnt/data/tmp/mysql.result
mysql -u yoda mysql -e "ALTER USER sammy IDENTIFIED BY \"$1\" " >> /mnt/data/tmp/mysql.result
