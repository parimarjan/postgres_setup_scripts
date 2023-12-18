sleep 3
./bootstrap.sh
echo "bootstrap done"
./bootstrap_shell.sh

sudo apt-get update
sudo apt install --assume-yes libssl-dev libzstd-dev libncurses5-dev libreadline-dev bison pkg-config
sudo apt-get install --assume-yes build-essential

sudo apt install --assume-yes libmysqlclient-dev
sudo apt install --assume-yes mysql-server

pip3 install mysqlclient
pip3 install mysql-connector
sudo systemctl start mysql

#echo "export PATH=$PATH:/home/ubuntu/duckdb/build/release" >> ~/.bashrc
#source ~/.bashrc

cd ~/postgres_setup_scripts

# handl auth etc.

sudo mysql -u root <<MYSQL_SCRIPT
CREATE USER 'ubuntu'@'localhost' IDENTIFIED WITH 'auth_socket';
GRANT ALL PRIVILEGES ON *.* TO 'ubuntu'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "MySQL user 'ubuntu'@'localhost' created with all privileges."

# install
cd mysql
bash imdb.sh
bash my_load_local.sh
