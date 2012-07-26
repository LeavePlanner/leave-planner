-- drop user
DROP USER 'lpdb'@'localhost';

-- create new user 
CREATE USER 'lpdb'@'localhost' IDENTIFIED BY 'lpdb';

-- grant dba permissions to the user
GRANT ALL PRIVILEGES ON dba.* TO 'lpdb'@'localhost' WITH GRANT OPTION;
