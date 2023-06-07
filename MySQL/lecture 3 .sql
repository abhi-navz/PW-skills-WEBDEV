mysql> create database Actordetails;
Query OK, 1 row affected (0.02 sec)


mysql> use actordetails;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create table actors(Firstname varchar(20), Lastname varchar(20), Gender varchar(10), Networth int, ID int NOT NULL AUTO_INCREMENT PRIMARY KEY);
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
+------------------------+
| Tables_in_actordetails |
+------------------------+
| actors                 |
+------------------------+
1 row in set (0.00 sec)

mysql> desc actors;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| Firstname | varchar(20) | YES  |     | NULL    |                |
| Lastname  | varchar(20) | YES  |     | NULL    |                |
| Gender    | varchar(10) | YES  |     | NULL    |                |
| Networth  | int         | YES  |     | NULL    |                |
| ID        | int         | NO   | PRI | NULL    | auto_increment |
+-----------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> insert into actors( firstname, lastname, Gender,networth) values ("Johnny","Depp","Male",897);
Query OK, 1 row affected (0.01 sec)

mysql> select * from actors;
+-----------+----------+--------+----------+----+
| Firstname | Lastname | Gender | Networth | ID |
+-----------+----------+--------+----------+----+
| Johnny    | Depp     | Male   |      897 |  1 |
+-----------+----------+--------+----------+----+
1 row in set (0.00 sec)

mysql> 

mysql>  insert into actors(firstname,lastname,Gender, networth) values ("Chris" , "Evans","Male", 989),("Tom", "Hiddleston","Male",879),("Scarlett","Johnson","Female",787),("Elzabeth", "Olson", "Female",789);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from actors;
+-----------+------------+--------+----------+----+
| Firstname | Lastname   | Gender | Networth | ID |
+-----------+------------+--------+----------+----+
| Johnny    | Depp       | Male   |      897 |  1 |
| Chris     | Evans      | Male   |      989 |  2 |
| Tom       | Hiddleston | Male   |      879 |  3 |
| Scarlett  | Johnson    | Female |      787 |  4 |
| Elzabeth  | Olson      | Female |      789 |  5 |
+-----------+------------+--------+----------+----+
5 rows in set (0.00 sec)

mysql>   insert into actors(firstname,lastname,Gender, networth,id) values ("Chris", "pratt", "Male", 567,5);
ERROR 1062 (23000): Duplicate entry '5' for key 'actors.PRIMARY'
mysql>  insert into actors(firstname,lastname,Gender, networth,id) values ("Chris", "pratt", "Male", 567,8);
Query OK, 1 row affected (0.01 sec)

mysql>  insert into actors(firstname,lastname,Gender, networth) values ("Chris", "Hemsworth", "Male", 856);
Query OK, 1 row affected (0.01 sec)

mysql> select * from actors;
+-----------+------------+--------+----------+----+
| Firstname | Lastname   | Gender | Networth | ID |
+-----------+------------+--------+----------+----+
| Johnny    | Depp       | Male   |      897 |  1 |
| Chris     | Evans      | Male   |      989 |  2 |
| Tom       | Hiddleston | Male   |      879 |  3 |
| Scarlett  | Johnson    | Female |      787 |  4 |
| Elzabeth  | Olson      | Female |      789 |  5 |
| Chris     | pratt      | Male   |      567 |  8 |
| Chris     | Hemsworth  | Male   |      856 |  9 |
+-----------+------------+--------+----------+----+
7 rows in set (0.00 sec)
mysql> delete from actors where id = 8;
Query OK, 1 row affected (0.01 sec)

mysql> select * from tables;
ERROR 1146 (42S02): Table 'actordetails.tables' doesn't exist
mysql> select * from actors;
+-----------+------------+--------+----------+----+
| Firstname | Lastname   | Gender | Networth | ID |
+-----------+------------+--------+----------+----+
| Johnny    | Depp       | Male   |      897 |  1 |
| Chris     | Evans      | Male   |      989 |  2 |
| Tom       | Hiddleston | Male   |      879 |  3 |
| Scarlett  | Johnson    | Female |      787 |  4 |
| Elzabeth  | Olson      | Female |      789 |  5 |
| Chris     | Hemsworth  | Male   |      856 |  9 |
+-----------+------------+--------+----------+----+
6 rows in set (0.00 sec)

mysql>