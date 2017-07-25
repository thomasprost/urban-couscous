### MySql

#### Export Database
````
mysqldump -u YourUser -p YourDatabaseName > wantedsqlfile.sql
````

#### Import Database
````
mysql -u YourUser -p OtherDatabaseName < wantedsqlfile.sql
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


#### Unique key is too long (Limit 767 bytes)

This is a limitation from Mysql INNODB
See https://stackoverflow.com/questions/1814532/1071-specified-key-was-too-long-max-key-length-is-767-bytes

767 bytes is the stated prefix limitation for InnoDB tables - its 1,000 bytes long for MyISAM tables.
Solution for unique keys is too limit to 191 characters

This is (presumably) because each character takes up exactly 4 bytes, and the maximum key length is measured in bytes, not characters. So the key length will by 191 * 4 = 764 bytes

https://stackoverflow.com/questions/23786359/laravel-migration-unique-key-is-too-long-even-if-specified