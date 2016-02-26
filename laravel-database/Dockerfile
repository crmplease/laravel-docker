FROM debian:jessie

MAINTAINER "Aleksey Sidoryak" <a@sidoryak.ru>

# Install MySQL
RUN apt-get update -y
RUN echo "mysql-server-5.5 mysql-server/root_password password password" | debconf-set-selections
RUN echo "mysql-server-5.5 mysql-server/root_password_again password password" | debconf-set-selections
RUN apt-get install -y mysql-server-5.5

# Port 3306 is where MySQL listens on
EXPOSE 3306

# Configure MySQL
ADD config/my.cnf /etc/mysql/my.cnf

# These scripts will be used to launch MySQL and configure it
# securely if no data exists in /data/storage/database
ADD config/database-start.sh /opt/bin/database-start.sh 
ADD config/database-setup.sql /opt/bin/database-setup.sql

RUN chmod u=rwx /opt/bin/database-start.sh
RUN chown mysql:mysql /opt/bin/database-start.sh /opt/bin/database-setup.sql

USER mysql

ENTRYPOINT ["/opt/bin/database-start.sh"]

