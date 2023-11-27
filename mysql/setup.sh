#!/bin/bash

sudo apt install mysql-server
sudo service mysql start

# Login to MySQL as root using auth_socket
sudo mysql -u root <<MYSQL_SCRIPT
CREATE USER 'ubuntu'@'localhost' IDENTIFIED WITH 'auth_socket';
GRANT ALL PRIVILEGES ON *.* TO 'ubuntu'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "MySQL user 'ubuntu'@'localhost' created with all privileges."

