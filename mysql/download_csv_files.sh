wget http://homepages.cwi.nl/~boncz/job/imdb.tgz
tar -xvf imdb.tgz
mkdir -p csv_files
mv *.csv csv_files/

/pgfs/mysql-server/debug/bin/mysql -u root < schematext2.sql
bash my_load.sh
/pgfs/mysql-server/debug/bin/mysql -u root -D imdb < create_indexes.sql


