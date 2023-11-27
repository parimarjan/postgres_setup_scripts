wget http://homepages.cwi.nl/~boncz/job/imdb.tgz
tar -xvf imdb.tgz
mkdir -p csv_files
mv *.csv csv_files/

/pgfs/mysql-server/debug/bin/mysql -u root < schematext2.sql
bash my_load.sh
/pgfs/mysql-server/debug/bin/mysql -u root -D imdb < change_storage.sql
/pgfs/mysql-server/debug/bin/mysql -u root -D imdb < create_indexes.sql
/pgfs/mysql-server/debug/bin/mysql =i root -D imdb < ../update_to1.sql


