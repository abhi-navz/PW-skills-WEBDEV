
--  Highlights of the class;
--  Altering Table
--  Aggregating Functions ( Max, min, avg and sum)
--  Grop by clause
--  "having" clause

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

mysql> desc film;
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| Field                | Type                                                                | Null | Key | Default           | Extra                                         |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| film_id              | smallint unsigned                                                   | NO   | PRI | NULL              | auto_increment                                |
| title                | varchar(128)                                                        | NO   | MUL | NULL              |                                               |
| description          | text                                                                | YES  |     | NULL              |                                               |
| release_year         | year                                                                | YES  |     | NULL              |                                               |
| language_id          | tinyint unsigned                                                    | NO   | MUL | NULL              |                                               |
| original_language_id | tinyint unsigned                                                    | YES  | MUL | NULL              |                                               |
| rental_duration      | tinyint unsigned                                                    | NO   |     | 3                 |                                               |
| rental_rate          | decimal(4,2)                                                        | NO   |     | 4.99              |                                               |
| length               | smallint unsigned                                                   | YES  |     | NULL              |                                               |
| replacement_cost     | decimal(5,2)                                                        | NO   |     | 19.99             |                                               |
| rating               | enum('G','PG','PG-13','R','NC-17')                                  | YES  |     | G                 |                                               |
| special_features     | set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') | YES  |     | NULL              |                                               |
| last_update          | timestamp                                                           | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
13 rows in set (0.99 sec)

mysql> alter table film drop length;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc film;
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| Field                | Type                                                                | Null | Key | Default           | Extra                                         |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| film_id              | smallint unsigned                                                   | NO   | PRI | NULL              | auto_increment                                |
| title                | varchar(128)                                                        | NO   | MUL | NULL              |                                               |
| description          | text                                                                | YES  |     | NULL              |                                               |
| release_year         | year                                                                | YES  |     | NULL              |                                               |
| language_id          | tinyint unsigned                                                    | NO   | MUL | NULL              |                                               |
| original_language_id | tinyint unsigned                                                    | YES  | MUL | NULL              |                                               |
| rental_duration      | tinyint unsigned                                                    | NO   |     | 3                 |                                               |
| rental_rate          | decimal(4,2)                                                        | NO   |     | 4.99              |                                               |
| replacement_cost     | decimal(5,2)                                                        | NO   |     | 19.99             |                                               |
| rating               | enum('G','PG','PG-13','R','NC-17')                                  | YES  |     | G                 |                                               |
| special_features     | set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') | YES  |     | NULL              |                                               |
| last_update          | timestamp                                                           | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
12 rows in set (0.00 sec)



   **********************************-- ALTER TABLE!! ****************************************************

mysql> alter table film add length int;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc film;
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| Field                | Type                                                                | Null | Key | Default           | Extra                                         |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| film_id              | smallint unsigned                                                   | NO   | PRI | NULL              | auto_increment                                |
| title                | varchar(128)                                                        | NO   | MUL | NULL              |                                               |
| description          | text                                                                | YES  |     | NULL              |                                               |
| release_year         | year                                                                | YES  |     | NULL              |                                               |
| language_id          | tinyint unsigned                                                    | NO   | MUL | NULL              |                                               |
| original_language_id | tinyint unsigned                                                    | YES  | MUL | NULL              |                                               |
| rental_duration      | tinyint unsigned                                                    | NO   |     | 3                 |                                               |
| rental_rate          | decimal(4,2)                                                        | NO   |     | 4.99              |                                               |
| replacement_cost     | decimal(5,2)                                                        | NO   |     | 19.99             |                                               |
| rating               | enum('G','PG','PG-13','R','NC-17')                                  | YES  |     | G                 |                                               |
| special_features     | set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') | YES  |     | NULL              |                                               |
| last_update          | timestamp                                                           | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
| length               | int                                                                 | YES  |     | NULL              |                                               |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
13 rows in set (0.00 sec)

mysql> alter table film modify length to smallint;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to smallint' at line 1
mysql> alter table film modify length smallint;
Query OK, 1000 rows affected (0.16 sec)
Records: 1000  Duplicates: 0  Warnings: 0

mysql> desc film;
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| Field                | Type                                                                | Null | Key | Default           | Extra                                         |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| film_id              | smallint unsigned                                                   | NO   | PRI | NULL              | auto_increment                                |
| title                | varchar(128)                                                        | NO   | MUL | NULL              |                                               |
| description          | text                                                                | YES  |     | NULL              |                                               |
| release_year         | year                                                                | YES  |     | NULL              |                                               |
| language_id          | tinyint unsigned                                                    | NO   | MUL | NULL              |                                               |
| original_language_id | tinyint unsigned                                                    | YES  | MUL | NULL              |                                               |
| rental_duration      | tinyint unsigned                                                    | NO   |     | 3                 |                                               |
| rental_rate          | decimal(4,2)                                                        | NO   |     | 4.99              |                                               |
| replacement_cost     | decimal(5,2)                                                        | NO   |     | 19.99             |                                               |
| rating               | enum('G','PG','PG-13','R','NC-17')                                  | YES  |     | G                 |                                               |
| special_features     | set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') | YES  |     | NULL              |                                               |
| last_update          | timestamp                                                           | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
| length               | smallint                                                            | YES  |     | NULL              |                                               |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
13 rows in set (0.00 sec)




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

-- *********************************** Distinct Selection*************************

mysql> select distinct district from address;
+----------------------+
| district             |
+----------------------+
| Alberta              |
| QLD                  |
| Nagasaki             |
| California           |
| Attika               |
| Mandalay             |
| Nantou               |
| Texas                |
| Central Serbia       |
| Hamilton             |
| Masqat               |
| Esfahan              |
| Kanagawa             |
| Haryana              |
| Osmaniye             |
| Madhya Pradesh       |
| England              |
| Kalmykia             |
| Kaduna               |
| Northern Cape        |
| Nothwest Border Prov |
| Dhaka                |
| Rabat-Sal-Zammour-Z  |
| Liepaja              |
| Crdoba               |
| Sind                 |
|                      |
| Southern Mindanao    |
| Bihar                |
| Yamaguchi            |
| Taipei               |
| West Bengali         |
| Uttar Pradesh        |
| Piemonte             |
| Okayama              |
| Midi-Pyrnes          |
| Markazi              |
| Henan                |
| Chisinau             |
| Esprito Santo        |
| Oriental             |
| Yerevan              |
| Nonthaburi           |
| Tahiti               |
| Lipetsk              |
| Antofagasta          |
| Moscow (City)        |
| Cear                 |
| Tatarstan            |
| Mekka                |
| Khartum              |
| Galicia              |
| Chiba                |
| Moskova              |
| Vaduz                |
| Sarawak              |
| Karnataka            |
| Rajasthan            |
| Basel-Stadt          |
| Missouri             |
| Nebraska             |
| Sichuan              |
| Cayenne              |
| Skne ln              |
| Hunan                |
| Bchar                |
| Eastern Visayas      |
| National Capital Reg |
| Chiayi               |
| So Paulo             |
| Changhwa             |
| Pavlodar             |
| Oyo & Osun           |
| Mahajanga            |
| Krim                 |
| Gauteng              |
| Puebla               |
| Songkhla             |
| Sucre                |
| Cheju                |
| Buenos Aires         |
| Guangdong            |
| Brunei and Muara     |
| Gois                 |
| Inner Mongolia       |
| Caraga               |
| Punjab               |
| Georgia              |
| Tete                 |
| Abu Dhabi            |
| Kyongsangbuk         |
| Asir                 |
| Ha Darom             |
| Kwara & Kogi         |
| Provence-Alpes-Cte   |
| Funafuti             |
| Ivanovo              |
| Mxico                |
| North West           |
| Hubei                |
| Distrito Federal     |
| Nordrhein-Westfalen  |
| Central Java         |
| Gujarat              |
| al-Qalyubiya         |
| Risaralda            |
| Lima                 |
| Ktahya               |
| Smolensk             |
| Slaskie              |
| Shandong             |
| Taka-Karpatia        |
| Free State           |
| Coahuila de Zaragoza |
| Maharashtra          |
| Gelderland           |
| Ynlin                |
| Tennessee            |
| Hiroshima            |
| Scotland             |
| Kilis                |
| Minsk                |
| Michigan             |
| Saitama              |
| Saint-Denis          |
| Massachusetts        |
| Michoacn de Ocampo   |
| Assam                |
| Jakarta Raya         |
| Shanxi               |
| Bern                 |
| Ondo & Ekiti         |
| Pyongyang-si         |
| North Carolina       |
| North Austria        |
| Tel Aviv             |
| Pays de la Loire     |
| Gifu                 |
| Adana                |
| Xinxiang             |
| Lilongwe             |
| Gansu                |
| Jiangxi              |
| Perak                |
| Batman               |
| Steiermark           |
| Miranda              |
| Kerala               |
| Skikda               |
| Tamaulipas           |
| Kirov                |
| Noord-Brabant        |
| Chaharmahal va Bakht |
| Sumy                 |
| Ontario              |
| Tabora               |
| Rostov-na-Donu       |
| Nyanza               |
| Tokyo-to             |
| Baden-Wrttemberg     |
| Jiangsu              |
| Haiphong             |
| Ahal                 |
| Sulawesi Utara       |
| Usak                 |
| Alto Paran           |
| Santa Catarina       |
| Kitaa                |
| Aden                 |
| Jilin                |
| Washington           |
| Taizz                |
| Haskovo              |
| Kabol                |
| Zanzibar West        |
| Sisilia              |
| Jaroslavl            |
| Tamil Nadu           |
| Asuncin              |
| Saarland             |
| Phnom Penh           |
| Botosani             |
| Qina                 |
| Hawalli              |
| Valle                |
| Southern Tagalog     |
| Chollanam            |
| West Java            |
| Fukushima            |
| Hebei                |
| Tucumn               |
| Central Visayas      |
| Kyonggi              |
| Paran                |
| Florida              |
| Tianjin              |
| Anhalt Sachsen       |
| Miyazaki             |
| Minas Gerais         |
| Central Luzon        |
| Sagaing              |
| Sofala               |
| Santiago             |
| Cagayan Valley       |
| Manab                |
| Osaka                |
| Severn Morava        |
| Salzburg             |
| Wielkopolskie        |
| Guanajuato           |
| Illinois             |
| Bursa                |
| East Azerbaidzan     |
| Fujian               |
| Ponce                |
| Edo & Delta          |
| Shiga                |
| Kowloon and New Kowl |
| Gurico               |
| Virginia             |
| Sharja               |
| Baskimaa             |
| Ohio                 |
| Pietari              |
| Pohjois-Pohjanmaa    |
| Kaliningrad          |
| Liaoning             |
| Sanaa                |
| Callao               |
| Kedah                |
| Rio de Janeiro       |
| Lombardia            |
| Kursk                |
| Tabuk                |
| Streymoyar           |
| Kujawsko-Pomorskie   |
| Tutuila              |
| Central              |
| Morelos              |
| St George            |
| Santa F              |
| Baki                 |
| Sumqayit             |
| Sousse               |
| Western Cape         |
| Hanoi                |
| Roraima              |
| Baja California      |
| Tongatapu            |
| Adygea               |
| Daugavpils           |
| Tuvassia             |
| Krasnojarsk          |
| Nord-Ouest           |
| Hidalgo              |
| Shimane              |
| Bratislava           |
| Jharkhand            |
| Arecibo              |
| Centre               |
| Par                  |
| Jalisco              |
| Okinawa              |
| Balikesir            |
| Andhra Pradesh       |
| Chihuahua            |
| East Java            |
| Pernambuco           |
| East Kasai           |
| Kurgan               |
| Kermanshah           |
| New Hampshire        |
| Namibe               |
| Ibaragi              |
| Hmelnytskyi          |
| Shaba                |
| Nakhon Sawan         |
| Addis Abeba          |
| Asturia              |
| al-Qadarif           |
| Rio Grande do Sul    |
| Bretagne             |
| St Thomas            |
| Northern             |
| Bauchi & Gombe       |
| Utrecht              |
| al-Sharqiya          |
| Puerto Plata         |
| Sawhaj               |
| Oaxaca               |
| Komi                 |
| Nizni Novgorod       |
| Chuquisaca           |
| KwaZulu-Natal        |
| Nampula              |
| Northern Mindanao    |
| British Colombia     |
| La Romana            |
| Copperbelt           |
| Batna                |
| Tartumaa             |
| Baijeri              |
| Kerman               |
| Sinaloa              |
| Zulia                |
| La Paz               |
| Ziguinchor           |
| Caquet               |
| Irkutsk              |
| Nova Scotia          |
| OHiggins             |
| Hodeida              |
| Nam Ha               |
| Aceh                 |
| Drenthe              |
| Qubec                |
| Gaziantep            |
| Mwanza               |
| Veracruz             |
| Denizli              |
| Ningxia              |
| Stavropol            |
| Baja California Sur  |
| Boyac                |
| al-Daqahliya         |
| Istanbul             |
| Chimborazo           |
| Zufar                |
| Apulia               |
| Lubelskie            |
| Nagano               |
| Kalimantan Barat     |
| Eskisehir            |
| Volgograd            |
| Heilongjiang         |
| Coquimbo             |
| Battambang           |
| Sivas                |
| Gumma                |
| Khanh Hoa            |
| Nghe An              |
| Friuli-Venezia Giuli |
| Mogiljov             |
| Benguela             |
| Mie                  |
| Chari-Baguirmi       |
| Kang-won             |
| Colorado             |
| Carabobo             |
| Ruse                 |
| Toscana              |
| Sumatera Selatan     |
| Tadla-Azilal         |
| Hainan               |
| Ishikawa             |
| Zhejiang             |
| Vojvodina            |
| Vilna                |
| Dolnoslaskie         |
| Sokoto & Kebbi & Zam |
| Bukarest             |
| Huanuco              |
| Tokat                |
| Anzotegui            |
| Mazowieckie          |
| Qaraghandy           |
| Kaohsiung            |
| Campeche             |
| Ninawa               |
| Central Mindanao     |
| Guerrero             |
| Banjul               |
| Loja                 |
| al-Manama            |
| Fejr                 |
| West Greece          |
| Piura                |
| Vaud                 |
+----------------------+
378 rows in set (0.00 sec)



