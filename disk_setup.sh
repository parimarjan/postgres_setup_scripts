#!/usr/bin/env bash

## mounts /data/ on instance based ssd storage
echo 'type=83' | sudo sfdisk /dev/nvme0n1
sleep 3
sudo mkfs.ext4 /dev/nvme0n1p1
sudo mkdir -p /data/
sudo mount /dev/nvme0n1p1 /data
sudo chown $USER /data/

