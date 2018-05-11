mysql> create table test1
    -> (id int);
ERROR 1046 (3D000): No database selected
mysql> use csd2204s18
Database changed
mysql> create table test1
    -> (id int);
Query OK, 0 rows affected (0.11 sec)

mysql> alter table test1 add primary key(id);
Query OK, 0 rows affected (0.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> create table test2
    -> (id int,
    -> foreign key (id) references test1(id); 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> create table test2
    -> (id int,
    -> foreign key (id) references test1(id)); 
Query OK, 0 rows affected (0.12 sec)

mysql> create table persons  
    -> ( id integer(5),
    -> lastname varchar(255),
    -> firstname varchar(255) not null, 
    -> age integer(3) not null,
    -> primary key(id));
Query OK, 0 rows affected (0.13 sec)

mysql> alter table persons modify lastname(255)not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(255)not null' at line 1
mysql> alter table persons modify lastname varchar(255)not null;
Query OK, 0 rows affected (0.44 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(5)       | NO   | PRI | 0       |       | 
| lastname  | varchar(255) | NO   |     | NULL    |       | 
| firstname | varchar(255) | NO   |     | NULL    |       | 
| age       | int(3)       | NO   |     | NULL    |       | 
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> create table orders
    -> orderid integer(3) not null,'
    '> ;
    '> ;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,'
;
;
'' at line 2
mysql> create table orders
    -> orderid integer(3) not null,
    -> ordernumber integer(3), not null,
    -> personid integer(3),
    -> primary key(orderid),
    -> foreign key(personid) references persons(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
ordernumber integer(3), not null,
personid integer(' at line 2
mysql> create table orders
    -> orderid integer(3) not null,
    -> ordernumber integer(3), not null,
    -> personid integer(3),
    -> primary key(orderid),;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
ordernumber integer(3), not null,
personid integer(' at line 2
mysql> create table orders
    -> orderid integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personid integer(3),
    -> primary key(orderid),;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
ordernumber integer(3) not null,
personid integer(3' at line 2
mysql> create table orders
    -> orderid integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personid integer(3),
    -> primary key(orderid),
    -> foreign key(personid) references persons(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
ordernumber integer(3) not null,
personid integer(3' at line 2
mysql> desc persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(5)       | NO   | PRI | 0       |       | 
| lastname  | varchar(255) | NO   |     | NULL    |       | 
| firstname | varchar(255) | NO   |     | NULL    |       | 
| age       | int(3)       | NO   |     | NULL    |       | 
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.06 sec)

mysql> create table orders
    -> orderid integer(5) not null,
    -> ordernumber integer(5) not null,
    -> personid integer(5),
    -> primary key(orderid),
    -> foreign key(personid) references persons(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(5) not null,
ordernumber integer(5) not null,
personid integer(5' at line 2
mysql> desc persons
    -> ;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(5)       | NO   | PRI | 0       |       | 
| lastname  | varchar(255) | NO   |     | NULL    |       | 
| firstname | varchar(255) | NO   |     | NULL    |       | 
| age       | int(3)       | NO   |     | NULL    |       | 
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> desc orders
    -> ;
ERROR 1146 (42S02): Table 'csd2204s18.orders' doesn't exist
mysql> create table orders
    -> (orderid integer(5) not null,
    -> ordernumber integer(5) not null,
    -> personid integer(5),
    -> primary key(orderid),
    -> foreign key(personid) references persons(id));
Query OK, 0 rows affected (0.14 sec)

mysql> 
mysql> create table test3 as select*from persons;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc test3
    -> ;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(5)       | NO   |     | 0       |       | 
| lastname  | varchar(255) | NO   |     | NULL    |       | 
| firstname | varchar(255) | NO   |     | NULL    |       | 
| age       | int(3)       | NO   |     | NULL    |       | 
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.26 sec)

mysql> create table test4 as like persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like persons' at line 1
mysql> create table test4 like persons;
Query OK, 0 rows affected (0.05 sec)

mysql> desc test4;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| id        | int(5)       | NO   | PRI | 0       |       | 
| lastname  | varchar(255) | NO   |     | NULL    |       | 
| firstname | varchar(255) | NO   |     | NULL    |       | 
| age       | int(3)       | NO   |     | NULL    |       | 
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select*from test3;
Empty set (0.00 sec)

mysql> select*from test4;
Empty set (0.00 sec)

mysql> select*from persons;
Empty set (0.00 sec)

mysql> alter table persons add column city varchar(50);
Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table persons modify column city varchar(30);
Query OK, 0 rows affected (0.20 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table customers modify column city city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
mysql> alter table customers modify column  city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(70)' at line 1
mysql> desc customers;
ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
mysql> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(20) | NO   | PRI | NULL    |       | 
| name       | varchar(50) | YES  |     | NULL    |       | 
| nickname   | varchar(10) | YES  |     | NULL    |       | 
| city       | varchar(20) | YES  |     | NULL    |       | 
| postalcode | varchar(10) | YES  |     | NULL    |       | 
| age        | int(3)      | YES  |     | NULL    |       | 
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table customer modify column city city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
mysql> alter table customer modify city city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
mysql> alter table customer modify column city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(70)' at line 1
mysql> alter table customer modify column city city varchar(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city varchar(70)' at line 1
mysql> alter table customer modify column city varchar(70);
Query OK, 10 rows affected (0.21 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> alter table customer drop primary key;
Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> alter table customer add primary key(custid);
Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> alter table customer modify column age age integer(5)not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)not null)' at line 1
mysql> alter table customer modify column age age integer(5) not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5) not null' at line 1
mysql> alter table customer modify column age age integer(5) ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)' at line 1
mysql> alter table customer modify column age age integer(5);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)' at line 1
mysql> alter table customer modify column age integer(5)not null;
Query OK, 10 rows affected (0.27 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(20) | NO   | PRI | NULL    |       | 
| name       | varchar(50) | YES  |     | NULL    |       | 
| nickname   | varchar(10) | YES  |     | NULL    |       | 
| city       | varchar(70) | YES  |     | NULL    |       | 
| postalcode | varchar(10) | YES  |     | NULL    |       | 
| age        | int(5)      | NO   |     | NULL    |       | 
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> rename test1  to tt;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'test1  to tt' at line 1
mysql> alter table test1 rename tt;
Query OK, 0 rows affected (0.09 sec)

mysql> alter table customer drop primary key(custid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(custid)' at line 1
mysql> alter table customer drop primary key;
Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> alter table customer add primary key(custid);
Query OK, 10 rows affected (0.22 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> alter table customer drop index custid;
ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
mysql> alter table customer add primary key(custid);
ERROR 1068 (42000): Multiple primary key defined
mysql> create index index1 on customer(custid);
Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> alter table customer drop index custid;
ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
mysql> select*from index1;
ERROR 1146 (42S02): Table 'csd2204s18.index1' doesn't exist
mysql> select*from customer.index1;
ERROR 1146 (42S02): Table 'customer.index1' doesn't exist
mysql> show index from customer;
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
| customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
2 rows in set (0.00 sec)

mysql> alter table customer drop index index1;
Query OK, 10 rows affected (0.26 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> show index from customer;
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
1 row in set (0.00 sec)

mysql> create index index1 on customer(custid);
Query OK, 10 rows affected (0.28 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> show index index1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'index1' at line 1
mysql> show index from customer;
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
| customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
2 rows in set (0.00 sec)

mysql> alter table customer drop index custid;
ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
mysql> show index from customer;
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
| customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
2 rows in set (0.00 sec)

mysql> DROP INDEX 'primary' on customer; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''primary' on customer' at line 1
mysql> DROP INDEX primary on customer; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary on customer' at line 1
mysql> show index from customer;
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
| customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
| customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         | 
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
2 rows in set (0.00 sec)

mysql> desc customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custid     | varchar(20) | NO   | PRI | NULL    |       | 
| name       | varchar(50) | YES  |     | NULL    |       | 
| nickname   | varchar(10) | YES  |     | NULL    |       | 
| city       | varchar(70) | YES  |     | NULL    |       | 
| postalcode | varchar(10) | YES  |     | NULL    |       | 
| age        | int(5)      | NO   |     | NULL    |       | 
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.26 sec)

mysql> select*from customer;
+--------+-----------------+----------+------------+------------+-----+
| custid | name            | nickname | city       | postalcode | age |
+--------+-----------------+----------+------------+------------+-----+
| C01    | Ashley          | Ash      | WDC        | 321200     |  34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |  30 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |  20 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |  25 | 
| C05    | donna newman    | new      | Toronto    | 130120     |  50 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |  65 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |  70 | 
| C08    | Ashko charles   | Ak       | USA        | 421044     |  72 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |  62 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |  35 | 
+--------+-----------------+----------+------------+------------+-----+
10 rows in set (0.00 sec)

mysql> update customer set city='Toronto' where age>50; 
Query OK, 3 rows affected (0.08 sec)
Rows matched: 4  Changed: 3  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+------------+------------+-----+
| custid | name            | nickname | city       | postalcode | age |
+--------+-----------------+----------+------------+------------+-----+
| C01    | Ashley          | Ash      | WDC        | 321200     |  34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |  30 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |  20 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |  25 | 
| C05    | donna newman    | new      | Toronto    | 130120     |  50 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |  65 | 
| C07    | Bobby Chacko.   | Chac     | Toronto    | 320300     |  70 | 
| C08    | Ashko charles   | Ak       | Toronto    | 421044     |  72 | 
| C09    | Tony special    | Specie   | Toronto    | 418921     |  62 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |  35 | 
+--------+-----------------+----------+------------+------------+-----+
10 rows in set (0.00 sec)

mysql> update customer set city='Brampton' where age<30; 
Query OK, 2 rows affected (0.08 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+------------+------------+-----+
| custid | name            | nickname | city       | postalcode | age |
+--------+-----------------+----------+------------+------------+-----+
| C01    | Ashley          | Ash      | WDC        | 321200     |  34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |  30 | 
| C03    | Cherlies Theron | Cher     | Brampton   | 120134     |  20 | 
| C04    | Denial jack     | dj       | Brampton   | 341020     |  25 | 
| C05    | donna newman    | new      | Toronto    | 130120     |  50 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |  65 | 
| C07    | Bobby Chacko.   | Chac     | Toronto    | 320300     |  70 | 
| C08    | Ashko charles   | Ak       | Toronto    | 421044     |  72 | 
| C09    | Tony special    | Specie   | Toronto    | 418921     |  62 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |  35 | 
+--------+-----------------+----------+------------+------------+-----+
10 rows in set (0.00 sec)

mysql> alter table customer add(country varchar(50));
Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> update customer set country='Canada' where city='toronto' || city='brampton'; 
Query OK, 8 rows affected (0.08 sec)
Rows matched: 8  Changed: 8  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+------------+------------+-----+---------+
| custid | name            | nickname | city       | postalcode | age | country |
+--------+-----------------+----------+------------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC        | 321200     |  34 | NULL    | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton   | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton   | 341020     |  25 | Canada  | 
| C05    | donna newman    | new      | Toronto    | 130120     |  50 | Canada  | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |  65 | Canada  | 
| C07    | Bobby Chacko.   | Chac     | Toronto    | 320300     |  70 | Canada  | 
| C08    | Ashko charles   | Ak       | Toronto    | 421044     |  72 | Canada  | 
| C09    | Tony special    | Specie   | Toronto    | 418921     |  62 | Canada  | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |  35 | NULL    | 
+--------+-----------------+----------+------------+------------+-----+---------+
10 rows in set (0.00 sec)

mysql> update customer set country='Canada'; 
Query OK, 2 rows affected (0.08 sec)
Rows matched: 10  Changed: 2  Warnings: 0

mysql> update customer set country='Canada' where city='toronto' || city='brampton'; 
Query OK, 0 rows affected (0.08 sec)
Rows matched: 8  Changed: 0  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+------------+------------+-----+---------+
| custid | name            | nickname | city       | postalcode | age | country |
+--------+-----------------+----------+------------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC        | 321200     |  34 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton   | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton   | 341020     |  25 | Canada  | 
| C05    | donna newman    | new      | Toronto    | 130120     |  50 | Canada  | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |  65 | Canada  | 
| C07    | Bobby Chacko.   | Chac     | Toronto    | 320300     |  70 | Canada  | 
| C08    | Ashko charles   | Ak       | Toronto    | 421044     |  72 | Canada  | 
| C09    | Tony special    | Specie   | Toronto    | 418921     |  62 | Canada  | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |  35 | Canada  | 
+--------+-----------------+----------+------------+------------+-----+---------+
10 rows in set (0.00 sec)

mysql> update customer set country='USA' where city!='toronto' || city!='brampton'; 
Query OK, 10 rows affected (0.08 sec)
Rows matched: 10  Changed: 10  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+------------+------------+-----+---------+
| custid | name            | nickname | city       | postalcode | age | country |
+--------+-----------------+----------+------------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC        | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |  30 | USA     | 
| C03    | Cherlies Theron | Cher     | Brampton   | 120134     |  20 | USA     | 
| C04    | Denial jack     | dj       | Brampton   | 341020     |  25 | USA     | 
| C05    | donna newman    | new      | Toronto    | 130120     |  50 | USA     | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |  65 | USA     | 
| C07    | Bobby Chacko.   | Chac     | Toronto    | 320300     |  70 | USA     | 
| C08    | Ashko charles   | Ak       | Toronto    | 421044     |  72 | USA     | 
| C09    | Tony special    | Specie   | Toronto    | 418921     |  62 | USA     | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |  35 | USA     | 
+--------+-----------------+----------+------------+------------+-----+---------+
10 rows in set (0.00 sec)

mysql> update customer set country='Canada' where city='toronto' || city='brampton'; 
Query OK, 8 rows affected (0.31 sec)
Rows matched: 8  Changed: 8  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+------------+------------+-----+---------+
| custid | name            | nickname | city       | postalcode | age | country |
+--------+-----------------+----------+------------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC        | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton   | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton   | 341020     |  25 | Canada  | 
| C05    | donna newman    | new      | Toronto    | 130120     |  50 | Canada  | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |  65 | Canada  | 
| C07    | Bobby Chacko.   | Chac     | Toronto    | 320300     |  70 | Canada  | 
| C08    | Ashko charles   | Ak       | Toronto    | 421044     |  72 | Canada  | 
| C09    | Tony special    | Specie   | Toronto    | 418921     |  62 | Canada  | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |  35 | USA     | 
+--------+-----------------+----------+------------+------------+-----+---------+
10 rows in set (0.00 sec)

mysql> select*from customer;
+--------+-----------------+----------+------------+------------+-----+---------+
| custid | name            | nickname | city       | postalcode | age | country |
+--------+-----------------+----------+------------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC        | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton   | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton   | 341020     |  25 | Canada  | 
| C05    | donna newman    | new      | Toronto    | 130120     |  50 | Canada  | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |  65 | Canada  | 
| C07    | Bobby Chacko.   | Chac     | Toronto    | 320300     |  70 | Canada  | 
| C08    | Ashko charles   | Ak       | Toronto    | 421044     |  72 | Canada  | 
| C09    | Tony special    | Specie   | Toronto    | 418921     |  62 | Canada  | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |  35 | USA     | 
+--------+-----------------+----------+------------+------------+-----+---------+
10 rows in set (0.00 sec)

mysql> delete from customer where name='jack sp';
Query OK, 1 row affected (0.08 sec)

mysql> select*from customer;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| C05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| C06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| C07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| C08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| C09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> drop table test2;
Query OK, 0 rows affected (0.10 sec)

mysql> update customer set custid ='1'  where age >=50; 
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'
mysql> alter table customer drop primary key(custid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(custid)' at line 1
mysql> alter table customer drop primary key;
Query OK, 9 rows affected (0.26 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> update customer set custid ='1'  where age >=50; 
Query OK, 5 rows affected (0.08 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| 1      | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| 1      | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| 1      | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| 1      | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| 1      | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where custid is null;
Empty set (0.00 sec)

mysql> select*from customer where custid = 'null';
Empty set (0.00 sec)

mysql> select*from customer;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| 1      | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| 1      | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| 1      | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| 1      | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| 1      | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

