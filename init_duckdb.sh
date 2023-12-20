#./disk_setup.sh
#echo "disk setup done"
sleep 3
./bootstrap.sh
echo "bootstrap done"
./bootstrap_shell.sh
echo "bootstrap done"

pip3 install duckdb

cd ~/
git clone https://github.com/duckdb/duckdb.git
cd duckdb
git checkout v0.8.1
make -j2

echo "export PATH=$PATH:/home/ubuntu/duckdb/build/release" >> ~/.bashrc
source ~/.bashrc

cd ~/postgres_setup_scripts

bash duckdb/imdb.sh
bash duckdb/tpch.sh

#bash duckdb/stack.sh