-- ***************************** AGGREGATE FUCTION*************************


-- *********Count**********************

mysql> select count(*) from address;
+----------+
| count(*) |
+----------+
|      603 |
+----------+
1 row in set (0.01 sec)

mysql> select count(*) from city;
+----------+
| count(*) |
+----------+
|      600 |
+----------+
1 row in set (0.00 sec)

mysql> select count( distinct district) from address;
+---------------------------+
| count( distinct district) |
+---------------------------+
|                       378 |
+---------------------------+
1 row in set (0.00 sec)

mysql> desc film;
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| Field                | Type                                                                | Null | Key | Default           | Extra                                         |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
| film_id              | smallint unsigned                                                   | NO   | PRI | NULL              | auto_increment                                |
| title                | varchar(128)                                                        | NO   | MUL | NULL              |                                               |
| description          | text                                                                | YES  |     | NULL              |                                               |
| release_year         | year                                                                | YES  |     | NULL              |                                               |
| language_id          | tinyint unsigned                                                    | NO   | MUL | NULL              |                                               |
| original_language_id | tinyint unsigned                                                    | YES  | MUL | NULL              |                                               |
| rental_duration      | tinyint unsigned                                                    | NO   |     | 3                 |                                               |
| rental_rate          | decimal(4,2)                                                        | NO   |     | 4.99              |                                               |
| replacement_cost     | decimal(5,2)                                                        | NO   |     | 19.99             |                                               |
| rating               | enum('G','PG','PG-13','R','NC-17')                                  | YES  |     | G                 |                                               |
| special_features     | set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') | YES  |     | NULL              |                                               |
| last_update          | timestamp                                                           | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
| length               | smallint                                                            | YES  |     | NULL              |                                               |
+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+
13 rows in set (0.00 sec)

mysql> select * from film limit 10;
+---------+------------------+-----------------------------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+------------------+--------+----------------------------------+---------------------+--------+
| film_id | title            | description                                                                                                           | release_year | language_id | original_language_id | rental_duration | rental_rate | replacement_cost | rating | special_features                 | last_update         | length |
+---------+------------------+-----------------------------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+------------------+--------+----------------------------------+---------------------+--------+
|       1 | ACADEMY DINOSAUR | A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies                      |         2019 |           1 |                 NULL |               6 |        0.99 |            20.99 | PG     | Deleted Scenes,Behind the Scenes | 2020-07-30 18:07:53 |   NULL |
|       2 | ACE GOLDFINGER   | A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China                  |         2018 |           1 |                 NULL |               3 |        4.99 |            12.99 | G      | Trailers,Deleted Scenes          | 2020-07-30 18:07:53 |   NULL |
|       3 | ADAPTATION HOLES | A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory                      |         2017 |           1 |                 NULL |               7 |        2.99 |            18.99 | NC-17  | Trailers,Deleted Scenes          | 2020-07-30 18:07:53 |   NULL |
|       4 | AFFAIR PREJUDICE | A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank                          |         2016 |           1 |                 NULL |               5 |        2.99 |            26.99 | G      | Commentaries,Behind the Scenes   | 2020-07-30 18:07:53 |   NULL |
|       5 | AFRICAN EGG      | A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico |         2019 |           1 |                 NULL |               6 |        2.99 |            22.99 | G      | Deleted Scenes                   | 2020-07-30 18:07:53 |   NULL |
|       6 | AGENT TRUMAN     | A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China                             |         2015 |           1 |                 NULL |               3 |        2.99 |            17.99 | PG     | Deleted Scenes                   | 2020-07-30 18:07:53 |   NULL |
|       7 | AIRPLANE SIERRA  | A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat                                     |         2014 |           1 |                 NULL |               6 |        4.99 |            28.99 | PG-13  | Trailers,Deleted Scenes          | 2020-07-30 18:07:53 |   NULL |
|       8 | AIRPORT POLLOCK  | A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India                                         |         2020 |           1 |                 NULL |               6 |        4.99 |            15.99 | R      | Trailers                         | 2020-07-30 18:07:53 |   NULL |
|       9 | ALABAMA DEVIL    | A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scientist in A Jet Boat   |         2010 |           1 |                 NULL |               3 |        2.99 |            21.99 | PG-13  | Trailers,Deleted Scenes          | 2020-07-30 18:07:53 |   NULL |
|      10 | ALADDIN CALENDAR | A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China                             |         2012 |           2 |                 NULL |               6 |        4.99 |            24.99 | NC-17  | Trailers,Deleted Scenes          | 2020-07-30 18:07:53 |   NULL |
+---------+------------------+-----------------------------------------------------------------------------------------------------------------------+--------------+-------------+----------------------+-----------------+-------------+------------------+--------+----------------------------------+---------------------+--------+
10 rows in set (0.00 sec)

-- *****************MAX*********************

mysql> select max(rental_rate) from film;
+------------------+
| max(rental_rate) |
+------------------+
|             4.99 |
+------------------+
1 row in set (0.00 sec)

mysql> select max( rental_duration) from film;
+-----------------------+
| max( rental_duration) |
+-----------------------+
|                     7 |
+-----------------------+
1 row in set (0.00 sec)

-- *********************AVERAGE************************
mysql> slect avg(rental_duration) from film;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect avg(rental_duration) from film' at line 1
mysql> select avg(rental_duration) from film;
+----------------------+
| avg(rental_duration) |
+----------------------+
|               4.9850 |
+----------------------+
1 row in set (0.00 sec)

-- ***************************** MIN **************************

mysql> select min(rental_duration) from film;
+----------------------+
| min(rental_duration) |
+----------------------+
|                    3 |
+----------------------+
1 row in set (0.00 sec)

-- ************************* SUM *******************
mysql> select sum(rental_duration) from film;
+----------------------+
| sum(rental_duration) |
+----------------------+
|                 4985 |
+----------------------+
1 row in set (0.00 sec)




-- *************************** GROUP BY CLAUSE ***********************************


