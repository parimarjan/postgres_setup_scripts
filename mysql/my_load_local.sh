

mysql -u ubuntu -e "CREATE DATABASE imdb;"
mysql -u ubuntu -D imdb --local-infile=1 < schematext2.sql
mysql -u ubuntu -D imdb --local-infile=1 < test.sql
mysql -u ubuntu -D imdb --local-infile=1 < create_indexes.sql
