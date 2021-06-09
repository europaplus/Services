FROM alpine:3.12.3

RUN apk update \
&&  apk upgrade \
&&  apk add vsftpd \
    bash \
    vim \
    openrc \
    supervisor \
    telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
    && rm -rf /var/cache/apk/*

COPY ./srcs/vsftpd.conf /etc/vsftpd/
COPY ./srcs/telegraf.conf /etc/
COPY ./srcs/vsftpd.pem /etc/ssl/private/
COPY ./srcs/supervisord.conf /etc/supervisord.conf

RUN adduser -D user
RUN echo "user:password" | chpasswd
RUN chown user:user /home/user

EXPOSE 21 21000

CMD ["/usr/bin/supervisord"]
