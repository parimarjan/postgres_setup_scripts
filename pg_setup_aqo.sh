#!/usr/bin/env bash

## installs postgres, and sets up environment variables appropriately

echo "export PG_DATA_DIR=/data/pg_data_dir" >> ~/.bashrc
echo "export PGPORT=5433" >> ~/.bashrc
echo "export PG_BUILD_DIR=/data/build" >> ~/.bashrc

# also, set these for the current run
export PG_DATA_DIR=/data/pg_data_dir
export PGPORT=5433
export PG_BUILD_DIR=/data/build

# clone postgres, and checkout appropriate branch
cd /data/
git clone https://github.com/postgres/postgres.git
cd postgres
git checkout REL_12_STABLE

sudo apt-get --assume-yes install libreadline-dev zlib1g-dev bison flex
./configure --enable-cassert --enable-debug --prefix $PG_BUILD_DIR CFLAGS="-ggdb -Og -g3 -fno-omit-frame-pointer"

# get our aqo version
#git clone https://github.com/parimarjan/aqo.git contrib/aqo
#cd contrib/aqo
#git checkout stable12
#cd /data/postgres

# apply patch
#patch -p1 --no-backup-if-mismatch < contrib/aqo/aqo_pg12.patch

# now we can compile postgres (just need to do this first time we're linking
# with aqo)
cd /data/postgres
make -j4 -s
make install -j4 -s

# compile aqo
#cd contrib/aqo
#make -j4 -s
#make install -j4 -s

echo "export PG_BUILD_DIR=/data/build" >> ~/.bashrc
echo "alias startpg=\"$PG_BUILD_DIR/bin/postgres -D $PG_DATA_DIR -p $PGPORT\"" >> ~/.bashrc
echo "export PATH=$PG_BUILD_DIR/bin:$PATH" >> ~/.bashrc
export PATH=$PG_BUILD_DIR/bin:$PATH
$PG_BUILD_DIR/bin/initdb -D $PG_DATA_DIR

# TODO: need to add extension aqo to psql, and modify the postgresql.conf file
#cp ~/setup_aws/postgresql.conf $PG_DATA_DIR/
source ~/.bashrc
