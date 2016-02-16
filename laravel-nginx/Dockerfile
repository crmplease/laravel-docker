FROM debian:jessie

MAINTAINER "Aleksey Sidoryak" <a@sidoryak.ru>

# Install Nginx
RUN apt-get update -y && \
    apt-get install -y nginx

# Apply Nginx configuration
RUN rm /etc/nginx/sites-enabled/default
ADD config/nginx.conf /opt/etc/nginx.conf
ADD config/laravel /etc/nginx/sites-available/laravel
RUN ln -s /etc/nginx/sites-available/laravel /etc/nginx/sites-enabled/laravel

# Nginx startup script
ADD config/nginx-start.sh /opt/bin/nginx-start.sh
RUN chmod u=rwx /opt/bin/nginx-start.sh

# PORTS
EXPOSE 80
EXPOSE 443

WORKDIR /opt/bin
ENTRYPOINT ["/opt/bin/nginx-start.sh"]
