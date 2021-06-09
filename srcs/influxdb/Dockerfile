FROM alpine:3.12.3

RUN apk update \
&& 	apk upgrade \
&& 	apk add --no-cache openrc \
    bash \
    vim \
    influxdb \
    curl \
    supervisor \
  	telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
 &&	mkdir -p /etc/influxdb

COPY ./srcs/influxdb.conf ./
COPY ./srcs/telegraf.conf /etc/
COPY ./srcs/supervisord.conf /etc/supervisord.conf

EXPOSE 8086

CMD ["/usr/bin/supervisord"]