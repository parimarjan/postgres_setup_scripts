#!/usr/bin/env bash

sudo apt update
sudo apt --assume-yes install vim python3-pip cmake
echo "source ~/.bashrc_exports" >> ~/.bashrc

sudo apt --assume-yes install sysstat
sudo apt --assume-yes install stress-ng
sudo apt -y install zstd python3-pip m4 cmake clang libboost-all-dev
sudo apt -y install libhdf5-10 libhdf5-serial-dev libhdf5-dev libhdf5-cpp-11 libhdf5-serial-dev libhdf5-dev libhdf5-cpp-11
sudo apt -y install build-essential autoconf automake libpcre3-dev libevent-dev pkg-config zlib1g-dev libssl-dev
sudo apt -y install python3-virtualenv
sudo apt -y install redis-server
sudo apt -y install bonnie++
sudo apt -y install postgresql-client-common
redis-server &

sudo apt --assume-yes install autoconf
sudo apt --assume-yes install fio
sudo apt --assume-yes install build-essential libssl-dev libz-dev libsqlite3-dev libcurl4-gnutls-dev libdaemon-dev automake autoconf pkg-config libtool libcppunit-dev libnl-3-dev libnl-cli-3-dev libnl-genl-3-dev libnl-nf-3-dev libnl-route-3-dev libarchive-dev libarchive-dev
sudo apt --assume-yes install build-essential autoconf automake libpcre3-dev libevent-dev pkg-config zlib1g-dev libssl-dev

export CPATH="/usr/include/hdf5/serial/"

touch ~/.bashrc_exports
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install linux-tools-common linux-tools-aws linux-tools-5.15.0-1028-aws
sudo sh -c 'echo -1 >/proc/sys/kernel/perf_event_paranoid'
sudo sh -c 'echo 0 > /proc/sys/kernel/kptr_restrict'

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env

mkdir -p ~/log
mkdir -p ~/log/results/
mkdir -p ~/log/results/perf

#cd ~/
#git clone https://github.com/parimarjan/learned-cardinalities.git
#cd learned-cardinalities
#pip3 install -r requirements_rt.txt
pip3 install networkx
pip3 install torch
pip3 install numpy matplotlib
pip3 install pandas
pip3 install scipy
pip3 install psutil
pip3 install scipy
pip3 install scikit-learn
pip3 install nltk

cd ~/
git clone https://github.com/parimarjan/LatencyCollector.git
cd LatencyCollector
pip3 install -r requirements.txt

cd ~/
mkdir -p payload/results
sar -A -o payload/results/sar.log 10 24000 >/dev/null 2>&1 &

## for avoiding restart interactive notifications
sudo sed -i "/#\$nrconf{restart} = 'i';/s/.*/\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf

## for finding postgresql binaries later on
export PATH=$PATH:/home/ubuntu/build/bin