mysql> select address,district from address order by district;
+----------------------------------------+----------------------+
| address                                | district             |
+----------------------------------------+----------------------+
| 962 Tama Loop                          |                      |
| 18 Duisburg Boulevard                  |                      |
| 1368 Maracabo Boulevard                |                      |
| 535 Ahmadnagar Manor                   | Abu Dhabi            |
| 669 Firozabad Loop                     | Abu Dhabi            |
| 1078 Stara Zagora Drive                | Aceh                 |
| 842 Salzburg Lane                      | Adana                |
| 663 Baha Blanca Parkway                | Adana                |
| 614 Pak Kret Street                    | Addis Abeba          |
| 751 Lima Loop                          | Aden                 |
| 1157 Nyeri Loop                        | Adygea               |
| 387 Mwene-Ditu Drive                   | Ahal                 |
| 775 ostka Drive                        | al-Daqahliya         |
| 1759 Niznekamsk Avenue                 | al-Manama            |
| 1152 Citrus Heights Manor              | al-Qadarif           |
| 1987 Coacalco de Berriozbal Loop       | al-Qalyubiya         |
| 765 Southampton Drive                  | al-Qalyubiya         |
| 289 Santo Andr Manor                   | al-Sharqiya          |
| 1741 Hoshiarpur Boulevard              | al-Sharqiya          |
| 23 Workhaven Lane                      | Alberta              |
| 47 MySakila Drive                      | Alberta              |
| 1679 Antofagasta Street                | Alto Paran           |
| 635 Brest Manor                        | Andhra Pradesh       |
| 230 Urawa Drive                        | Andhra Pradesh       |
| 758 Korolev Parkway                    | Andhra Pradesh       |
| 1966 Tonghae Street                    | Anhalt Sachsen       |
| 1718 Valencia Street                   | Antofagasta          |
| 502 Mandi Bahauddin Parkway            | Anzotegui            |
| 1 Valle de Santiago Avenue             | Apulia               |
| 1009 Zanzibar Lane                     | Arecibo              |
| 733 Mandaluyong Place                  | Asir                 |
| 1963 Moscow Place                      | Assam                |
| 331 Bydgoszcz Parkway                  | Asturia              |
| 201 Effon-Alaiye Way                   | Asuncin              |
| 692 Joliet Street                      | Attika               |
| 1074 Binzhou Manor                     | Baden-Wrttemberg     |
| 319 Springs Loop                       | Baijeri              |
| 785 Vaduz Street                       | Baja California      |
| 184 Mandaluyong Street                 | Baja California Sur  |
| 431 Szkesfehrvr Avenue                 | Baki                 |
| 1912 Emeishan Drive                    | Balikesir            |
| 247 Jining Parkway                     | Banjul               |
| 915 Ponce Place                        | Basel-Stadt          |
| 44 Najafabad Way                       | Baskimaa             |
| 29 Pyongyang Loop                      | Batman               |
| 1924 Shimonoseki Drive                 | Batna                |
| 1768 Udine Loop                        | Battambang           |
| 1936 Lapu-Lapu Parkway                 | Bauchi & Gombe       |
| 1031 Daugavpils Parkway                | Bchar                |
| 486 Ondo Parkway                       | Benguela             |
| 185 Novi Sad Place                     | Bern                 |
| 1948 Bayugan Parkway                   | Bihar                |
| 1425 Shikarpur Manor                   | Bihar                |
| 1747 Rustenburg Place                  | Bihar                |
| 1256 Bislig Boulevard                  | Botosani             |
| 656 Matamoros Drive                    | Boyac                |
| 482 Kowloon and New Kowloon Manor      | Bratislava           |
| 1346 Mysore Drive                      | Bretagne             |
| 983 Santa F Way                        | British Colombia     |
| 1370 Le Mans Avenue                    | Brunei and Muara     |
| 1229 Varanasi (Benares) Manor          | Buenos Aires         |
| 1427 A Corua (La Corua) Place          | Buenos Aires         |
| 1623 Kingstown Drive                   | Buenos Aires         |
| 1244 Allappuzha (Alleppey) Place       | Buenos Aires         |
| 88 Nagaon Manor                        | Buenos Aires         |
| 1926 El Alto Avenue                    | Buenos Aires         |
| 1532 Dzerzinsk Way                     | Buenos Aires         |
| 203 Tambaram Street                    | Buenos Aires         |
| 773 Dallas Manor                       | Buenos Aires         |
| 166 Jinchang Street                    | Buenos Aires         |
| 1342 Abha Boulevard                    | Bukarest             |
| 457 Tongliao Loop                      | Bursa                |
| 862 Xintai Lane                        | Cagayan Valley       |
| 920 Kumbakonam Loop                    | California           |
| 1121 Loja Avenue                       | California           |
| 226 Brest Manor                        | California           |
| 793 Cam Ranh Avenue                    | California           |
| 1135 Izumisano Parkway                 | California           |
| 1895 Zhezqazghan Drive                 | California           |
| 533 al-Ayn Boulevard                   | California           |
| 1866 al-Qatif Avenue                   | California           |
| 770 Bydgoszcz Avenue                   | California           |
| 827 Yuncheng Drive                     | Callao               |
| 1819 Alessandria Loop                  | Campeche             |
| 734 Tanshui Avenue                     | Caquet               |
| 163 Augusta-Richmond County Loop       | Carabobo             |
| 152 Kitwe Parkway                      | Caraga               |
| 1166 Changhwa Street                   | Caraga               |
| 698 Otsu Street                        | Cayenne              |
| 686 Garland Manor                      | Cear                 |
| 470 Boksburg Street                    | Central              |
| 1658 Jastrzebie-Zdrj Loop              | Central              |
| 1628 Nagareyama Lane                   | Central              |
| 1947 Paarl Way                         | Central Java         |
| 544 Malm Parkway                       | Central Java         |
| 935 Aden Boulevard                     | Central Java         |
| 48 Maracabo Place                      | Central Luzon        |
| 947 Trshavn Place                      | Central Luzon        |
| 127 Iwakuni Boulevard                  | Central Luzon        |
| 951 Springs Lane                       | Central Mindanao     |
| 900 Santiago de Compostela Parkway     | Central Serbia       |
| 582 Papeete Loop                       | Central Visayas      |
| 114 Jalib al-Shuyukh Manor             | Centre               |
| 927 Barcelona Street                   | Chaharmahal va Bakht |
| 1551 Rampur Lane                       | Changhwa             |
| 195 Ilorin Street                      | Chari-Baguirmi       |
| 1942 Ciparay Parkway                   | Cheju                |
| 1947 Poos de Caldas Boulevard          | Chiayi               |
| 17 Kabul Boulevard                     | Chiba                |
| 1447 Chatsworth Place                  | Chihuahua            |
| 433 Florencia Street                   | Chihuahua            |
| 1954 Kowloon and New Kowloon Way       | Chimborazo           |
| 269 Cam Ranh Parkway                   | Chisinau             |
| 647 A Corua (La Corua) Street          | Chollanam            |
| 287 Cuautla Boulevard                  | Chuquisaca           |
| 1351 Sousse Lane                       | Coahuila de Zaragoza |
| 261 Saint Louis Way                    | Coahuila de Zaragoza |
| 1789 Saint-Denis Parkway               | Coahuila de Zaragoza |
| 43 Vilnius Manor                       | Colorado             |
| 1836 Korla Parkway                     | Copperbelt           |
| 568 Dhule (Dhulia) Loop                | Coquimbo             |
| 96 Tafuna Way                          | Crdoba               |
| 1673 Tangail Drive                     | Daugavpils           |
| 698 Jelets Boulevard                   | Denizli              |
| 1838 Tabriz Lane                       | Dhaka                |
| 262 A Corua (La Corua) Parkway         | Dhaka                |
| 1816 Bydgoszcz Loop                    | Dhaka                |
| 981 Kumbakonam Place                   | Distrito Federal     |
| 1378 Alvorada Avenue                   | Distrito Federal     |
| 505 Madiun Boulevard                   | Dolnoslaskie         |
| 1854 Okara Boulevard                   | Drenthe              |
| 600 Bradford Street                    | East Azerbaidzan     |
| 154 Oshawa Manor                       | East Java            |
| 519 Brescia Parkway                    | East Java            |
| 1519 Santiago de los Caballeros Loop   | East Kasai           |
| 492 Cam Ranh Street                    | Eastern Visayas      |
| 1279 Udine Parkway                     | Edo & Delta          |
| 1497 Yuzhou Drive                      | England              |
| 1584 Ljubertsy Lane                    | England              |
| 808 Naala-Porto Parkway                | England              |
| 869 Shikarpur Way                      | England              |
| 360 Toulouse Parkway                   | England              |
| 1515 Korla Way                         | England              |
| 1557 Ktahya Boulevard                  | England              |
| 1531 Sal Drive                         | Esfahan              |
| 1922 Miraj Way                         | Esfahan              |
| 76 Kermanshah Manor                    | Esfahan              |
| 1269 Ipoh Avenue                       | Eskisehir            |
| 306 Antofagasta Place                  | Esprito Santo        |
| 42 Fontana Avenue                      | Fejr                 |
| 1309 Weifang Street                    | Florida              |
| 1427 Tabuk Place                       | Florida              |
| 898 Belm Manor                         | Free State           |
| 1986 Sivas Place                       | Friuli-Venezia Giuli |
| 1308 Sumy Loop                         | Fujian               |
| 1148 Saarbrcken Parkway                | Fukushima            |
| 454 Patiala Lane                       | Fukushima            |
| 454 Nakhon Sawan Boulevard             | Funafuti             |
| 1764 Jalib al-Shuyukh Parkway          | Galicia              |
| 939 Probolinggo Loop                   | Galicia              |
| 1469 Plock Lane                        | Galicia              |
| 475 Atinsk Way                         | Gansu                |
| 362 Rajkot Lane                        | Gansu                |
| 929 Tallahassee Loop                   | Gauteng              |
| 569 Baicheng Lane                      | Gauteng              |
| 270 Tambaram Parkway                   | Gauteng              |
| 999 Sanaa Loop                         | Gauteng              |
| 984 Novoterkassk Loop                  | Gaziantep            |
| 1217 Konotop Avenue                    | Gelderland           |
| 1749 Daxian Place                      | Gelderland           |
| 1308 Arecibo Way                       | Georgia              |
| 1287 Xiangfan Boulevard                | Gifu                 |
| 984 Effon-Alaiye Avenue                | Gois                 |
| 356 Olomouc Manor                      | Gois                 |
| 758 Junan Lane                         | Gois                 |
| 1839 Szkesfehrvr Parkway               | Gois                 |
| 1201 Qomsheh Manor                     | Gois                 |
| 397 Sunnyvale Avenue                   | Guanajuato           |
| 86 Higashiosaka Lane                   | Guanajuato           |
| 1402 Zanzibar Boulevard                | Guanajuato           |
| 144 South Hill Loop                    | Guanajuato           |
| 1269 Botosani Manor                    | Guangdong            |
| 1909 Dayton Avenue                     | Guangdong            |
| 1952 Chatsworth Drive                  | Guangdong            |
| 686 Donostia-San Sebastin Lane         | Guangdong            |
| 760 Miyakonojo Drive                   | Guerrero             |
| 1967 Sincelejo Place                   | Gujarat              |
| 1447 Imus Place                        | Gujarat              |
| 97 Mogiljov Lane                       | Gujarat              |
| 1949 Sanya Street                      | Gumma                |
| 544 Tarsus Boulevard                   | Gurico               |
| 632 Usolje-Sibirskoje Parkway          | Ha Darom             |
| 659 Vaduz Drive                        | Ha Darom             |
| 390 Wroclaw Way                        | Hainan               |
| 1149 A Corua (La Corua) Boulevard      | Haiphong             |
| 478 Joliet Way                         | Hamilton             |
| 68 Ponce Parkway                       | Hanoi                |
| 808 Bhopal Manor                       | Haryana              |
| 1884 Shikarpur Avenue                  | Haryana              |
| 1229 Valencia Parkway                  | Haskovo              |
| 346 Skikda Parkway                     | Hawalli              |
| 1246 Boksburg Parkway                  | Hebei                |
| 1325 Fukuyama Street                   | Heilongjiang         |
| 1574 Goinia Boulevard                  | Heilongjiang         |
| 1440 Fukuyama Loop                     | Henan                |
| 867 Benin City Avenue                  | Henan                |
| 1909 Benguela Lane                     | Henan                |
| 1698 Southport Loop                    | Hidalgo              |
| 966 Asuncin Way                        | Hidalgo              |
| 124 al-Manama Way                      | Hiroshima            |
| 1635 Kuwana Boulevard                  | Hiroshima            |
| 928 Jaffna Loop                        | Hiroshima            |
| 1793 Meixian Place                     | Hmelnytskyi          |
| 434 Ourense (Orense) Manor             | Hodeida              |
| 1746 Faaa Way                          | Huanuco              |
| 1103 Bilbays Parkway                   | Hubei                |
| 1778 Gijn Manor                        | Hubei                |
| 1774 Yaound Place                      | Hubei                |
| 804 Elista Drive                       | Hubei                |
| 1557 Cape Coral Parkway                | Hubei                |
| 1762 Paarl Parkway                     | Hunan                |
| 1586 Guaruj Place                      | Hunan                |
| 102 Chapra Drive                       | Ibaragi              |
| 786 Matsue Way                         | Illinois             |
| 1485 Bratislava Place                  | Illinois             |
| 1980 Kamjanets-Podilskyi Street        | Illinois             |
| 587 Benguela Manor                     | Illinois             |
| 832 Nakhon Sawan Manor                 | Inner Mongolia       |
| 1587 Sullana Lane                      | Inner Mongolia       |
| 105 Dzerzinsk Manor                    | Inner Mongolia       |
| 1837 Kaduna Parkway                    | Inner Mongolia       |
| 1621 Tongliao Avenue                   | Irkutsk              |
| 1421 Quilmes Lane                      | Ishikawa             |
| 319 Plock Parkway                      | Istanbul             |
| 1867 San Juan Bautista Tuxtepec Avenue | Ivanovo              |
| 456 Escobar Way                        | Jakarta Raya         |
| 817 Laredo Avenue                      | Jalisco              |
| 1088 Ibirit Place                      | Jalisco              |
| 810 Palghat (Palakkad) Boulevard       | Jaroslavl            |
| 604 Bern Place                         | Jharkhand            |
| 1596 Acua Parkway                      | Jharkhand            |
| 500 Lincoln Parkway                    | Jiangsu              |
| 817 Bradford Loop                      | Jiangsu              |
| 1294 Firozabad Drive                   | Jiangxi              |
| 183 Haiphong Street                    | Jilin                |
| 1333 Haldia Street                     | Jilin                |
| 1168 Najafabad Parkway                 | Kabol                |
| 320 Brest Avenue                       | Kaduna               |
| 885 Yingkou Manor                      | Kaduna               |
| 1152 al-Qatif Lane                     | Kalimantan Barat     |
| 1883 Maikop Lane                       | Kaliningrad          |
| 270 Toulon Boulevard                   | Kalmykia             |
| 586 Tete Way                           | Kanagawa             |
| 1542 Tarlac Parkway                    | Kanagawa             |
| 193 Bhusawal Place                     | Kang-won             |
| 1568 Celaya Parkway                    | Kaohsiung            |
| 788 Atinsk Street                      | Karnataka            |
| 1964 Gijn Manor                        | Karnataka            |
| 1213 Ranchi Parkway                    | Karnataka            |
| 1257 Guadalajara Street                | Karnataka            |
| 1049 Matamoros Parkway                 | Karnataka            |
| 715 So Bernardo do Campo Lane          | Kedah                |
| 431 Xiangtan Avenue                    | Kerala               |
| 1519 Ilorin Place                      | Kerala               |
| 956 Nam Dinh Manor                     | Kerman               |
| 220 Hidalgo Drive                      | Kermanshah           |
| 1817 Livorno Way                       | Khanh Hoa            |
| 617 Klerksdorp Place                   | Khanh Hoa            |
| 115 Hidalgo Parkway                    | Khartum              |
| 374 Bat Yam Boulevard                  | Kilis                |
| 1089 Iwatsuki Avenue                   | Kirov                |
| 850 Salala Loop                        | Kitaa                |
| 1823 Hoshiarpur Lane                   | Komi                 |
| 1912 Allende Manor                     | Kowloon and New Kowl |
| 1378 Beira Loop                        | Krasnojarsk          |
| 616 Hagonoy Avenue                     | Krasnojarsk          |
| 927 Baha Blanca Parkway                | Krim                 |
| 848 Tafuna Manor                       | Ktahya               |
| 1769 Iwaki Lane                        | Kujawsko-Pomorskie   |
| 1618 Olomouc Manor                     | Kurgan               |
| 746 Joliet Lane                        | Kursk                |
| 1177 Jelets Way                        | Kwara & Kogi         |
| 1766 Almirante Brown Street            | KwaZulu-Natal        |
| 1497 Fengshan Drive                    | KwaZulu-Natal        |
| 300 Junan Street                       | Kyonggi              |
| 588 Vila Velha Manor                   | Kyongsangbuk         |
| 659 Gatineau Boulevard                 | La Paz               |
| 1245 Ibirit Way                        | La Romana            |
| 1908 Gaziantep Place                   | Liaoning             |
| 1993 0 Loop                            | Liaoning             |
| 844 Bucuresti Place                    | Liaoning             |
| 1780 Hino Boulevard                    | Liepaja              |
| 710 San Felipe del Progreso Avenue     | Lilongwe             |
| 1175 Tanauan Way                       | Lima                 |
| 1998 Halifax Drive                     | Lipetsk              |
| 1913 Kamakura Place                    | Lipetsk              |
| 1074 Sanaa Parkway                     | Loja                 |
| 231 Kaliningrad Place                  | Lombardia            |
| 1224 Huejutla de Reyes Boulevard       | Lombardia            |
| 414 Mandaluyong Street                 | Lubelskie            |
| 45 Aparecida de Goinia Place           | Madhya Pradesh       |
| 57 Arlington Manor                     | Madhya Pradesh       |
| 419 Iligan Lane                        | Madhya Pradesh       |
| 320 Baiyin Parkway                     | Mahajanga            |
| 495 Bhimavaram Lane                    | Maharashtra          |
| 943 Johannesburg Avenue                | Maharashtra          |
| 651 Pathankot Loop                     | Maharashtra          |
| 922 Vila Velha Loop                    | Maharashtra          |
| 41 El Alto Parkway                     | Maharashtra          |
| 1540 Wroclaw Drive                     | Maharashtra          |
| 642 Nador Drive                        | Maharashtra          |
| 816 Cayenne Parkway                    | Manab                |
| 1566 Inegl Manor                       | Mandalay             |
| 334 Munger (Monghyr) Lane              | Markazi              |
| 613 Korolev Drive                      | Masqat               |
| 782 Mosul Street                       | Massachusetts        |
| 1501 Pangkal Pinang Avenue             | Mazowieckie          |
| 1124 Buenaventura Drive                | Mekka                |
| 725 Isesaki Place                      | Mekka                |
| 879 Newcastle Way                      | Michigan             |
| 1944 Bamenda Way                       | Michigan             |
| 781 Shimonoseki Drive                  | Michoacn de Ocampo   |
| 251 Florencia Drive                    | Michoacn de Ocampo   |
| 391 Callao Drive                       | Midi-Pyrnes          |
| 958 Sagamihara Lane                    | Mie                  |
| 1338 Zalantun Lane                     | Minas Gerais         |
| 543 Bergamo Avenue                     | Minas Gerais         |
| 32 Liaocheng Way                       | Minas Gerais         |
| 1027 Songkhla Manor                    | Minsk                |
| 1848 Salala Boulevard                  | Miranda              |
| 1717 Guadalajara Lane                  | Missouri             |
| 1191 Sungai Petani Boulevard           | Missouri             |
| 752 Ondo Loop                          | Miyazaki             |
| 556 Asuncin Way                        | Mogiljov             |
| 186 Skikda Lane                        | Morelos              |
| 479 San Felipe del Progreso Avenue     | Morelos              |
| 46 Pjatigorsk Lane                     | Moscow (City)        |
| 1623 Baha Blanca Manor                 | Moskova              |
| 954 Lapu-Lapu Way                      | Moskova              |
| 1697 Kowloon and New Kowloon Loop      | Moskova              |
| 1407 Surakarta Manor                   | Moskova              |
| 64 Korla Street                        | Mwanza               |
| 1002 Ahmadnagar Manor                  | Mxico                |
| 1107 Nakhon Sawan Avenue               | Mxico                |
| 1145 Vilnius Manor                     | Mxico                |
| 1473 Changhwa Parkway                  | Mxico                |
| 496 Celaya Drive                       | Nagano               |
| 1913 Hanoi Way                         | Nagasaki             |
| 1337 Mit Ghamr Avenue                  | Nakhon Sawan         |
| 1786 Salinas Place                     | Nam Ha               |
| 368 Hunuco Boulevard                   | Namibe               |
| 596 Huixquilucan Place                 | Nampula              |
| 1923 Stara Zagora Lane                 | Nantou               |
| 53 Idfu Parkway                        | Nantou               |
| 1831 Nam Dinh Loop                     | National Capital Reg |
| 89 Allappuzha (Alleppey) Manor         | National Capital Reg |
| 1214 Hanoi Way                         | Nebraska             |
| 401 Sucre Boulevard                    | New Hampshire        |
| 600 Purnea (Purnia) Avenue             | Nghe An              |
| 1208 Tama Loop                         | Ninawa               |
| 1297 Alvorada Parkway                  | Ningxia              |
| 740 Udaipur Lane                       | Nizni Novgorod       |
| 1632 Bislig Avenue                     | Nonthaburi           |
| 741 Ambattur Manor                     | Noord-Brabant        |
| 1641 Changhwa Place                    | Nord-Ouest           |
| 442 Rae Bareli Place                   | Nordrhein-Westfalen  |
| 68 Molodetno Manor                     | Nordrhein-Westfalen  |
| 1792 Valle de la Pascua Place          | Nordrhein-Westfalen  |
| 1440 Compton Place                     | North Austria        |
| 369 Papeete Way                        | North Carolina       |
| 682 Junan Way                          | North West           |
| 1639 Saarbrcken Drive                  | North West           |
| 692 Amroha Drive                       | Northern             |
| 1417 Lancaster Avenue                  | Northern Cape        |
| 118 Jaffna Loop                        | Northern Mindanao    |
| 1351 Aparecida de Goinia Parkway       | Northern Mindanao    |
| 1688 Okara Way                         | Nothwest Border Prov |
| 1844 Usak Avenue                       | Nova Scotia          |
| 447 Surakarta Loop                     | Nyanza               |
| 355 Vitria de Santo Anto Way           | Oaxaca               |
| 1872 Toulon Loop                       | OHiggins             |
| 98 Pyongyang Boulevard                 | Ohio                 |
| 32 Pudukkottai Lane                    | Ohio                 |
| 1404 Taguig Drive                      | Okayama              |
| 591 Sungai Petani Drive                | Okayama              |
| 61 Tama Street                         | Okayama              |
| 1565 Tangail Manor                     | Okinawa              |
| 955 Bamenda Way                        | Ondo & Ekiti         |
| 1367 Yantai Manor                      | Ondo & Ekiti         |
| 1006 Santa Brbara dOeste Manor         | Ondo & Ekiti         |
| 891 Novi Sad Manor                     | Ontario              |
| 432 Garden Grove Street                | Ontario              |
| 548 Uruapan Street                     | Ontario              |
| 671 Graz Street                        | Oriental             |
| 767 Pyongyang Drive                    | Osaka                |
| 446 Kirovo-Tepetsk Lane                | Osaka                |
| 270 Amroha Parkway                     | Osmaniye             |
| 786 Stara Zagora Way                   | Oyo & Osun           |
| 1155 Liaocheng Place                   | Oyo & Osun           |
| 556 Baybay Manor                       | Oyo & Osun           |
| 1888 Kabul Drive                       | Oyo & Osun           |
| 1163 London Parkway                    | Par                  |
| 829 Grand Prairie Way                  | Paran                |
| 602 Paarl Street                       | Pavlodar             |
| 1740 Le Mans Loop                      | Pays de la Loire     |
| 316 Uruapan Street                     | Perak                |
| 1133 Rizhao Avenue                     | Pernambuco           |
| 754 Valencia Place                     | Phnom Penh           |
| 127 Purnea (Purnia) Manor              | Piemonte             |
| 661 Chisinau Lane                      | Pietari              |
| 1103 Quilmes Boulevard                 | Piura                |
| 898 Jining Lane                        | Pohjois-Pohjanmaa    |
| 1405 Chisinau Place                    | Ponce                |
| 1386 Yangor Avenue                     | Provence-Alpes-Cte   |
| 125 Citt del Vaticano Boulevard        | Puebla               |
| 437 Chungho Drive                      | Puerto Plata         |
| 791 Salinas Street                     | Punjab               |
| 951 Stara Zagora Manor                 | Punjab               |
| 1697 Tanauan Lane                      | Punjab               |
| 1820 Maring Parkway                    | Punjab               |
| 734 Bchar Place                        | Punjab               |
| 1386 Nakhon Sawan Boulevard            | Pyongyang-si         |
| 521 San Juan Bautista Tuxtepec Place   | Qaraghandy           |
| 1736 Cavite Place                      | Qina                 |
| 28 MySQL Boulevard                     | QLD                  |
| 1411 Lillydale Drive                   | QLD                  |
| 1153 Allende Way                       | Qubec                |
| 28 Charlotte Amalie Street             | Rabat-Sal-Zammour-Z  |
| 1877 Ezhou Lane                        | Rajasthan            |
| 60 Poos de Caldas Street               | Rajasthan            |
| 43 Dadu Avenue                         | Rajasthan            |
| 81 Hodeida Way                         | Rajasthan            |
| 1354 Siegen Street                     | Rio de Janeiro       |
| 1407 Pachuca de Soto Place             | Rio Grande do Sul    |
| 614 Denizli Parkway                    | Rio Grande do Sul    |
| 1190 0 Place                           | Rio Grande do Sul    |
| 1410 Benin City Parkway                | Risaralda            |
| 241 Mosul Lane                         | Risaralda            |
| 1293 Nam Dinh Way                      | Roraima              |
| 1077 San Felipe de Puerto Plata Place  | Rostov-na-Donu       |
| 191 Jos Azueta Parkway                 | Ruse                 |
| 430 Alessandria Loop                   | Saarland             |
| 51 Laredo Avenue                       | Sagaing              |
| 1952 Pune Lane                         | Saint-Denis          |
| 1266 Laredo Parkway                    | Saitama              |
| 1337 Lincoln Parkway                   | Saitama              |
| 168 Cianjur Manor                      | Saitama              |
| 1587 Loja Manor                        | Salzburg             |
| 687 Alessandria Parkway                | Sanaa                |
| 1304 s-Hertogenbosch Way               | Santa Catarina       |
| 430 Kumbakonam Drive                   | Santa F              |
| 532 Toulon Street                      | Santiago             |
| 1114 Liepaja Street                    | Sarawak              |
| 1727 Matamoros Place                   | Sawhaj               |
| 483 Ljubertsy Parkway                  | Scotland             |
| 682 Halisahar Place                    | Severn Morava        |
| 514 Ife Way                            | Shaba                |
| 85 San Felipe de Puerto Plata Drive    | Shandong             |
| 1464 Kursk Parkway                     | Shandong             |
| 1332 Gaziantep Lane                    | Shandong             |
| 1060 Tandil Lane                       | Shandong             |
| 415 Pune Avenue                        | Shandong             |
| 1560 Jelets Boulevard                  | Shandong             |
| 1854 Tieli Street                      | Shandong             |
| 722 Bradford Lane                      | Shandong             |
| 1322 Mosul Parkway                     | Shandong             |
| 798 Cianjur Avenue                     | Shanxi               |
| 1158 Mandi Bahauddin Parkway           | Shanxi               |
| 1192 Tongliao Street                   | Sharja               |
| 1336 Benin City Drive                  | Shiga                |
| 619 Hunuco Avenue                      | Shimane              |
| 753 Ilorin Avenue                      | Sichuan              |
| 1966 Amroha Avenue                     | Sichuan              |
| 1052 Pathankot Avenue                  | Sichuan              |
| 814 Simferopol Loop                    | Sinaloa              |
| 934 San Felipe de Puerto Plata Street  | Sind                 |
| 966 Arecibo Loop                       | Sind                 |
| 1926 Gingoog Street                    | Sisilia              |
| 680 A Corua (La Corua) Manor           | Sivas                |
| 757 Rustenburg Avenue                  | Skikda               |
| 1150 Kimchon Manor                     | Skne ln              |
| 1405 Hagonoy Avenue                    | Slaskie              |
| 1642 Charlotte Amalie Drive            | Slaskie              |
| 1050 Garden Grove Avenue               | Slaskie              |
| 801 Hagonoy Drive                      | Smolensk             |
| 1891 Rizhao Boulevard                  | So Paulo             |
| 1206 Dos Quebradas Place               | So Paulo             |
| 1715 Okayama Street                    | So Paulo             |
| 1692 Ede Loop                          | So Paulo             |
| 1666 Qomsheh Drive                     | So Paulo             |
| 519 Nyeri Manor                        | So Paulo             |
| 1957 Yantai Lane                       | So Paulo             |
| 259 Ipoh Drive                         | So Paulo             |
| 771 Yaound Manor                       | Sofala               |
| 1342 Sharja Way                        | Sokoto & Kebbi & Zam |
| 870 Ashqelon Loop                      | Songkhla             |
| 507 Smolensk Loop                      | Sousse               |
| 217 Botshabelo Place                   | Southern Mindanao    |
| 953 Hodeida Street                     | Southern Tagalog     |
| 1479 Rustenburg Boulevard              | Southern Tagalog     |
| 1061 Ede Avenue                        | Southern Tagalog     |
| 1191 Tandil Drive                      | Southern Tagalog     |
| 1176 Southend-on-Sea Manor             | Southern Tagalog     |
| 717 Changzhou Lane                     | Southern Tagalog     |
| 1016 Iwakuni Street                    | St George            |
| 264 Bhimavaram Manor                   | St Thomas            |
| 185 Mannheim Lane                      | Stavropol            |
| 1010 Klerksdorp Way                    | Steiermark           |
| 1359 Zhoushan Parkway                  | Streymoyar           |
| 1740 Portoviejo Avenue                 | Sucre                |
| 1079 Tel Aviv-Jaffa Boulevard          | Sucre                |
| 1688 Nador Lane                        | Sulawesi Utara       |
| 1658 Cuman Loop                        | Sumatera Selatan     |
| 503 Sogamoso Loop                      | Sumqayit             |
| 421 Yaound Street                      | Sumy                 |
| 182 Nukualofa Drive                    | Sumy                 |
| 140 Chiayi Parkway                     | Sumy                 |
| 605 Rio Claro Parkway                  | Tabora               |
| 780 Kimberley Way                      | Tabuk                |
| 454 Qinhuangdao Drive                  | Tadla-Azilal         |
| 1447 Imus Way                          | Tahiti               |
| 1668 Saint Louis Place                 | Tahiti               |
| 1489 Kakamigahara Lane                 | Taipei               |
| 381 Kabul Way                          | Taipei               |
| 1668 Anpolis Street                    | Taipei               |
| 608 Birgunj Parkway                    | Taipei               |
| 1001 Miyakonojo Lane                   | Taizz                |
| 1752 So Leopoldo Parkway               | Taka-Karpatia        |
| 146 Johannesburg Way                   | Tamaulipas           |
| 990 Etawah Loop                        | Tamil Nadu           |
| 1993 Tabuk Lane                        | Tamil Nadu           |
| 1661 Abha Drive                        | Tamil Nadu           |
| 1675 Xiangfan Manor                    | Tamil Nadu           |
| 1014 Loja Manor                        | Tamil Nadu           |
| 1289 Belm Boulevard                    | Tartumaa             |
| 909 Garland Manor                      | Tatarstan            |
| 207 Cuernavaca Loop                    | Tatarstan            |
| 1542 Lubumbashi Boulevard              | Tel Aviv             |
| 97 Shimoga Avenue                      | Tel Aviv             |
| 1666 Beni-Mellal Place                 | Tennessee            |
| 682 Garden Grove Place                 | Tennessee            |
| 1599 Plock Drive                       | Tete                 |
| 530 Lausanne Lane                      | Texas                |
| 913 Coacalco de Berriozbal Loop        | Texas                |
| 1795 Santiago de Compostela Way        | Texas                |
| 333 Goinia Way                         | Texas                |
| 1894 Boa Vista Way                     | Texas                |
| 1760 Oshawa Manor                      | Tianjin              |
| 539 Hami Way                           | Tokat                |
| 923 Tangail Boulevard                  | Tokyo-to             |
| 345 Oshawa Boulevard                   | Tokyo-to             |
| 1516 Escobar Drive                     | Tongatapu            |
| 379 Lublin Parkway                     | Toscana              |
| 1483 Pathankot Street                  | Tucumn               |
| 1892 Nabereznyje Telny Lane            | Tutuila              |
| 469 Nakhon Sawan Street                | Tuvassia             |
| 1215 Pyongyang Parkway                 | Usak                 |
| 992 Klerksdorp Loop                    | Utrecht              |
| 211 Chiayi Drive                       | Uttar Pradesh        |
| 866 Shivapuri Manor                    | Uttar Pradesh        |
| 9 San Miguel de Tucumn Manor           | Uttar Pradesh        |
| 949 Allende Lane                       | Uttar Pradesh        |
| 1920 Weifang Avenue                    | Uttar Pradesh        |
| 176 Mandaluyong Place                  | Uttar Pradesh        |
| 936 Salzburg Lane                      | Uttar Pradesh        |
| 117 Boa Vista Way                      | Uttar Pradesh        |
| 943 Tokat Street                       | Vaduz                |
| 98 Stara Zagora Boulevard              | Valle                |
| 1331 Usak Boulevard                    | Vaud                 |
| 1785 So Bernardo do Campo Street       | Veracruz             |
| 1059 Yuncheng Avenue                   | Vilna                |
| 1936 Cuman Avenue                      | Virginia             |
| 1917 Kumbakonam Parkway                | Vojvodina            |
| 886 Tonghae Place                      | Volgograd            |
| 660 Jedda Boulevard                    | Washington           |
| 1027 Banjul Place                      | West Bengali         |
| 126 Acua Parkway                       | West Bengali         |
| 1704 Tambaram Manor                    | West Bengali         |
| 435 0 Way                              | West Bengali         |
| 1197 Sokoto Boulevard                  | West Bengali         |
| 33 Gorontalo Way                       | West Bengali         |
| 1013 Tabuk Boulevard                   | West Bengali         |
| 954 Kimchon Place                      | West Bengali         |
| 624 Oshawa Boulevard                   | West Bengali         |
| 1101 Bucuresti Boulevard               | West Greece          |
| 1860 Taguig Loop                       | West Java            |
| 1445 Carmen Parkway                    | West Java            |
| 1003 Qinhuangdao Street                | West Java            |
| 47 Syktyvkar Lane                      | West Java            |
| 1443 Mardan Street                     | Western Cape         |
| 906 Goinia Way                         | Wielkopolskie        |
| 154 Tallahassee Loop                   | Xinxiang             |
| 226 Halifax Street                     | Xinxiang             |
| 786 Aurora Avenue                      | Yamaguchi            |
| 1964 Allappuzha (Alleppey) Street      | Yamaguchi            |
| 42 Brindisi Place                      | Yerevan              |
| 1029 Dzerzinsk Manor                   | Ynlin                |
| 1842 Luzinia Boulevard                 | Zanzibar West        |
| 346 Cam Ranh Avenue                    | Zhejiang             |
| 904 Clarksville Drive                  | Zhejiang             |
| 1889 Valparai Way                      | Ziguinchor           |
| 1416 San Juan Bautista Tuxtepec Avenue | Zufar                |
| 138 Caracas Boulevard                  | Zulia                |
+----------------------------------------+----------------------+
603 rows in set (0.01 sec)

