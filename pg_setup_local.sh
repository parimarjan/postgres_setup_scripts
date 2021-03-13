#!/usr/bin/env bash

# installs postgres locally, and sets up environment variables appropriately

#cd ~/
#INSTALL_DIR=$HOME/lib/
#mkdir -p $HOME/lib
#echo "installing at " $INSTALL_DIR

#sudo apt-get --assume-yes install libreadline-dev zlib1g-dev flex bison-devel \
  #zlib-devel openssl-devel wget
#sudo apt-get --assume-yes install build-essential libreadline-dev zlib1g-dev \
#flex bison libxml2-dev libxslt-dev libssl-dev

#git clone https://github.com/postgres/postgres.git
#cd postgres
#git checkout REL_12_STABLE
#./configure prefix=$INSTALL_DIR
#make -j 32
#make install -j 32
#echo "export PG_DATA_DIR=${HOME}/pg_data_dir" >> ~/.bashrc_exports
#echo "export PATH=${INSTALL_DIR}/bin:\$PATH" >> ~/.bashrc_exports

initdb -D $PG_DATA_DIR
cp ./postgresql.conf $PG_DATA_DIR/
pg_ctl -D $PG_DATA_DIR -l logfile restart

createdb imdb
wget -O pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar
tar xfv pg_imdb.tar -C ./
pg_restore -v -d imdb ./pg_imdb
sudo apt install postgresql-client-common
