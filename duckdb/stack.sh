
wget -O stack_csvs.tar.gz https://www.dropbox.com/scl/fi/9pf3z3jpvqr8i2kj2m5uo/stack_csvs.tar.gz?rlkey=mu5xofmuyfropopxr99bjjph5&dl=1
tar -xvf stack_csvs.tar.gz
./duckdb/create_duckdb.sh stack_csvs/ stack.duckdb
#./duckdb/create_duckdb.sh stack_csvs_debug/ stack_debug.duckdb