mysql>  select district , count(*) from address group by district;
+----------------------+----------+
| district             | count(*) |
+----------------------+----------+
| Alberta              |        2 |
| QLD                  |        2 |
| Nagasaki             |        1 |
| California           |        9 |
| Attika               |        1 |
| Mandalay             |        1 |
| Nantou               |        2 |
| Texas                |        5 |
| Central Serbia       |        1 |
| Hamilton             |        1 |
| Masqat               |        1 |
| Esfahan              |        3 |
| Kanagawa             |        2 |
| Haryana              |        2 |
| Osmaniye             |        1 |
| Madhya Pradesh       |        3 |
| England              |        7 |
| Kalmykia             |        1 |
| Kaduna               |        2 |
| Northern Cape        |        1 |
| Nothwest Border Prov |        1 |
| Dhaka                |        3 |
| Rabat-Sal-Zammour-Z  |        1 |
| Liepaja              |        1 |
| Crdoba               |        1 |
| Sind                 |        2 |
|                      |        3 |
| Southern Mindanao    |        1 |
| Bihar                |        3 |
| Yamaguchi            |        2 |
| Taipei               |        4 |
| West Bengali         |        9 |
| Uttar Pradesh        |        8 |
| Piemonte             |        1 |
| Okayama              |        3 |
| Midi-Pyrnes          |        1 |
| Markazi              |        1 |
| Henan                |        3 |
| Chisinau             |        1 |
| Esprito Santo        |        1 |
| Oriental             |        1 |
| Yerevan              |        1 |
| Nonthaburi           |        1 |
| Tahiti               |        2 |
| Lipetsk              |        2 |
| Antofagasta          |        1 |
| Moscow (City)        |        1 |
| Cear                 |        1 |
| Tatarstan            |        2 |
| Mekka                |        2 |
| Khartum              |        1 |
| Galicia              |        3 |
| Chiba                |        1 |
| Moskova              |        4 |
| Vaduz                |        1 |
| Sarawak              |        1 |
| Karnataka            |        5 |
| Rajasthan            |        4 |
| Basel-Stadt          |        1 |
| Missouri             |        2 |
| Nebraska             |        1 |
| Sichuan              |        3 |
| Cayenne              |        1 |
| Skne ln              |        1 |
| Hunan                |        2 |
| Bchar                |        1 |
| Eastern Visayas      |        1 |
| National Capital Reg |        2 |
| Chiayi               |        1 |
| So Paulo             |        8 |
| Changhwa             |        1 |
| Pavlodar             |        1 |
| Oyo & Osun           |        4 |
| Mahajanga            |        1 |
| Krim                 |        1 |
| Gauteng              |        4 |
| Puebla               |        1 |
| Songkhla             |        1 |
| Sucre                |        2 |
| Cheju                |        1 |
| Buenos Aires         |       10 |
| Guangdong            |        4 |
| Brunei and Muara     |        1 |
| Gois                 |        5 |
| Inner Mongolia       |        4 |
| Caraga               |        2 |
| Punjab               |        5 |
| Georgia              |        1 |
| Tete                 |        1 |
| Abu Dhabi            |        2 |
| Kyongsangbuk         |        1 |
| Asir                 |        1 |
| Ha Darom             |        2 |
| Kwara & Kogi         |        1 |
| Provence-Alpes-Cte   |        1 |
| Funafuti             |        1 |
| Ivanovo              |        1 |
| Mxico                |        4 |
| North West           |        2 |
| Hubei                |        5 |
| Distrito Federal     |        2 |
| Nordrhein-Westfalen  |        3 |
| Central Java         |        3 |
| Gujarat              |        3 |
| al-Qalyubiya         |        2 |
| Risaralda            |        2 |
| Lima                 |        1 |
| Ktahya               |        1 |
| Smolensk             |        1 |
| Slaskie              |        3 |
| Shandong             |        9 |
| Taka-Karpatia        |        1 |
| Free State           |        1 |
| Coahuila de Zaragoza |        3 |
| Maharashtra          |        7 |
| Gelderland           |        2 |
| Ynlin                |        1 |
| Tennessee            |        2 |
| Hiroshima            |        3 |
| Scotland             |        1 |
| Kilis                |        1 |
| Minsk                |        1 |
| Michigan             |        2 |
| Saitama              |        3 |
| Saint-Denis          |        1 |
| Massachusetts        |        1 |
| Michoacn de Ocampo   |        2 |
| Assam                |        1 |
| Jakarta Raya         |        1 |
| Shanxi               |        2 |
| Bern                 |        1 |
| Ondo & Ekiti         |        3 |
| Pyongyang-si         |        1 |
| North Carolina       |        1 |
| North Austria        |        1 |
| Tel Aviv             |        2 |
| Pays de la Loire     |        1 |
| Gifu                 |        1 |
| Adana                |        2 |
| Xinxiang             |        2 |
| Lilongwe             |        1 |
| Gansu                |        2 |
| Jiangxi              |        1 |
| Perak                |        1 |
| Batman               |        1 |
| Steiermark           |        1 |
| Miranda              |        1 |
| Kerala               |        2 |
| Skikda               |        1 |
| Tamaulipas           |        1 |
| Kirov                |        1 |
| Noord-Brabant        |        1 |
| Chaharmahal va Bakht |        1 |
| Sumy                 |        3 |
| Ontario              |        3 |
| Tabora               |        1 |
| Rostov-na-Donu       |        1 |
| Nyanza               |        1 |
| Tokyo-to             |        2 |
| Baden-Wrttemberg     |        1 |
| Jiangsu              |        2 |
| Haiphong             |        1 |
| Ahal                 |        1 |
| Sulawesi Utara       |        1 |
| Usak                 |        1 |
| Alto Paran           |        1 |
| Santa Catarina       |        1 |
| Kitaa                |        1 |
| Aden                 |        1 |
| Jilin                |        2 |
| Washington           |        1 |
| Taizz                |        1 |
| Haskovo              |        1 |
| Kabol                |        1 |
| Zanzibar West        |        1 |
| Sisilia              |        1 |
| Jaroslavl            |        1 |
| Tamil Nadu           |        5 |
| Asuncin              |        1 |
| Saarland             |        1 |
| Phnom Penh           |        1 |
| Botosani             |        1 |
| Qina                 |        1 |
| Hawalli              |        1 |
| Valle                |        1 |
| Southern Tagalog     |        6 |
| Chollanam            |        1 |
| West Java            |        4 |
| Fukushima            |        2 |
| Hebei                |        1 |
| Tucumn               |        1 |
| Central Visayas      |        1 |
| Kyonggi              |        1 |
| Paran                |        1 |
| Florida              |        2 |
| Tianjin              |        1 |
| Anhalt Sachsen       |        1 |
| Miyazaki             |        1 |
| Minas Gerais         |        3 |
| Central Luzon        |        3 |
| Sagaing              |        1 |
| Sofala               |        1 |
| Santiago             |        1 |
| Cagayan Valley       |        1 |
| Manab                |        1 |
| Osaka                |        2 |
| Severn Morava        |        1 |
| Salzburg             |        1 |
| Wielkopolskie        |        1 |
| Guanajuato           |        4 |
| Illinois             |        4 |
| Bursa                |        1 |
| East Azerbaidzan     |        1 |
| Fujian               |        1 |
| Ponce                |        1 |
| Edo & Delta          |        1 |
| Shiga                |        1 |
| Kowloon and New Kowl |        1 |
| Gurico               |        1 |
| Virginia             |        1 |
| Sharja               |        1 |
| Baskimaa             |        1 |
| Ohio                 |        2 |
| Pietari              |        1 |
| Pohjois-Pohjanmaa    |        1 |
| Kaliningrad          |        1 |
| Liaoning             |        3 |
| Sanaa                |        1 |
| Callao               |        1 |
| Kedah                |        1 |
| Rio de Janeiro       |        1 |
| Lombardia            |        2 |
| Kursk                |        1 |
| Tabuk                |        1 |
| Streymoyar           |        1 |
| Kujawsko-Pomorskie   |        1 |
| Tutuila              |        1 |
| Central              |        3 |
| Morelos              |        2 |
| St George            |        1 |
| Santa F              |        1 |
| Baki                 |        1 |
| Sumqayit             |        1 |
| Sousse               |        1 |
| Western Cape         |        1 |
| Hanoi                |        1 |
| Roraima              |        1 |
| Baja California      |        1 |
| Tongatapu            |        1 |
| Adygea               |        1 |
| Daugavpils           |        1 |
| Tuvassia             |        1 |
| Krasnojarsk          |        2 |
| Nord-Ouest           |        1 |
| Hidalgo              |        2 |
| Shimane              |        1 |
| Bratislava           |        1 |
| Jharkhand            |        2 |
| Arecibo              |        1 |
| Centre               |        1 |
| Par                  |        1 |
| Jalisco              |        2 |
| Okinawa              |        1 |
| Balikesir            |        1 |
| Andhra Pradesh       |        3 |
| Chihuahua            |        2 |
| East Java            |        2 |
| Pernambuco           |        1 |
| East Kasai           |        1 |
| Kurgan               |        1 |
| Kermanshah           |        1 |
| New Hampshire        |        1 |
| Namibe               |        1 |
| Ibaragi              |        1 |
| Hmelnytskyi          |        1 |
| Shaba                |        1 |
| Nakhon Sawan         |        1 |
| Addis Abeba          |        1 |
| Asturia              |        1 |
| al-Qadarif           |        1 |
| Rio Grande do Sul    |        3 |
| Bretagne             |        1 |
| St Thomas            |        1 |
| Northern             |        1 |
| Bauchi & Gombe       |        1 |
| Utrecht              |        1 |
| al-Sharqiya          |        2 |
| Puerto Plata         |        1 |
| Sawhaj               |        1 |
| Oaxaca               |        1 |
| Komi                 |        1 |
| Nizni Novgorod       |        1 |
| Chuquisaca           |        1 |
| KwaZulu-Natal        |        2 |
| Nampula              |        1 |
| Northern Mindanao    |        2 |
| British Colombia     |        1 |
| La Romana            |        1 |
| Copperbelt           |        1 |
| Batna                |        1 |
| Tartumaa             |        1 |
| Baijeri              |        1 |
| Kerman               |        1 |
| Sinaloa              |        1 |
| Zulia                |        1 |
| La Paz               |        1 |
| Ziguinchor           |        1 |
| Caquet               |        1 |
| Irkutsk              |        1 |
| Nova Scotia          |        1 |
| OHiggins             |        1 |
| Hodeida              |        1 |
| Nam Ha               |        1 |
| Aceh                 |        1 |
| Drenthe              |        1 |
| Qubec                |        1 |
| Gaziantep            |        1 |
| Mwanza               |        1 |
| Veracruz             |        1 |
| Denizli              |        1 |
| Ningxia              |        1 |
| Stavropol            |        1 |
| Baja California Sur  |        1 |
| Boyac                |        1 |
| al-Daqahliya         |        1 |
| Istanbul             |        1 |
| Chimborazo           |        1 |
| Zufar                |        1 |
| Apulia               |        1 |
| Lubelskie            |        1 |
| Nagano               |        1 |
| Kalimantan Barat     |        1 |
| Eskisehir            |        1 |
| Volgograd            |        1 |
| Heilongjiang         |        2 |
| Coquimbo             |        1 |
| Battambang           |        1 |
| Sivas                |        1 |
| Gumma                |        1 |
| Khanh Hoa            |        2 |
| Nghe An              |        1 |
| Friuli-Venezia Giuli |        1 |
| Mogiljov             |        1 |
| Benguela             |        1 |
| Mie                  |        1 |
| Chari-Baguirmi       |        1 |
| Kang-won             |        1 |
| Colorado             |        1 |
| Carabobo             |        1 |
| Ruse                 |        1 |
| Toscana              |        1 |
| Sumatera Selatan     |        1 |
| Tadla-Azilal         |        1 |
| Hainan               |        1 |
| Ishikawa             |        1 |
| Zhejiang             |        2 |
| Vojvodina            |        1 |
| Vilna                |        1 |
| Dolnoslaskie         |        1 |
| Sokoto & Kebbi & Zam |        1 |
| Bukarest             |        1 |
| Huanuco              |        1 |
| Tokat                |        1 |
| Anzotegui            |        1 |
| Mazowieckie          |        1 |
| Qaraghandy           |        1 |
| Kaohsiung            |        1 |
| Campeche             |        1 |
| Ninawa               |        1 |
| Central Mindanao     |        1 |
| Guerrero             |        1 |
| Banjul               |        1 |
| Loja                 |        1 |
| al-Manama            |        1 |
| Fejr                 |        1 |
| West Greece          |        1 |
| Piura                |        1 |
| Vaud                 |        1 |
+----------------------+----------+
378 rows in set (0.00 sec)

