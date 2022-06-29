#!/usr/bin/env bash

MBSIZE=$1
sudo apt-get install --assume-yes docker.io

sudo mv /var/lib/docker /pgfs/
sudo ln -s /pgfs/docker/ /var/lib/docker
sudo systemctl restart docker

#cd docker
#bash install.sh $MBSIZE
cd ~/
git clone https://github.com/Nathaniel-Han/End-to-End-CardEst-Benchmark.git
cd End-to-End-CardEst-Benchmark
bash benchmark_builder.sh
tar cvf postgres-13.1.tar.gz postgresql-13.1 && mv postgres-13.1.tar.gz dockerfile/
cd dockerfile
sudo docker build -t ceb .
rm -rf postgres-13.1.tar.gz


if [ $MBSIZE == "-1" ]
then
  sudo docker run --name card-db -p 5433:5432 -d ceb
else
  sudo docker run --memory $MBSIZE --name card-db -p 5433:5432 -d ceb
fi
#psql -d template1 -h localhost -U postgres

sleep 120
export PGPASSWORD=postgres
sleep 2
createdb stats -U postgres -p 5433 -h localhost
sleep 10
psql -d stats -U postgres -p 5433 -h localhost < datasets/stats_simplified/stats.sql
sleep 10
psql -d stats -U postgres -p 5433 -h localhost < scripts/sql/stats_load.sql
sleep 10
psql -d stats -U postgres -p 5433 -h localhost < scripts/sql/stats_index.sql


#template1=# create database stats
#template1=# \c stats
#stats=# \i datasets/stats_simplified/stats.sql
#stats=# \i scripts/sql/stats_load.sql
#stats=# \i scripts/sql/stats_index.sql



