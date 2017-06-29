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
