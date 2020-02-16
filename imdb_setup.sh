source ~/.bashrc
initdb -D $PG_DATA_DIR
#cp ./postgresql.conf $PG_DATA_DIR/
pg_ctl -D $PG_DATA_DIR -l logfile stop
pg_ctl -D $PG_DATA_DIR -l logfile start
createdb imdb
wget -O pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar
tar xfv pg_imdb.tar -C ./
pg_restore -v -d imdb -j 32 ./pg_imdb
