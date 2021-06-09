FROM alpine:3.12.3

RUN apk update \
&&  apk upgrade \
&&  mkdir -p /run/nginx \
&&  mkdir -p /www \
&&  apk add nginx       php7-fpm      supervisor \
&&  rm -rf /var/cache/apk/*
RUN apk add php7        php7-fpm      php7-opcache \
            php7-gd     php7-mysqli   php7-zlib \
            php7-curl   php7-mbstring php7-json \
            php7-session
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xf latest.tar.gz && rm -rf latest.tar.gz &&  mv wordpress/* /www

COPY ./srcs/default.conf /etc/nginx/conf.d/default.conf
COPY ./srcs/supervisord.conf /etc/supervisord.conf
COPY ./srcs/wp-config.php /www
COPY ./srcs/telegraf.conf /etc/

EXPOSE 5050
CMD ["/usr/bin/supervisord"]
