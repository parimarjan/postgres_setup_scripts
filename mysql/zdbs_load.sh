
bash mysql/zdbs_download.sh

MYSQL_USER="ubuntu"
MYSQL_PWD="password"
export MYSQL_PWD=$MYSQL_PWD

mysql -u ubuntu -e "CREATE DATABASE financial;"
mysql -u $MYSQL_USER -D financial --local-infile=1 < mysql/zdbs/financial_schema.sql
bash mysql/mysql_load.sh zdb_csvs/financial

mysql -u ubuntu -e "CREATE DATABASE ssb;"
mysql -u $MYSQL_USER -D ssb --local-infile=1 < mysql/zdbs/ssb_schema.sql
echo "schema created"
bash mysql/mysql_load.sh zdb_csvs/ssb

mysql -u ubuntu -e "CREATE DATABASE ccs;"
mysql -u $MYSQL_USER -D ccs --local-infile=1 < mysql/zdbs/ccs_schema.sql
echo "schema created"
bash mysql/mysql_load.sh zdb_csvs/ccs

mysql -u ubuntu -e "CREATE DATABASE accidents;"
mysql -u $MYSQL_USER -D accidents --local-infile=1 < mysql/zdbs/accidents_schema.sql
echo "schema created"
bash mysql/mysql_load.sh zdb_csvs/accidents

mysql -u ubuntu -e "CREATE DATABASE credit;"
mysql -u $MYSQL_USER -D credit --local-infile=1 < mysql/zdbs/credit_schema.sql
echo "schema created"
bash mysql/mysql_load.sh zdb_csvs/credit


mysql -u ubuntu -e "CREATE DATABASE seznam;"
mysql -u $MYSQL_USER -D seznam --local-infile=1 < mysql/zdbs/seznam_schema.sql
echo "schema created"
bash mysql/mysql_load.sh zdb_csvs/seznam

mysql -u ubuntu -e "CREATE DATABASE basketball;"
mysql -u $MYSQL_USER -D basketball --local-infile=1 < mysql/zdbs/basketball_schema.sql
echo "schema created"
bash mysql/mysql_load.sh zdb_csvs/basketball

