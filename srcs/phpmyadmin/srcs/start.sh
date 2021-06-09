#!/bin/bash
#rc-status
#touch /run/openrc/softlevel
#rc-service nginx start
#rc-service sshd start

#ssh-keygen -A
#/usr/bin/supervisord -c /etc/supervisord.conf
rc-status
touch /run/openrc/softlevel
/etc/init.d/nginx start
/etc/init.d/php-fpm7 start
#nginx -g 'daemon off;'
