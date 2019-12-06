#./disk_setup.sh
echo "disk setup done"
sleep 3
./bootstrap.sh
echo "bootstrap done"
sleep 3
./pg_setup.sh
echo "postgres setup done"
sleep 1
#pg_ctl -D $PG_DATA_DIR -l logfile start
echo "started postgres"

createdb test
sleep 3
psql -d test < gen1.sql
sleep 3

./pg_hint_setup.sh

#sleep 3
./imdb_setup.sh
cp ~/setup_aws/postgresql.conf $PG_DATA_DIR/
