#!/bin/bash

# Set these values to your database details
DB_NAME=$1

# Fetch the list of tables from the database
#TABLES=$(psql -h $DB_HOST -U $DB_USER -p $DB_PORT -d $DB_NAME -t -c "SELECT tablename FROM pg_tables WHERE schemaname = 'public';")

TABLES=$(psql -d $DB_NAME -t -c "SELECT tablename FROM pg_tables WHERE schemaname = 'public';")

for table in $TABLES; do
	echo "Exporting $table"
	psql -d $DB_NAME -c "\COPY $table TO '$table.csv' WITH CSV HEADER;"
done

