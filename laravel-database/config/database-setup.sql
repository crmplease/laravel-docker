DELETE FROM mysql.user WHERE User='';

DELETE FROM mysql.db WHERE Db LIKE 'test%';

UPDATE mysql.user SET password = password('password') WHERE user = 'root';

DROP DATABASE IF EXISTS test;

CREATE DATABASE IF NOT EXISTS forge;

CREATE USER 'forge'@'localhost';

GRANT ALL PRIVILEGES ON *.* TO 'forge'@'localhost' WITH GRANT OPTION;

CREATE USER 'forge'@'%';

GRANT ALL PRIVILEGES ON *.* TO 'forge'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;