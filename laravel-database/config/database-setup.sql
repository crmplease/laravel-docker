DELETE FROM mysql.user WHERE User='';

DELETE FROM mysql.db WHERE Db LIKE 'test%';

DROP DATABASE IF EXISTS test;

UPDATE mysql.user SET password = password('password') WHERE user = 'root';

CREATE USER 'docker'@'localhost' IDENTIFIED BY 'docker';

GRANT ALL PRIVILEGES ON *.* TO 'docker'@'localhost' WITH GRANT OPTION;

CREATE USER 'docker'@'%' IDENTIFIED BY 'docker';

GRANT ALL PRIVILEGES ON *.* TO 'docker'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;