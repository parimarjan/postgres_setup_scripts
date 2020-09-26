createdb so
#wget -O pg_imdb.tar cs.brandeis.edu/~rcmarcus/pg_imdb.tar
wget -O so_pg12 https://www.dropbox.com/s/q66sw2k6fnugsse/so_pg12?dl=1
#tar xfv payload/so_pg12.tar -C ./
pg_restore -v -d so ./so_pg12
