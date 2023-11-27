SET GLOBAL local_infile=1;
SET unique_checks=0;
SET foreign_key_checks=0;
SET sql_log_bin=0;
SET autocommit=0;
start transaction;
LOAD DATA LOCAL INFILE 'imdb_csvs/info_type.csv' INTO TABLE info_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/kind_type.csv' INTO TABLE kind_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/role_type.csv' INTO TABLE role_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/link_type.csv' INTO TABLE link_type FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'imdb_csvs/title.csv' INTO TABLE title FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/aka_title.csv' INTO TABLE aka_title FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'imdb_csvs/name.csv' INTO TABLE name FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/aka_name.csv' INTO TABLE name FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'imdb_csvs/movie_info.csv' INTO TABLE movie_info FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/person_info.csv' INTO TABLE person_info FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/cast_info.csv' INTO TABLE cast_info FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/movie_info_idx.csv' INTO TABLE movie_info_idx FIELDS TERMINATED BY ',';


LOAD DATA LOCAL INFILE 'imdb_csvs/char_name.csv' INTO TABLE char_name FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/comp_cast_type.csv' INTO TABLE comp_cast_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/company_name.csv' INTO TABLE company_name FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/company_type.csv' INTO TABLE company_type FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/complete_cast.csv' INTO TABLE complete_cast FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/movie_companies.csv' INTO TABLE movie_companies FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/movie_link.csv' INTO TABLE movie_link FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE 'imdb_csvs/keyword.csv' INTO TABLE keyword FIELDS TERMINATED BY ',';
LOAD DATA LOCAL INFILE 'imdb_csvs/movie_keyword.csv' INTO TABLE movie_keyword FIELDS TERMINATED BY ',';
commit;

