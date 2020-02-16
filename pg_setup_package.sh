#!/usr/bin/env bash

## installs postgres, and sets up environment variables appropriately

## FIXME: depends on where postgres gets installed
#sudo apt-get update
#sudo apt install --assume-yes postgresql
#echo "export PATH=\$PATH:/usr/lib/postgresql/10/bin/" >> ~/.bashrc
#echo "export PG_DATA_DIR=/data/pg_data_dir" >> ~/.bashrc

## for stuff in this shell script
#export PATH=$PATH:/usr/lib/postgresql/10/bin
#export PG_DATA_DIR=/data/pg_data_dir

#sudo pkill -f postgres

#initdb -D $PG_DATA_DIR

## before running psql
#sudo chown $USER /var/run/postgresql/

cp ./postgresql.conf $PG_DATA_DIR/
pg_ctl -D $PG_DATA_DIR -l logfile restart

createdb imdb
wget -O pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar
tar xfv pg_imdb.tar -C ./
pg_restore -v -d imdb ./pg_imdb

