
wget -O stack_csvs.tar.gz
tar -xvf stack_csvs.tar.gz
./duckdb/create_duckdb.sh stack_csvs stack.duckdb
