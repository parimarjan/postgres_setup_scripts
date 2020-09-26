#!/usr/bin/env bash

diskname=$(lsblk | grep 139 | cut -f 1 -d " ")
sudo rm -rf /pgfs
sudo mkdir -m 777 /pgfs
sudo mkfs -F -t ext4 /dev/$diskname
sudo mount /dev/$diskname /pgfs
sudo chmod 777 /pgfs/
sudo chown $USER /pgfs/
