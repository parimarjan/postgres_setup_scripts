
#mysql -u ubuntu -D imdb -ppassword --local-infile=1 < mysql/schematext2.sql
#mysql -u ubuntu -D imdb -ppassword --local-infile=1 < mysql/test.sql
#mysql -u ubuntu -D imdb -ppassword --local-infile=1 < mysql/create_indexes.sql

mysql -u ubuntu -e "CREATE DATABASE imdb;"
mysql -u ubuntu -D imdb --local-infile=1 < schematext2.sql
mysql -u ubuntu -D imdb --local-infile=1 < test.sql
mysql -u ubuntu -D imdb --local-infile=1 < create_indexes.sql
