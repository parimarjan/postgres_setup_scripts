DATABASE_NAME="imdb"
MYSQL_USER="ubuntu"
MYSQL_PASSWORD=""  # If there's no password

# Create the database
mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;"

# Loop through all CSV files in the current directory
for csv_file in *.csv; do
	    # Extract the filename without extension (assuming CSV file names match table names)
	        TABLE_NAME=$(basename "$csv_file" .csv)

		    # Read the header of the CSV
		        HEADER=$(head -n 1 "$csv_file")
			    IFS=',' read -ra COLS <<< "$HEADER"

    # Start the SQL command to create table
    SQL="USE $DATABASE_NAME; CREATE TABLE IF NOT EXISTS $TABLE_NAME ("

    # For each column in the header, add it to the SQL command
    for col in "${COLS[@]}"; do
        # For simplicity, making all columns VARCHAR(255). Modify as required.
        SQL="$SQL $col VARCHAR(255),"
    done

    # Remove trailing comma and close the parenthesis
    SQL=${SQL%,}
    SQL="$SQL);"

    # Execute the SQL to create the table
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -e "$SQL"

    # Load the CSV file into the table
    mysql --local-infile=1 -u $MYSQL_USER -p$MYSQL_PASSWORD -e "USE $DATABASE_NAME; LOAD DATA LOCAL INFILE '$csv_file' INTO TABLE $TABLE_NAME FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;"
done

