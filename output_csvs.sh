#!/bin/bash

# Set these values to your database details
DB_NAME=$1
#DB_USER="your_db_user"
#DB_PASSWORD="your_db_password"
#DB_HOST="localhost"
#DB_PORT="5432"

# Export the PGPASSWORD so you don't get prompted for the password each time
#export PGPASSWORD=$DB_PASSWORD

# Fetch the list of tables from the database
#TABLES=$(psql -h $DB_HOST -U $DB_USER -p $DB_PORT -d $DB_NAME -t -c "SELECT tablename FROM pg_tables WHERE schemaname = 'public';")
TABLES=$(psql -d $DB_NAME -t -c "SELECT tablename FROM pg_tables WHERE schemaname = 'public';")

for table in $TABLES; do
	echo "Exporting $table"
	        #psql -h $DB_HOST -U $DB_USER -p $DB_PORT -d $DB_NAME -c "\COPY $table TO '$table.csv' WITH CSV HEADER;"
	psql -d $DB_NAME -c "\COPY $table TO '$table.csv' WITH CSV HEADER;"
done

# Unset the PGPASSWORD
#unset PGPASSWORD
