FROM alpine:latest
MAINTAINER  Jason Viloria <jnvilo@gmail.com>

WORKDIR /volume
VOLUME /volume
COPY run.sh /run.sh

RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/run.sh"]
