FROM dylanlindgren/docker-phpcli:latest

MAINTAINER "Aleksey Sidoryak" <a@sidoryak.ru>

RUN apt-get update -y && apt-get install -y curl git php5-mcrypt php5-gd
RUN curl -sS https://getcomposer.org/installer | php 
RUN mv composer.phar /usr/local/bin/composer

RUN composer --version

RUN usermod -u 1000 www-data && \
    groupmod -g 1000 www-data

RUN mkdir -p /var/www

RUN chown www-data:www-data -R /var/www

USER 1000

WORKDIR /data

ENTRYPOINT ["php", "/usr/local/bin/composer"]
