FROM dylanlindgren/docker-phpcli:latest

MAINTAINER "Aleksey Sidoryak" <a@sidoryak.ru>

RUN apt-get update -y && \
    apt-get install -y \
    php5-mcrypt \
    php5-mysql \
    php5-gd

RUN usermod -u 1000 www-data && \
    groupmod -g 1000 www-data

USER 1000

WORKDIR /data

ENTRYPOINT ["php", "artisan"]
