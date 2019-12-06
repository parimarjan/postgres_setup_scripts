#!/usr/bin/env bash

## installs postgres, and sets up environment variables appropriately

echo "export PG_DATA_DIR=/data/pg_data_dir" >> ~/.bashrc
echo "export PGPORT=5432" >> ~/.bashrc
echo "export PG_BUILD_DIR=/data/build" >> ~/.bashrc

# also, set these for the current run
export PG_DATA_DIR=/data/pg_data_dir
export PGPORT=5432
export PG_BUILD_DIR=/data/build

# clone postgres, and checkout appropriate branch
cd /data/
git clone https://github.com/postgres/postgres.git
cd postgres
#git checkout REL_12_STABLE
git checkout REL_10_STABLE

sudo apt-get --assume-yes install libreadline-dev zlib1g-dev flex bison-devel \
  zlib-devel openssl-devel wget
sudo apt-get --assume-yes install build-essential libreadline-dev zlib1g-dev \
flex bison libxml2-dev libxslt-dev libssl-dev

./configure --enable-cassert --enable-debug --prefix $PG_BUILD_DIR CFLAGS="-ggdb -Og -g3 -fno-omit-frame-pointer"

# now we can compile postgres (just need to do this first time we're linking
# with aqo)
cd /data/postgres
make -j4 -s
make install -j4 -s

echo "export PG_BUILD_DIR=/data/build" >> ~/.bashrc
echo "alias startpg=\"$PG_BUILD_DIR/bin/postgres -D $PG_DATA_DIR -p $PGPORT\"" >> ~/.bashrc
echo "export PATH=$PG_BUILD_DIR/bin:$PATH" >> ~/.bashrc
export PATH=$PG_BUILD_DIR/bin:$PATH
$PG_BUILD_DIR/bin/initdb -D $PG_DATA_DIR

cp ~/setup_aws/postgresql.conf $PG_DATA_DIR/
#source ~/.bashrc

pg_ctl -D $PG_DATA_DIR -l logfile start
echo "started postgres"
