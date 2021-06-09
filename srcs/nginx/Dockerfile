FROM alpine:3.12.3

RUN apk update && apk upgrade && apk add --no-cache openrc \
    bash \
    nginx \
    vim \
    openssl \
    supervisor \
    openssh \
    telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

RUN mkdir -p /run/nginx && mkdir -p /etc/ssl

COPY ./srcs/default.conf /etc/nginx/conf.d/default.conf
COPY ./srcs/word.crt /etc/ssl/word.crt
COPY ./srcs/word.key /etc/ssl/word.key
COPY ./srcs/telegraf.conf /etc/
COPY ./srcs/start.sh ./
COPY ./srcs/supervisord.conf /etc/supervisord.conf
COPY ./srcs/index.html /www/

RUN chmod 755 ./start.sh

EXPOSE 80 443 22 9090
CMD ["sh", "./start.sh"]
