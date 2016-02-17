#!/bin/bash

# if the /data/storage/database directory doesn't contain anything, then initialise it
MYSQL_DIR="/data/storage/database"
MYSQL_DATA_DIR="${MYSQL_DIR}/data"

if [ ! -d "${MYSQL_DIR}" ]; then
    mkdir -p "${MYSQL_DIR}"
fi

if [ ! "$(ls -A ${MYSQL_DIR})" ]; then
    /usr/bin/mysql_install_db --datadir=${MYSQL_DATA_DIR} --user=mysql
    /usr/bin/mysqld_safe --init-file=/opt/bin/database-setup.sql
else
    /usr/bin/mysqld_safe
fi
