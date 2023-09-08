
#!/bin/bash

# Path to the directory containing the CSV files
CSV_DIR=$1

# Name of the DuckDB database file
DUCKDB_FILE=$2

for csv_file in $CSV_DIR*.csv; do
	echo $csv_file
	# Extract the table name from the CSV filename
	table_name=$(basename "$csv_file" .csv)

	echo "Processing $csv_file into table $table_name"

	# Use duckdb command line to create the table and import the CSV data
	duckdb "$DUCKDB_FILE" <<EOF
	CREATE TABLE "$table_name" AS SELECT * FROM READ_CSV_AUTO('$csv_file');
EOF
done
