FROM alpine:3.12.3

RUN apk update \
&& 	apk upgrade \
&& 	apk add --no-cache openrc \
    bash \
    vim \
    supervisor \
  	telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

COPY ./srcs/telegraf.conf /etc/
COPY ./srcs/supervisord.conf /etc/supervisord.conf
COPY ./srcs/grafana.db /grafana-7.3.2/data/

RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.3.2.linux-amd64.tar.gz \
&& 	wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
&& 	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk \
&&	tar -xvf grafana-enterprise-7.3.2.linux-amd64.tar.gz \
&& 	apk add glibc-2.32-r0.apk \
	telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
&&	rm -rf glibc-2.32-r0.apk grafana-enterprise-7.3.2.linux-amd64.tar.gz

EXPOSE 3000
WORKDIR /grafana-7.3.2/bin/
CMD ["/usr/bin/supervisord"]