--  ***************** Using Alias to sort in order  ***************************
mysql> select district, count(*) as number_of_address from address group by district order by number_of_address;
+----------------------+-------------------+
| district             | number_of_address |
+----------------------+-------------------+
| Nagasaki             |                 1 |
| Attika               |                 1 |
| Mandalay             |                 1 |
| Central Serbia       |                 1 |
| Hamilton             |                 1 |
| Masqat               |                 1 |
| Osmaniye             |                 1 |
| Kalmykia             |                 1 |
| Northern Cape        |                 1 |
| Nothwest Border Prov |                 1 |
| Rabat-Sal-Zammour-Z  |                 1 |
| Liepaja              |                 1 |
| Crdoba               |                 1 |
| Southern Mindanao    |                 1 |
| Piemonte             |                 1 |
| Midi-Pyrnes          |                 1 |
| Markazi              |                 1 |
| Chisinau             |                 1 |
| Esprito Santo        |                 1 |
| Oriental             |                 1 |
| Yerevan              |                 1 |
| Nonthaburi           |                 1 |
| Antofagasta          |                 1 |
| Moscow (City)        |                 1 |
| Cear                 |                 1 |
| Khartum              |                 1 |
| Chiba                |                 1 |
| Vaduz                |                 1 |
| Sarawak              |                 1 |
| Basel-Stadt          |                 1 |
| Nebraska             |                 1 |
| Cayenne              |                 1 |
| Skne ln              |                 1 |
| Bchar                |                 1 |
| Eastern Visayas      |                 1 |
| Chiayi               |                 1 |
| Changhwa             |                 1 |
| Pavlodar             |                 1 |
| Mahajanga            |                 1 |
| Krim                 |                 1 |
| Puebla               |                 1 |
| Songkhla             |                 1 |
| Cheju                |                 1 |
| Brunei and Muara     |                 1 |
| Georgia              |                 1 |
| Tete                 |                 1 |
| Kyongsangbuk         |                 1 |
| Asir                 |                 1 |
| Kwara & Kogi         |                 1 |
| Provence-Alpes-Cte   |                 1 |
| Funafuti             |                 1 |
| Ivanovo              |                 1 |
| Lima                 |                 1 |
| Ktahya               |                 1 |
| Smolensk             |                 1 |
| Taka-Karpatia        |                 1 |
| Free State           |                 1 |
| Ynlin                |                 1 |
| Scotland             |                 1 |
| Kilis                |                 1 |
| Minsk                |                 1 |
| Saint-Denis          |                 1 |
| Massachusetts        |                 1 |
| Assam                |                 1 |
| Jakarta Raya         |                 1 |
| Bern                 |                 1 |
| Pyongyang-si         |                 1 |
| North Carolina       |                 1 |
| North Austria        |                 1 |
| Pays de la Loire     |                 1 |
| Gifu                 |                 1 |
| Lilongwe             |                 1 |
| Jiangxi              |                 1 |
| Perak                |                 1 |
| Batman               |                 1 |
| Steiermark           |                 1 |
| Miranda              |                 1 |
| Skikda               |                 1 |
| Tamaulipas           |                 1 |
| Kirov                |                 1 |
| Noord-Brabant        |                 1 |
| Chaharmahal va Bakht |                 1 |
| Tabora               |                 1 |
| Rostov-na-Donu       |                 1 |
| Nyanza               |                 1 |
| Baden-Wrttemberg     |                 1 |
| Haiphong             |                 1 |
| Ahal                 |                 1 |
| Sulawesi Utara       |                 1 |
| Usak                 |                 1 |
| Alto Paran           |                 1 |
| Santa Catarina       |                 1 |
| Kitaa                |                 1 |
| Aden                 |                 1 |
| Washington           |                 1 |
| Taizz                |                 1 |
| Haskovo              |                 1 |
| Kabol                |                 1 |
| Zanzibar West        |                 1 |
| Sisilia              |                 1 |
| Jaroslavl            |                 1 |
| Asuncin              |                 1 |
| Saarland             |                 1 |
| Phnom Penh           |                 1 |
| Botosani             |                 1 |
| Qina                 |                 1 |
| Hawalli              |                 1 |
| Valle                |                 1 |
| Chollanam            |                 1 |
| Hebei                |                 1 |
| Tucumn               |                 1 |
| Central Visayas      |                 1 |
| Kyonggi              |                 1 |
| Paran                |                 1 |
| Tianjin              |                 1 |
| Anhalt Sachsen       |                 1 |
| Miyazaki             |                 1 |
| Sagaing              |                 1 |
| Sofala               |                 1 |
| Santiago             |                 1 |
| Cagayan Valley       |                 1 |
| Manab                |                 1 |
| Severn Morava        |                 1 |
| Salzburg             |                 1 |
| Wielkopolskie        |                 1 |
| Bursa                |                 1 |
| East Azerbaidzan     |                 1 |
| Fujian               |                 1 |
| Ponce                |                 1 |
| Edo & Delta          |                 1 |
| Shiga                |                 1 |
| Kowloon and New Kowl |                 1 |
| Gurico               |                 1 |
| Virginia             |                 1 |
| Sharja               |                 1 |
| Baskimaa             |                 1 |
| Pietari              |                 1 |
| Pohjois-Pohjanmaa    |                 1 |
| Kaliningrad          |                 1 |
| Sanaa                |                 1 |
| Callao               |                 1 |
| Kedah                |                 1 |
| Rio de Janeiro       |                 1 |
| Kursk                |                 1 |
| Tabuk                |                 1 |
| Streymoyar           |                 1 |
| Kujawsko-Pomorskie   |                 1 |
| Tutuila              |                 1 |
| St George            |                 1 |
| Santa F              |                 1 |
| Baki                 |                 1 |
| Sumqayit             |                 1 |
| Sousse               |                 1 |
| Western Cape         |                 1 |
| Hanoi                |                 1 |
| Roraima              |                 1 |
| Baja California      |                 1 |
| Tongatapu            |                 1 |
| Adygea               |                 1 |
| Daugavpils           |                 1 |
| Tuvassia             |                 1 |
| Nord-Ouest           |                 1 |
| Shimane              |                 1 |
| Bratislava           |                 1 |
| Arecibo              |                 1 |
| Centre               |                 1 |
| Par                  |                 1 |
| Okinawa              |                 1 |
| Balikesir            |                 1 |
| Pernambuco           |                 1 |
| East Kasai           |                 1 |
| Kurgan               |                 1 |
| Kermanshah           |                 1 |
| New Hampshire        |                 1 |
| Namibe               |                 1 |
| Ibaragi              |                 1 |
| Hmelnytskyi          |                 1 |
| Shaba                |                 1 |
| Nakhon Sawan         |                 1 |
| Addis Abeba          |                 1 |
| Asturia              |                 1 |
| al-Qadarif           |                 1 |
| Bretagne             |                 1 |
| St Thomas            |                 1 |
| Northern             |                 1 |
| Bauchi & Gombe       |                 1 |
| Utrecht              |                 1 |
| Puerto Plata         |                 1 |
| Sawhaj               |                 1 |
| Oaxaca               |                 1 |
| Komi                 |                 1 |
| Nizni Novgorod       |                 1 |
| Chuquisaca           |                 1 |
| Nampula              |                 1 |
| British Colombia     |                 1 |
| La Romana            |                 1 |
| Copperbelt           |                 1 |
| Batna                |                 1 |
| Tartumaa             |                 1 |
| Baijeri              |                 1 |
| Kerman               |                 1 |
| Sinaloa              |                 1 |
| Zulia                |                 1 |
| La Paz               |                 1 |
| Ziguinchor           |                 1 |
| Caquet               |                 1 |
| Irkutsk              |                 1 |
| Nova Scotia          |                 1 |
| OHiggins             |                 1 |
| Hodeida              |                 1 |
| Nam Ha               |                 1 |
| Aceh                 |                 1 |
| Drenthe              |                 1 |
| Qubec                |                 1 |
| Gaziantep            |                 1 |
| Mwanza               |                 1 |
| Veracruz             |                 1 |
| Denizli              |                 1 |
| Ningxia              |                 1 |
| Stavropol            |                 1 |
| Baja California Sur  |                 1 |
| Boyac                |                 1 |
| al-Daqahliya         |                 1 |
| Istanbul             |                 1 |
| Chimborazo           |                 1 |
| Zufar                |                 1 |
| Apulia               |                 1 |
| Lubelskie            |                 1 |
| Nagano               |                 1 |
| Kalimantan Barat     |                 1 |
| Eskisehir            |                 1 |
| Volgograd            |                 1 |
| Coquimbo             |                 1 |
| Battambang           |                 1 |
| Sivas                |                 1 |
| Gumma                |                 1 |
| Nghe An              |                 1 |
| Friuli-Venezia Giuli |                 1 |
| Mogiljov             |                 1 |
| Benguela             |                 1 |
| Mie                  |                 1 |
| Chari-Baguirmi       |                 1 |
| Kang-won             |                 1 |
| Colorado             |                 1 |
| Carabobo             |                 1 |
| Ruse                 |                 1 |
| Toscana              |                 1 |
| Sumatera Selatan     |                 1 |
| Tadla-Azilal         |                 1 |
| Hainan               |                 1 |
| Ishikawa             |                 1 |
| Vojvodina            |                 1 |
| Vilna                |                 1 |
| Dolnoslaskie         |                 1 |
| Sokoto & Kebbi & Zam |                 1 |
| Bukarest             |                 1 |
| Huanuco              |                 1 |
| Tokat                |                 1 |
| Anzotegui            |                 1 |
| Mazowieckie          |                 1 |
| Qaraghandy           |                 1 |
| Kaohsiung            |                 1 |
| Campeche             |                 1 |
| Ninawa               |                 1 |
| Central Mindanao     |                 1 |
| Guerrero             |                 1 |
| Banjul               |                 1 |
| Loja                 |                 1 |
| al-Manama            |                 1 |
| Fejr                 |                 1 |
| West Greece          |                 1 |
| Piura                |                 1 |
| Vaud                 |                 1 |
| Alberta              |                 2 |
| QLD                  |                 2 |
| Nantou               |                 2 |
| Kanagawa             |                 2 |
| Haryana              |                 2 |
| Kaduna               |                 2 |
| Sind                 |                 2 |
| Yamaguchi            |                 2 |
| Tahiti               |                 2 |
| Lipetsk              |                 2 |
| Tatarstan            |                 2 |
| Mekka                |                 2 |
| Missouri             |                 2 |
| Hunan                |                 2 |
| National Capital Reg |                 2 |
| Sucre                |                 2 |
| Caraga               |                 2 |
| Abu Dhabi            |                 2 |
| Ha Darom             |                 2 |
| North West           |                 2 |
| Distrito Federal     |                 2 |
| al-Qalyubiya         |                 2 |
| Risaralda            |                 2 |
| Gelderland           |                 2 |
| Tennessee            |                 2 |
| Michigan             |                 2 |
| Michoacn de Ocampo   |                 2 |
| Shanxi               |                 2 |
| Tel Aviv             |                 2 |
| Adana                |                 2 |
| Xinxiang             |                 2 |
| Gansu                |                 2 |
| Kerala               |                 2 |
| Tokyo-to             |                 2 |
| Jiangsu              |                 2 |
| Jilin                |                 2 |
| Fukushima            |                 2 |
| Florida              |                 2 |
| Osaka                |                 2 |
| Ohio                 |                 2 |
| Lombardia            |                 2 |
| Morelos              |                 2 |
| Krasnojarsk          |                 2 |
| Hidalgo              |                 2 |
| Jharkhand            |                 2 |
| Jalisco              |                 2 |
| Chihuahua            |                 2 |
| East Java            |                 2 |
| al-Sharqiya          |                 2 |
| KwaZulu-Natal        |                 2 |
| Northern Mindanao    |                 2 |
| Heilongjiang         |                 2 |
| Khanh Hoa            |                 2 |
| Zhejiang             |                 2 |
| Esfahan              |                 3 |
| Madhya Pradesh       |                 3 |
| Dhaka                |                 3 |
|                      |                 3 |
| Bihar                |                 3 |
| Okayama              |                 3 |
| Henan                |                 3 |
| Galicia              |                 3 |
| Sichuan              |                 3 |
| Nordrhein-Westfalen  |                 3 |
| Central Java         |                 3 |
| Gujarat              |                 3 |
| Slaskie              |                 3 |
| Coahuila de Zaragoza |                 3 |
| Hiroshima            |                 3 |
| Saitama              |                 3 |
| Ondo & Ekiti         |                 3 |
| Sumy                 |                 3 |
| Ontario              |                 3 |
| Minas Gerais         |                 3 |
| Central Luzon        |                 3 |
| Liaoning             |                 3 |
| Central              |                 3 |
| Andhra Pradesh       |                 3 |
| Rio Grande do Sul    |                 3 |
| Taipei               |                 4 |
| Moskova              |                 4 |
| Rajasthan            |                 4 |
| Oyo & Osun           |                 4 |
| Gauteng              |                 4 |
| Guangdong            |                 4 |
| Inner Mongolia       |                 4 |
| Mxico                |                 4 |
| West Java            |                 4 |
| Guanajuato           |                 4 |
| Illinois             |                 4 |
| Texas                |                 5 |
| Karnataka            |                 5 |
| Gois                 |                 5 |
| Punjab               |                 5 |
| Hubei                |                 5 |
| Tamil Nadu           |                 5 |
| Southern Tagalog     |                 6 |
| England              |                 7 |
| Maharashtra          |                 7 |
| Uttar Pradesh        |                 8 |
| So Paulo             |                 8 |
| California           |                 9 |
| West Bengali         |                 9 |
| Shandong             |                 9 |
| Buenos Aires         |                10 |
+----------------------+-------------------+
378 rows in set (0.00 sec)

mysql> select address, district from address group by district;
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'lco_films.address.address' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

--  Group by can return one value only so we can't ask to print two vlaues in a single time, which is in case is address and district.

mysql> select district , count(*) as number_of_address from address group by district where district = "Buenos Aires" or district = "Uttar Pradesh";
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where district = "Buenos Aires" or district = "Uttar Pradesh"' at line 1

-- in case of group we gotta use "having" clause instead of "where" clause.

mysql>  select district , count(*) as number_of_address from address group by district having district = "Buenos Aires" or district = "Uttar Pradesh";
+---------------+-------------------+
| district      | number_of_address |
+---------------+-------------------+
| Uttar Pradesh |                 8 |
| Buenos Aires  |                10 |
+---------------+-------------------+
2 rows in set (0.00 sec)

