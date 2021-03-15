#!/usr/bin/env bash

sudo apt-get update
sudo apt install --assume-yes vim python3-pip cmake

# setup query-optimizer repo
#cd ~/
#git clone https://github.com/parimarjan/query-optimizer.git
#echo "export QUERY_OPT_PATH=/home/ubuntu/query-optimizer" >> ~/.bashrc_exports

#git clone https://github.com/park-project/park.git ~/park
#cd ~/park
#git checkout cardinalities

#cd ~/
#git clone https://github.com/hongzimao/gcn_pytorch.git ~/gcn_pytorch
#echo "export PYTHONPATH=\$PYTHONPATH:/home/ubuntu/park/:/home/ubuntu/gcn_pytorch" >> ~/.bashrc_exports

cd ~/
git clone https://github.com/parimarjan/learned-cardinalities.git
cd learned-cardinalities
pip3 install -r requirements_rt.txt

#echo "export PGM_DIR=/home/ubuntu/learned-cardinalities/pgm/cpp/" >> ~/.bashrc_exports

#cd ~/
#git clone https://github.com/parimarjan/sql_representation.git
#echo "export PYTHONPATH=\$PYTHONPATH:/home/ubuntu/park/:/home/ubuntu/sql_representation/" >> ~/.bashrc_exports

#cd ~/postgres_setup_scripts
#tar -xvf ./queries.tar.gz
#mv ./queries ~/learned-cardinalities/

# TMP: just stuff for personal use
#cd ~/
#git clone https://github.com/parimarjan/configs.git
#cd configs
#sh setup.sh
#cd ..
#echo "export PYTHONPATH=\$PYTHONPATH:/home/ubuntu/learned-cardinalities/pgm/python" >> ~/.bashrc_exports
#echo "export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:/home/ubuntu/learned-cardinalities/pgm/cpp" >> ~/.bashrc_exports
