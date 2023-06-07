-- -- Joining two tabees;
-- --  Synatx: 
-- selct * from table_1 Join table_2 on table_1.fk = table_2.pk;


create database address_database;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| actordetails       |
| address_database   |
| filmsdatabase      |
| information_schema |
| mysql              |
| new_database       |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
10 rows in set (0.00 sec)

mysql> use address_database;
Database changed
mysql> CREATE TABLE address (
    ->   address_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ->   address VARCHAR(200),
    ->   city_id INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> create table city ( city_id int primary key not null, city_name varchar(200) );
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+----------------------------+
| Tables_in_address_database |
+----------------------------+
| address                    |
| city                       |
+----------------------------+
2 rows in set (0.00 sec)

mysql> drop table address;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE address (
    ->   address_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ->   address VARCHAR(200),
    ->   city_id INT,
    ->   FOREIGN KEY (city_id) REFERENCES city(city_id)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+----------------------------+
| Tables_in_address_database |
+----------------------------+
| address                    |
| city                       |
+----------------------------+
2 rows in set (0.00 sec)

mysql> desc address;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| address_id | int          | NO   | PRI | NULL    | auto_increment |
| address    | varchar(200) | YES  |     | NULL    |                |
| city_id    | int          | YES  | MUL | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> desc city;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| city_id   | int          | NO   | PRI | NULL    |       |
| city_name | varchar(200) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO city (city_id, city_name)
    -> VALUES (1, 'New York'),
    ->        (2, 'London'),
    ->        (3, 'Paris'),
    ->        (4, 'Tokyo'),
    ->        (5, 'Sydney'),
    ->        (6, 'Berlin'),
    ->        (7, 'Rome'),
    ->        (8, 'Moscow'),
    ->        (9, 'Toronto'),
    ->        (10, 'Dubai');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO address (address_id, address, city_id)
    -> VALUES (1, '123 Main Street', 1),
    ->        (2, '456 Park Avenue', 2),
    ->        (3, '789 Elm Road', 1),
    ->        (4, '321 Oak Lane', 3),
    ->        (5, '555 Pine Street', 2),
    ->        (6, '999 Oxford Road', 6),
    ->        (7, '777 Vine Avenue', 4),
    ->        (8, '222 Maple Lane', 5),
    ->        (9, '888 Elmwood Drive', 3),
    ->        (10, '444 Cedar Court', 7);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select * from address;
+------------+-------------------+---------+
| address_id | address           | city_id |
+------------+-------------------+---------+
|          1 | 123 Main Street   |       1 |
|          2 | 456 Park Avenue   |       2 |
|          3 | 789 Elm Road      |       1 |
|          4 | 321 Oak Lane      |       3 |
|          5 | 555 Pine Street   |       2 |
|          6 | 999 Oxford Road   |       6 |
|          7 | 777 Vine Avenue   |       4 |
|          8 | 222 Maple Lane    |       5 |
|          9 | 888 Elmwood Drive |       3 |
|         10 | 444 Cedar Court   |       7 |
+------------+-------------------+---------+
10 rows in set (0.00 sec)

mysql> select * from city;
+---------+-----------+
| city_id | city_name |
+---------+-----------+
|       1 | New York  |
|       2 | London    |
|       3 | Paris     |
|       4 | Tokyo     |
|       5 | Sydney    |
|       6 | Berlin    |
|       7 | Rome      |
|       8 | Moscow    |
|       9 | Toronto   |
|      10 | Dubai     |
+---------+-----------+
10 rows in set (0.00 sec)

-- joining two tables

mysql> SELECT address, city_name
    -> FROM address
    -> JOIN city ON address.city_id = city.city_id;
+-------------------+-----------+
| address           | city_name |
+-------------------+-----------+
| 123 Main Street   | New York  |
| 456 Park Avenue   | London    |
| 789 Elm Road      | New York  |
| 321 Oak Lane      | Paris     |
| 555 Pine Street   | London    |
| 999 Oxford Road   | Berlin    |
| 777 Vine Avenue   | Tokyo     |
| 222 Maple Lane    | Sydney    |
| 888 Elmwood Drive | Paris     |
| 444 Cedar Court   | Rome      |
+-------------------+-----------+
10 rows in set (0.00 sec)

-- Right outer join => common part and all the remainng part of right table;

mysql> select address,city_name from address right outer join city on address.city_id = city.city_id;
+-------------------+-----------+
| address           | city_name |
+-------------------+-----------+
| 123 Main Street   | New York  |
| 789 Elm Road      | New York  |
| 456 Park Avenue   | London    |
| 555 Pine Street   | London    |
| 321 Oak Lane      | Paris     |
| 888 Elmwood Drive | Paris     |
| 777 Vine Avenue   | Tokyo     |
| 222 Maple Lane    | Sydney    |
| 999 Oxford Road   | Berlin    |
| 444 Cedar Court   | Rome      |
| NULL              | Moscow    |
| NULL              | Toronto   |
| NULL              | Dubai     |
+-------------------+-----------+
13 rows in set (0.00 sec)

-- left outer join

mysql> select address,city_name from address left outer join city on address.city_id = city.city_id;
+-------------------+-----------+
| address           | city_name |
+-------------------+-----------+
| 123 Main Street   | New York  |
| 456 Park Avenue   | London    |
| 789 Elm Road      | New York  |
| 321 Oak Lane      | Paris     |
| 555 Pine Street   | London    |
| 999 Oxford Road   | Berlin    |
| 777 Vine Avenue   | Tokyo     |
| 222 Maple Lane    | Sydney    |
| 888 Elmwood Drive | Paris     |
| 444 Cedar Court   | Rome      |
+-------------------+-----------+
10 rows in set (0.00 sec)

--  Joing three tables;

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| actordetails       |
| address_database   |
| filmsdatabase      |
| information_schema |
| lco_films          |
| mysql              |
| new_database       |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
11 rows in set (0.00 sec)

mysql> use lco_films;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_lco_films |
+---------------------+
| actor               |
| address             |
| category            |
| city                |
| country             |
| film                |
| film_actor          |
| film_category       |
| language            |
+---------------------+
9 rows in set (0.00 sec)

mysql> desc actor;
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
| Field       | Type              | Null | Key | Default           | Extra                                         |
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
| actor_id    | smallint unsigned | NO   | PRI | NULL              | auto_increment                                |
| first_name  | varchar(45)       | NO   |     | NULL              |                                               |
| last_name   | varchar(45)       | NO   | MUL | NULL              |                                               |
| address_id  | smallint unsigned | NO   | MUL | NULL              |                                               |
| last_update | timestamp         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
5 rows in set (0.00 sec)

mysql> desc address;
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
| Field       | Type              | Null | Key | Default           | Extra                                         |
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
| address_id  | smallint unsigned | NO   | PRI | NULL              | auto_increment                                |
| address     | varchar(50)       | NO   |     | NULL              |                                               |
| address2    | varchar(50)       | YES  |     | NULL              |                                               |
| district    | varchar(20)       | NO   |     | NULL              |                                               |
| city_id     | smallint unsigned | NO   | MUL | NULL              |                                               |
| postal_code | varchar(10)       | YES  |     | NULL              |                                               |
| phone       | varchar(20)       | NO   |     | NULL              |                                               |
| last_update | timestamp         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
8 rows in set (0.00 sec)

mysql> desc city;
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
| Field       | Type              | Null | Key | Default           | Extra                                         |
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
| city_id     | smallint unsigned | NO   | PRI | NULL              | auto_increment                                |
| city        | varchar(50)       | NO   |     | NULL              |                                               |
| country_id  | smallint unsigned | NO   | MUL | NULL              |                                               |
| last_update | timestamp         | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+
4 rows in set (0.00 sec)

mysql> sSELECT first_name, address, city
FROM actor
JOIN address ON actor.address_id = address.address_id
JOIN city ON address.city_id = city.city_id limit 20;
+------------+----------------------------------------+----------------+
| first_name | address                                | city           |
+------------+----------------------------------------+----------------+
| PENELOPE   | 47 MySakila Drive                      | Lethbridge     |
| NICK       | 1411 Lillydale Drive                   | Woodridge      |
| ED         | 28 MySQL Boulevard                     | Woodridge      |
| JENNIFER   | 23 Workhaven Lane                      | Lethbridge     |
| JOHNNY     | 1913 Hanoi Way                         | Sasebo         |
| BETTE      | 692 Joliet Street                      | Athenai        |
| GRACE      | 1121 Loja Avenue                       | San Bernardino |
| MATTHEW    | 1566 Inegl Manor                       | Myingyan       |
| JOE        | 1795 Santiago de Compostela Way        | Laredo         |
| CHRISTIAN  | 53 Idfu Parkway                        | Nantou         |
| ZERO       | 900 Santiago de Compostela Parkway     | Kragujevac     |
| KARL       | 613 Korolev Drive                      | Masqat         |
| UMA        | 1867 San Juan Bautista Tuxtepec Avenue | Ivanovo        |
| VIVIEN     | 262 A Corua (La Corua) Parkway         | Tangail        |
| CUBA       | 334 Munger (Monghyr) Lane              | Arak           |
| FRED       | 915 Ponce Place                        | Basel          |
| HELEN      | 1947 Poos de Caldas Boulevard          | Chiayi         |
| DAN        | 1936 Lapu-Lapu Parkway                 | Deba Habe      |
| BOB        | 211 Chiayi Drive                       | Etawah         |
| LUCILLE    | 602 Paarl Street                       | Pavlodar       |
+------------+----------------------------------------+----------------+
20 rows in set (0.00 sec)