rc-status
touch /run/openrc/softlevel
/etc/init.d/sshd start
/etc/init.d/sshd stop
ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
adduser -D user
echo "user:password" | chpasswd
echo "Port 22" >> /etc/ssh/ssh_config
/usr/bin/supervisord