wget http://homepages.cwi.nl/~boncz/job/imdb.tgz
tar -xvf imdb.tgz
mkdir -p csv_files
mv *.csv csv_files/

#mysql -u root < schematext.sql
#bash my_load.sh
#mysql -u root -D imdb < create_indexes.sql


