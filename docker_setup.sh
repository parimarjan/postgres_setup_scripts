#!/usr/bin/env bash

sudo apt-get install --assume-yes docker.io

sudo mv /var/lib/docker /pgfs/
sudo ln -s /pgfs/docker/ /var/lib/docker
sudo systemctl restart docker

cd docker
bash install.sh 512mb



