

mysql -u ubuntu -D imdb --local-infile=1 < mysql/schematext2.sql
mysql -u ubuntu -D imdb --local-infile=1 < mysql/test.sql
mysql -u ubuntu -D imdb --local-infile=1 < mysql/create_indexes.sql
