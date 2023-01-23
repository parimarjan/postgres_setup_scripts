#!/usr/bin/env bash

sudo apt-get update
sudo apt install --assume-yes vim python3-pip cmake
echo "source ~/.bashrc_exports" >> ~/.bashrc

sudo apt install --assume-yes sysstat

#cd ~/
#git clone https://github.com/parimarjan/learned-cardinalities.git
#cd learned-cardinalities
#pip3 install -r requirements_rt.txt

cd ~/
git clone https://github.com/parimarjan/LatencyCollector.git
cd LatencyCollector
pip3 install -r requirements.txt

cd ~/
mkdir -p payload/results
sar -A -o payload/results/sar.log 10 2400 >/dev/null 2>&1 &
