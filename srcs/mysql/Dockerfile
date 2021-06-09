FROM alpine:3.12.3

RUN apk update \
&&  apk upgrade \
&&  mkdir -p /run/mysqld \
&&  apk add openrc \
    bash \
    mariadb \
    mariadb-client \
    supervisor \
    telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
    && rm -rf /var/cache/apk/*

COPY ./srcs/my.cnf /etc/my.cnf
COPY ./srcs/mysql.sql ./
COPY ./srcs/wordpress.sql ./
COPY ./srcs/startup.sh /startup.sh
COPY ./srcs/telegraf.conf /etc/
COPY ./srcs/supervisord.conf /etc/supervisord.conf

EXPOSE 3306
RUN chmod 755 startup.sh
CMD ["/startup.sh"]
