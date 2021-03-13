SET GLOBAL local_infile=1;
set unique_checks = 0;
set foreign_key_checks = 0;
set sql_log_bin=0;
set autocommit = 0;

LOAD DATA LOCAL INFILE 'csv_files/info_type.csv' INTO TABLE info_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/kind_type.csv' INTO TABLE kind_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/role_type.csv' INTO TABLE role_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/link_type.csv' INTO TABLE link_type FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'csv_files/title.csv' INTO TABLE title FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/aka_title.csv' INTO TABLE aka_title FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'csv_files/name.csv' INTO TABLE name FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/aka_name.csv' INTO TABLE name FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'csv_files/movie_info.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/person_info.csv' INTO TABLE person_info FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/cast_info.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/movie_info_idx.csv' INTO TABLE movie_info_idx FIELDS TERMINATED BY ',';


LOAD DATA LOCAL INFILE 'csv_files/char_name.csv' INTO TABLE char_name FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/comp_cast_type.csv' INTO TABLE comp_cast_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/company_name.csv' INTO TABLE company_name FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/company_type.csv' INTO TABLE company_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/complete_cast.csv' INTO TABLE complete_cast FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/movie_companies.csv' INTO TABLE movie_companies FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/movie_link.csv' INTO TABLE movie_link FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'csv_files/keyword.csv' INTO TABLE keyword FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'csv_files/movie_keyword.csv' INTO TABLE movie_keyword FIELDS TERMINATED BY ',';
commit;

