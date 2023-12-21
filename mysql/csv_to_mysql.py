import os
import pandas as pd
import sqlalchemy
# from sqlalchemy import create_engine
from sqlalchemy import create_engine, text
import sys

# Directory containing CSV files
csv_directory = sys.argv[1]

# Extracting the database name from the directory name
db_name = os.path.basename(csv_directory)

# MySQL connection parameters
username = 'ubuntu'
password = 'password'
host = 'localhost'
port = '3306'

# Create SQLAlchemy engine
engine = create_engine(f'mysql+pymysql://{username}:{password}@{host}:{port}/')

with engine.connect() as conn:
    # Use text() to handle raw SQL statement
    conn.execute(text(f"CREATE DATABASE IF NOT EXISTS {db_name};"))
    # Then select the new database
    # conn.execute(text(f"USE {db_name};"))

# Create SQLAlchemy engine
engine = create_engine(f'mysql+pymysql://{username}:{password}@{host}:{port}/{db_name}')

# Loop over all CSV files in the directory
for file in os.listdir(csv_directory):
    if file.endswith('.csv'):
        file_path = os.path.join(csv_directory, file)

        # Read the CSV file
        df = pd.read_csv(file_path)

        # Convert Pandas dtype to SQL type
        sql_types = df.dtypes.replace({
            'int64': 'INT',
            'float64': 'FLOAT',
            'object': 'VARCHAR(255)',  # Adjust as necessary
            # Add other dtype mappings if needed
        })

        # Define the table name (you may want to modify this)
        table_name = os.path.splitext(file)[0]

        # Generate 'CREATE TABLE' statement
        create_table_stmt = text(f"CREATE TABLE IF NOT EXISTS {table_name} (" + ', '.join([f"`{col}` {sql_types[col]}" for col in df.columns]) + ");")

        # Execute create table statement in MySQL
        with engine.connect() as conn:
            conn.execute(create_table_stmt)

        # Load data into MySQL
        df.to_sql(table_name, con=engine, if_exists='replace', index=False)

