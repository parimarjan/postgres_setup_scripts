#!/usr/bin/env bash

MBSIZE=$1
sudo apt-get install --assume-yes docker.io

sudo mv /var/lib/docker /pgfs/
sudo ln -s /pgfs/docker/ /var/lib/docker
sudo systemctl restart docker

cd docker
bash install.sh $MBSIZE



