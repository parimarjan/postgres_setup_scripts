
sudo apt-get update
sudo apt install libssl-dev libzstd-dev libncurses5-dev libreadline-dev bison pkg-config
sudo apt-get install build-essential
sudo apt install libmysqlclient-dev

# install our forked version of mysql
#git clone https://github.com/parimarjan/mysql-server.git

cd ~/mysql-server
mkdir -p debug
cd debug
rm ../CMakeCache.txt
cmake .. -DWITH_DEBUG=1 -DDOWNLOAD_BOOST=1 -DWITH_BOOST=~/boost_1_69_0
make -j 8

cd ../mysql-test
./mysql-test-run.pl select_all

pip3 install mysqlclient

