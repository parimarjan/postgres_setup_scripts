#!/usr/bin/env bash

sudo apt-get update
sudo apt install --assume-yes vim python3-pip cmake
echo "source ~/.bashrc_exports" >> ~/.bashrc

sudo apt install --assume-yes sysstat
sudo apt install -y --assume-yes stress-ng

touch ~/.bashrc_exports
sudo apt-get update
sudo apt-get install --assume-yes linux-tools-common linux-tools-aws linux-tools-5.15.0-1028-aws

## for perf stats
sudo sh -c 'echo 1 >/proc/sys/kernel/perf_event_paranoid'
sudo sh -c 'echo 0 > /proc/sys/kernel/kptr_restrict'

mkdir -p ~/log
mkdir -p ~/log/results/
mkdir -p ~/log/results/perf

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

## sar systat records sytem logs
sar -A -o payload/results/sar.log 10 24000 >/dev/null 2>&1 &

git clone https://github.com/parimarjan/interbench.git
cd interbench
make

cd ~/
