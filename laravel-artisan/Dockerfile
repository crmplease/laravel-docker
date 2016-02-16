FROM dylanlindgren/docker-phpcli:latest

MAINTAINER "Aleksey Sidoryak" <a@sidoryak.ru>

RUN apt-get update -y && \
    apt-get install -y \
    php5-mcrypt \
    php5-mysql \
    php5-gd

WORKDIR /data

ENTRYPOINT ["php", "artisan"]
