createdb so
#wget -O pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar

tar xfv payload/so_pg12.tar -C ./
pg_restore -v -d so ./so_pg12
