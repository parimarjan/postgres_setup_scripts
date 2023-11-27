import os
import pandas as pd
from sqlalchemy import create_engine

# MySQL Connection details
username = ''
password = ''
host = 'localhost'
database = 'imdb'

# Directory containing CSV files
csv_directory = './imdb_csvs/'

# Creating a MySQL connection engine
engine = create_engine(f'mysql+pymysql://{username}:{password}@{host}/{database}')

# Function to process each CSV file
def process_csv(file_path):
    # Reading CSV file into a DataFrame
    df = pd.read_csv(file_path)

    # Extracting table name from the file name
    table_name = os.path.splitext(os.path.basename(file_path))[0]

    # Loading DataFrame into MySQL table
    df.to_sql(table_name, con=engine, if_exists='replace', index=False)

# Iterating over all CSV files in the directory
for filename in os.listdir(csv_directory):
    if filename.endswith('.csv'):
        file_path = os.path.join(csv_directory, filename)
        process_csv(file_path)
        print(f"Processed {filename}")
