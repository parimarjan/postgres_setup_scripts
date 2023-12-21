#!/bin/bash

# Check if the CSV directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <csv_directory>"
    exit 1
fi

# CSV directory and Database configuration
CSV_DIR="$1"
DB_NAME=$(basename "$CSV_DIR")

# MySQL user credentials
MYSQL_USER="ubuntu"
MYSQL_PWD="password"

# Export MySQL password as an environment variable
export MYSQL_PWD

# Commands to run before loading CSV files
PRELOAD_COMMANDS="
SET GLOBAL local_infile=1;
SET unique_checks=0;
SET foreign_key_checks=0;
SET sql_log_bin=0;
SET autocommit=0;
START TRANSACTION;
"

# Apply pre-load settings
mysql -u $MYSQL_USER --local-infile=1 -e "$PRELOAD_COMMANDS" $DB_NAME

# Load each CSV file in the directory into the MySQL database
for file in "$CSV_DIR"/*.csv; do
    TABLE_NAME=$(basename "$file" .csv)
    mysql -u $MYSQL_USER --local-infile=1 -e "LOAD DATA LOCAL INFILE '$file' INTO TABLE $TABLE_NAME FIELDS TERMINATED BY ',';" $DB_NAME
done

# Commit the transaction
mysql -u $MYSQL_USER -e "COMMIT;" $DB_NAME

