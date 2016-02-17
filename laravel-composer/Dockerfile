FROM dylanlindgren/docker-phpcli:latest

MAINTAINER "Aleksey Sidoryak" <a@sidoryak.ru>

RUN apt-get update -y && apt-get install -y curl git php5-mcrypt php5-gd
RUN curl -sS https://getcomposer.org/installer | php 
RUN mv composer.phar /usr/local/bin/composer

RUN composer --version

WORKDIR /data

ENTRYPOINT ["php", "/usr/local/bin/composer"]
