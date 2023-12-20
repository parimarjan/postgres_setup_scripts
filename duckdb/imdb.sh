
wget -O imdb_csvs.tar.gz "https://www.dropbox.com/scl/fi/mqhcuirgjdtwjxy4mh1ta/imdb_csvs.tar.gz?rlkey=or6n4phmcgbxntagj7uf3nbhp&dl=1" && tar -xvf imdb_csvs.tar.gz

#wget -O imdb_csvs.tar.gz https://www.dropbox.com/scl/fi/mqhcuirgjdtwjxy4mh1ta/imdb_csvs.tar.gz?rlkey=or6n4phmcgbxntagj7uf3nbhp&dl=1
#tar -xvf imdb_csvs.tar.gz
./duckdb/create_duckdb.sh ./imdb_csvs/ imdb.duckdb

