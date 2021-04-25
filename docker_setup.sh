#!/usr/bin/env bash

sudo apt-get install docker.io

sudo mv /var/lib/docker /pgfs/
sudo ln -s /pgfs/docker/ /var/lib/docker
sudo systemctl restart docker

cd docker
export LCARD_USER=ubuntu
export LCARD_PORT=5433

sudo docker build --build-arg LCARD_USER=${LCARD_USER} -t pg12 .  
sudo docker run --memory "512mb" --name card-db -p ${LCARD_PORT}:5432 -d pg12

sudo docker restart card-db
sudo docker exec -it card-db /imdb_setup.sh



