-- Learned about "LIKE", "ORDER", "LIMIT" , "OFFSET"!


mysql> show Databases;
+--------------------+
| Database           |
+--------------------+
| actors             |
| filmsdatabase      |
| information_schema |
| mysql              |
| new_database       |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
9 rows in set (0.00 sec)

mysql> use actors
Database changed
mysql> select * from actornames where first_name = "ch%" ORDER by Networth DESC;
Empty set (0.00 sec)

mysql> show tables;
+------------------+
| Tables_in_actors |
+------------------+
| actornames       |
+------------------+
1 row in set (0.00 sec)

mysql> select * from actornames;
+------------+------------+--------+----------+
| First_Name | Last_Name  | Gender | NetWorth |
+------------+------------+--------+----------+
| Chris      | Hemsworth  | Male   |      440 |
| Chris      | Pratt      | Male   |      330 |
| Scarlett   | Johnson    | Female |      880 |
| Chadwick   | Boseman    | Male   |      770 |
| Tom        | Hiddleston | Male   |      200 |
| Chris      | Evans      | Male   |      650 |
| Elizabeth  | Olson      | Female |      800 |
| Jenifer    | Lawrence   | female |      770 |
+------------+------------+--------+----------+
8 rows in set (0.00 sec)


-- ## Selecting data where first name starts with some specific letters!

mysql> select * from actornames where first_name like "Ch%" ORDER by Networth DESC;
+------------+-----------+--------+----------+
| First_Name | Last_Name | Gender | NetWorth |
+------------+-----------+--------+----------+
| Chadwick   | Boseman   | Male   |      770 |
| Chris      | Evans     | Male   |      650 |
| Chris      | Hemsworth | Male   |      440 |
| Chris      | Pratt     | Male   |      330 |
+------------+-----------+--------+----------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM ACTORNAMES;
+------------+------------+--------+----------+
| First_Name | Last_Name  | Gender | NetWorth |
+------------+------------+--------+----------+
| Chris      | Hemsworth  | Male   |      440 |
| Chris      | Pratt      | Male   |      330 |
| Scarlett   | Johnson    | Female |      880 |
| Chadwick   | Boseman    | Male   |      770 |
| Tom        | Hiddleston | Male   |      200 |
| Chris      | Evans      | Male   |      650 |
| Elizabeth  | Olson      | Female |      800 |
| Jenifer    | Lawrence   | female |      770 |
+------------+------------+--------+----------+
8 rows in set (0.00 sec)

-- ## selcting firstName where first name starts with ch and is ordered by First_name Dictionary wise!!

mysql>  SELECT * FROM ACTORNAMES WHERE FIRST_NAME like "Ch%" Order by first_name;
+------------+-----------+--------+----------+
| First_Name | Last_Name | Gender | NetWorth |
+------------+-----------+--------+----------+
| Chadwick   | Boseman   | Male   |      770 |
| Chris      | Hemsworth | Male   |      440 |
| Chris      | Pratt     | Male   |      330 |
| Chris      | Evans     | Male   |      650 |
+------------+-----------+--------+----------+
4 rows in set (0.00 sec)

-- ## selcting firstName where first name starts with ch and is ordered by First_name Dictionary wise and then networth in descending order!!

mysql>  SELECT * FROM ACTORNAMES WHERE FIRST_NAME like "Ch%" Order by first_name,networth desc;
+------------+-----------+--------+----------+
| First_Name | Last_Name | Gender | NetWorth |
+------------+-----------+--------+----------+
| Chadwick   | Boseman   | Male   |      770 |
| Chris      | Evans     | Male   |      650 |
| Chris      | Hemsworth | Male   |      440 |
| Chris      | Pratt     | Male   |      330 |
+------------+-----------+--------+----------+
4 rows in set (0.00 sec)

mysql> select first_name,last_name, Gender from actornames;
+------------+------------+--------+
| first_name | last_name  | Gender |
+------------+------------+--------+
| Chris      | Hemsworth  | Male   |
| Chris      | Pratt      | Male   |
| Scarlett   | Johnson    | Female |
| Chadwick   | Boseman    | Male   |
| Tom        | Hiddleston | Male   |
| Chris      | Evans      | Male   |
| Elizabeth  | Olson      | Female |
| Jenifer    | Lawrence   | female |
+------------+------------+--------+
8 rows in set (0.00 sec)


-- ## limiting the record to 3 lines!

mysql> select * from actornames limit 3;
+------------+-----------+--------+----------+
| First_Name | Last_Name | Gender | NetWorth |
+------------+-----------+--------+----------+
| Chris      | Hemsworth | Male   |      440 |
| Chris      | Pratt     | Male   |      330 |
| Scarlett   | Johnson   | Female |      880 |
+------------+-----------+--------+----------+
3 rows in set (0.00 sec)

-- # limiting the data by 3 Records and selecting them from 2nd etnry using offset 1. The numbering of entreis starts from 0!!

mysql> select * from actornames limit 3 offset 1;
+------------+-----------+--------+----------+
| First_Name | Last_Name | Gender | NetWorth |
+------------+-----------+--------+----------+
| Chris      | Pratt     | Male   |      330 |
| Scarlett   | Johnson   | Female |      880 |
| Chadwick   | Boseman   | Male   |      770 |
+------------+-----------+--------+----------+
3 rows in set (0.00 sec)

mysql> select * from actornames limit 3 offset 3;
+------------+------------+--------+----------+
| First_Name | Last_Name  | Gender | NetWorth |
+------------+------------+--------+----------+
| Chadwick   | Boseman    | Male   |      770 |
| Tom        | Hiddleston | Male   |      200 |
| Chris      | Evans      | Male   |      650 |
+------------+------------+--------+----------+
3 rows in set (0.00 sec)

mysql> select * from actornames limit 3 offset 6;
+------------+-----------+--------+----------+
| First_Name | Last_Name | Gender | NetWorth |
+------------+-----------+--------+----------+
| Elizabeth  | Olson     | Female |      800 |
| Jenifer    | Lawrence  | female |      770 |
+------------+-----------+--------+----------+
2 rows in set (0.00 sec)


-- ## Alias to print a coloumn with a temporary Alias;

mysql> select first_name as First, Last_name as Last, Networth as NetIcome From actornames;
+-----------+------------+----------+
| First     | Last       | NetIcome |
+-----------+------------+----------+
| Chris     | Hemsworth  |      440 |
| Chris     | Pratt      |      330 |
| Scarlett  | Johnson    |      880 |
| Chadwick  | Boseman    |      770 |
| Tom       | Hiddleston |      200 |
| Chris     | Evans      |      650 |
| Elizabeth | Olson      |      800 |
| Jenifer   | Lawrence   |      770 |
+-----------+------------+----------+
8 rows in set (0.00 sec)

mysql>