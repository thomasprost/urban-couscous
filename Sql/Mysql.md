### MySql

#### Connect to database with host
````
mysql -u username -p -h hostname
````

#### Export Database
````
mysqldump -u YourUser -p YourDatabaseName > target_file.sql

// with host
mysqldump -u YourUser -p -h host-url databasename > target_file.sql
````

#### Exporting only some tables from database
````
// For a few tables
mysqldump -u username -p databasename table1_name table2_name table3_name > target_file.sql


mysql databasename -u [user] -p[password] -e 'show tables like "table_name_%"' 
       | grep -v Tables_in 
       | xargs mysqldump [databasename] -u [root] -p [password] > [target_file]
````
Type the command in one line

#### Import Database
````
mysql -u YourUser -p OtherDatabaseName < target_file.sql
````

#### Useful commands

````mysql
//Show Databases
mysql> show databases;

// Switch db
mysql> use [db name];

// Show tables
mysql> show tables;
````

#### Give access to a user
Log in with root access
hostname is localhost if you only want access on local machine
````mysql
GRANT ALL PRIVILEGES ON dbTest.* To 'user'@'hostname' IDENTIFIED BY 'password';
````

#### Unique key is too long (Limit 767 bytes)

This is a limitation from Mysql INNODB
See https://stackoverflow.com/questions/1814532/1071-specified-key-was-too-long-max-key-length-is-767-bytes

767 bytes is the stated prefix limitation for InnoDB tables - its 1,000 bytes long for MyISAM tables.
Solution for unique keys is too limit to 191 characters

This is (presumably) because each character takes up exactly 4 bytes, and the maximum key length is measured in bytes, not characters. So the key length will by 191 * 4 = 764 bytes

https://stackoverflow.com/questions/23786359/laravel-migration-unique-key-is-too-long-even-if-specified