#!/bin/sh

rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
mysql < mysql.sql
mysql -u root wordpress < wordpress.sql
/etc/init.d/mariadb stop
/usr/bin/supervisord
