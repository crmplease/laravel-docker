#!/bin/bash
cp /opt/etc/nginx.conf /etc/nginx/nginx.conf
# sed -i "s/%fpm-ip%/$FPM_PORT_9000_TCP_ADDR/" /etc/nginx/nginx.conf

NGINX_LOG_DIR="/data/storage/logs/nginx"
if [ ! "$(ls -A $NGINX_LOG_DIR)" ]; then
    mkdir -p ${NGINX_LOG_DIR}
    chown www-data:www-data -R ${NGINX_LOG_DIR}
fi

exec /usr/sbin/nginx
