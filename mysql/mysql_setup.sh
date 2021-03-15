
sudo apt-get update
sudo apt install libssl-dev libzstd-dev libncurses5-dev libreadline-dev bison pkg-config
sudo apt-get install build-essential
sudo apt install libmysqlclient-dev

# install our forked version of mysql
cd /pgfs/
git clone https://github.com/parimarjan/mysql-server.git
cd mysql-server
mkdir -p debug
cd debug
rm ../CMakeCache.txt
cmake .. -DWITH_DEBUG=1 -DDOWNLOAD_BOOST=1 -DWITH_BOOST=~/boost_1_69_0
make -j 2


echo "export PATH=\$PATH:/pgfs/mysql-server/debug/bin" >> ~/.bashrc
pip3 install mysqlclient

# add to PATH maybe
cd bin
./mysqld --initialize-insecure
./mysqld &
echo "started mysqld, going to sleep to let it start"
sleep 5
