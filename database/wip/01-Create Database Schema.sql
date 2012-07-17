-- drop existing db
DROP DATABASE infodb;

-- create new database
CREATE DATABASE infodb;

-- grant all privileges on geo_info to user
GRANT ALL ON infodb.* TO 'lpdb'@localhost IDENTIFIED BY 'lpdb';
