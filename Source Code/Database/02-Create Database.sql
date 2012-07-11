-- drop existing db
DROP DATABASE lpdb;

-- create new database
CREATE DATABASE lpdb;

-- grant all privileges on geo_info to user
GRANT ALL ON lpdb.* TO 'lpdb'@localhost IDENTIFIED BY 'lpdb';