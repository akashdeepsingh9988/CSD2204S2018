mysql> describe customer;
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

mysql> select* from customer;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select name from customer;
+-----------------+
| name            |
+-----------------+
| Ashley          | 
| Bob marley      | 
| Cherlies Theron | 
| Denial jack     | 
| donna newman    | 
| Eston M.        | 
| Bobby Chacko.   | 
| Ashko charles   | 
| Tony special    | 
| Jack sp         | 
+-----------------+
10 rows in set (0.00 sec)

mysql> select * from customer where city='Toronto';
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C02    | Bob marley   | Bm       | Toronto | 100100     |   30 | 
| C05    | donna newman | new      | Toronto | 130120     |   50 | 
| C06    | Eston M.     | M.       | Toronto | 32030      |   65 | 
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

mysql> select name, nickname from customer where city='Toronto';
+--------------+----------+
| name         | nickname |
+--------------+----------+
| Bob marley   | Bm       | 
| donna newman | new      | 
| Eston M.     | M.       | 
+--------------+----------+
3 rows in set (0.00 sec)

mysql> select name, nickname from customer where city='new york';
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Cherlies Theron | Cher     | 
| Bobby Chacko.   | Chac     | 
+-----------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city='new york';
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New york | 120134     |   20 | 
| C07    | Bobby Chacko.   | Chac     | New York | 320300     |   70 | 
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

mysql> select city, postalcode from customer;
+------------+------------+
| city       | postalcode |
+------------+------------+
| WDC        | 321200     | 
| Toronto    | 100100     | 
| New york   | 120134     | 
| Brazil     | 341020     | 
| Toronto    | 130120     | 
| Toronto    | 32030      | 
| New York   | 320300     | 
| USA        | 421044     | 
| GTA        | 418921     | 
| New jersey | 102301     | 
+------------+------------+
10 rows in set (0.00 sec)

mysql> select * from customer where name ='Ashley';
+--------+--------+----------+------+------------+------+
| custid | name   | nickname | city | postalcode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 | 
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

mysql> select * from customer where nickname ='Ak';
+--------+---------------+----------+------+------------+------+
| custid | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko charles | Ak       | USA  | 421044     |   72 | 
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

mysql> select * from customer where name like a%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%' at line 1
mysql> select * from customer where name like 'a%';
+--------+---------------+----------+------+------------+------+
| custid | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | Ashley        | Ash      | WDC  | 321200     |   34 | 
| C08    | Ashko charles | Ak       | USA  | 421044     |   72 | 
+--------+---------------+----------+------+------------+------+
2 rows in set (0.00 sec)

mysql> select city from customer where name='Eston M.';
+---------+
| city    |
+---------+
| Toronto | 
+---------+
1 row in set (0.00 sec)

mysql> select city,name from customer where name='Eston M.';
+---------+----------+
| city    | name     |
+---------+----------+
| Toronto | Eston M. | 
+---------+----------+
1 row in set (0.00 sec)

mysql> select city,name from customer where city='toronto';
+---------+--------------+
| city    | name         |
+---------+--------------+
| Toronto | Bob marley   | 
| Toronto | donna newman | 
| Toronto | Eston M.     | 
+---------+--------------+
3 rows in set (0.00 sec)

mysql> select city,name from customer where city!='toronto';
+------------+-----------------+
| city       | name            |
+------------+-----------------+
| WDC        | Ashley          | 
| New york   | Cherlies Theron | 
| Brazil     | Denial jack     | 
| New York   | Bobby Chacko.   | 
| USA        | Ashko charles   | 
| GTA        | Tony special    | 
| New jersey | Jack sp         | 
+------------+-----------------+
7 rows in set (0.00 sec)

mysql> select city,name from customer where age>10;
+------------+-----------------+
| city       | name            |
+------------+-----------------+
| WDC        | Ashley          | 
| Toronto    | Bob marley      | 
| New york   | Cherlies Theron | 
| Brazil     | Denial jack     | 
| Toronto    | donna newman    | 
| Toronto    | Eston M.        | 
| New York   | Bobby Chacko.   | 
| USA        | Ashko charles   | 
| GTA        | Tony special    | 
| New jersey | Jack sp         | 
+------------+-----------------+
10 rows in set (0.00 sec)

mysql> select age,name from customer where age>30;
+------+---------------+
| age  | name          |
+------+---------------+
|   34 | Ashley        | 
|   50 | donna newman  | 
|   65 | Eston M.      | 
|   70 | Bobby Chacko. | 
|   72 | Ashko charles | 
|   62 | Tony special  | 
|   35 | Jack sp       | 
+------+---------------+
7 rows in set (0.00 sec)

mysql> select age,name from customer where age<50;
+------+-----------------+
| age  | name            |
+------+-----------------+
|   34 | Ashley          | 
|   30 | Bob marley      | 
|   20 | Cherlies Theron | 
|   25 | Denial jack     | 
|   35 | Jack sp         | 
+------+-----------------+
5 rows in set (0.00 sec)

mysql> select age,name from customer where age<=50;
+------+-----------------+
| age  | name            |
+------+-----------------+
|   34 | Ashley          | 
|   30 | Bob marley      | 
|   20 | Cherlies Theron | 
|   25 | Denial jack     | 
|   50 | donna newman    | 
|   35 | Jack sp         | 
+------+-----------------+
6 rows in set (0.00 sec)

mysql> select age,name from customer where age>=50;
+------+---------------+
| age  | name          |
+------+---------------+
|   50 | donna newman  | 
|   65 | Eston M.      | 
|   70 | Bobby Chacko. | 
|   72 | Ashko charles | 
|   62 | Tony special  | 
+------+---------------+
5 rows in set (0.00 sec)

mysql> select age,name from customer where name>'ashley';
+------+-----------------+
| age  | name            |
+------+-----------------+
|   30 | Bob marley      | 
|   20 | Cherlies Theron | 
|   25 | Denial jack     | 
|   50 | donna newman    | 
|   65 | Eston M.        | 
|   70 | Bobby Chacko.   | 
|   62 | Tony special    | 
|   35 | Jack sp         | 
+------+-----------------+
8 rows in set (0.00 sec)

mysql> select age,name from customer where name!>='ashley';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '!>='ashley'' at line 1
mysql> select age,name from customer where name<'jack sp';
+------+-----------------+
| age  | name            |
+------+-----------------+
|   34 | Ashley          | 
|   30 | Bob marley      | 
|   20 | Cherlies Theron | 
|   25 | Denial jack     | 
|   50 | donna newman    | 
|   65 | Eston M.        | 
|   70 | Bobby Chacko.   | 
|   72 | Ashko charles   | 
+------+-----------------+
8 rows in set (0.00 sec)

mysql> select age,name from customer where name<'donna';
+------+-----------------+
| age  | name            |
+------+-----------------+
|   34 | Ashley          | 
|   30 | Bob marley      | 
|   20 | Cherlies Theron | 
|   25 | Denial jack     | 
|   70 | Bobby Chacko.   | 
|   72 | Ashko charles   | 
+------+-----------------+
6 rows in set (0.00 sec)

mysql> select age,name from customer where name<'lk';
+------+-----------------+
| age  | name            |
+------+-----------------+
|   34 | Ashley          | 
|   30 | Bob marley      | 
|   20 | Cherlies Theron | 
|   25 | Denial jack     | 
|   50 | donna newman    | 
|   65 | Eston M.        | 
|   70 | Bobby Chacko.   | 
|   72 | Ashko charles   | 
|   35 | Jack sp         | 
+------+-----------------+
9 rows in set (0.00 sec)

mysql> select age,name from customer where name>'lk';
+------+--------------+
| age  | name         |
+------+--------------+
|   62 | Tony special | 
+------+--------------+
1 row in set (0.00 sec)

mysql> select age,name from customer where name>'001';
+------+-----------------+
| age  | name            |
+------+-----------------+
|   34 | Ashley          | 
|   30 | Bob marley      | 
|   20 | Cherlies Theron | 
|   25 | Denial jack     | 
|   50 | donna newman    | 
|   65 | Eston M.        | 
|   70 | Bobby Chacko.   | 
|   72 | Ashko charles   | 
|   62 | Tony special    | 
|   35 | Jack sp         | 
+------+-----------------+
10 rows in set (0.00 sec)

mysql> select name, cityfrom customer where name='ashley' or city='toronto';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where name='ashley' or city='toronto'' at line 1
mysql> select name, city from customer where name='ashley' or city='toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Ashley       | WDC     | 
| Bob marley   | Toronto | 
| donna newman | Toronto | 
| Eston M.     | Toronto | 
+--------------+---------+
4 rows in set (0.06 sec)

mysql> select name, city from customer where city='toronto' or city='toronto';
+--------------+---------+
| name         | city    |
+--------------+---------+
| Bob marley   | Toronto | 
| donna newman | Toronto | 
| Eston M.     | Toronto | 
+--------------+---------+
3 rows in set (0.00 sec)

mysql> select name, city from customer where city='toronto' or city='new york';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| Bob marley      | Toronto  | 
| Cherlies Theron | New york | 
| donna newman    | Toronto  | 
| Eston M.        | Toronto  | 
| Bobby Chacko.   | New York | 
+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select name, city from customer where city='toronto' && city='new york';
Empty set (0.00 sec)

mysql> select name, city from customer where city='toronto' && name='ashley';
Empty set (0.00 sec)

mysql> select name, city from customer where city='toronto' && name='wdc';
Empty set (0.00 sec)

mysql> select name, city from customer where city='wdc' && name='ashley';
+--------+------+
| name   | city |
+--------+------+
| Ashley | WDC  | 
+--------+------+
1 row in set (0.00 sec)

mysql> select name, city from customer where city='toronto' && age>50;
+----------+---------+
| name     | city    |
+----------+---------+
| Eston M. | Toronto | 
+----------+---------+
1 row in set (0.00 sec)

mysql> select *from customer;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select *from customer where city='toronto';
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C02    | Bob marley   | Bm       | Toronto | 100100     |   30 | 
| C05    | donna newman | new      | Toronto | 130120     |   50 | 
| C06    | Eston M.     | M.       | Toronto | 32030      |   65 | 
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

mysql> select count(*) from customer where city='toronto';
+----------+
| count(*) |
+----------+
|        3 | 
+----------+
1 row in set (0.11 sec)

mysql> select count(name) from customer where city='toronto';
+-------------+
| count(name) |
+-------------+
|           3 | 
+-------------+
1 row in set (0.00 sec)

mysql> select count("the number of rows") from customer where city='toronto';
+-----------------------------+
| count("the number of rows") |
+-----------------------------+
|                           3 | 
+-----------------------------+
1 row in set (0.00 sec)

mysql> select count(*)"the number of rows" from customer where city='toronto';
+--------------------+
| the number of rows |
+--------------------+
|                  3 | 
+--------------------+
1 row in set (0.00 sec)

mysql> select count(*)"the number of rows" from customer where age>50;
+--------------------+
| the number of rows |
+--------------------+
|                  4 | 
+--------------------+
1 row in set (0.00 sec)

mysql> select count(*)"the number of rows" from customer where age between 33 and 70 ;
+--------------------+
| the number of rows |
+--------------------+
|                  6 | 
+--------------------+
1 row in set (0.07 sec)

mysql> select * from customer where age between 33 and 70 ;
+--------+---------------+----------+------------+------------+------+
| custid | name          | nickname | city       | postalcode | age  |
+--------+---------------+----------+------------+------------+------+
| C01    | Ashley        | Ash      | WDC        | 321200     |   34 | 
| C05    | donna newman  | new      | Toronto    | 130120     |   50 | 
| C06    | Eston M.      | M.       | Toronto    | 32030      |   65 | 
| C07    | Bobby Chacko. | Chac     | New York   | 320300     |   70 | 
| C09    | Tony special  | Specie   | GTA        | 418921     |   62 | 
| C10    | Jack sp       | Sparrow  | New jersey | 102301     |   35 | 
+--------+---------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

mysql> select * from customer where age not between 33 and 70 ;
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob marley      | Bm       | Toronto  | 100100     |   30 | 
| C03    | Cherlies Theron | Cher     | New york | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil   | 341020     |   25 | 
| C08    | Ashko charles   | Ak       | USA      | 421044     |   72 | 
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

mysql> select * from customer where not age between 33 and 70 ;
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C02    | Bob marley      | Bm       | Toronto  | 100100     |   30 | 
| C03    | Cherlies Theron | Cher     | New york | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil   | 341020     |   25 | 
| C08    | Ashko charles   | Ak       | USA      | 421044     |   72 | 
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

mysql> select * from customer order by age asc;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.08 sec)

mysql> select * from customer order by age desc;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select max(age) from customer;
+----------+
| max(age) |
+----------+
|       72 | 
+----------+
1 row in set (0.00 sec)

mysql> select min(age) from customer;
+----------+
| min(age) |
+----------+
|       20 | 
+----------+
1 row in set (0.00 sec)

mysql> select name from customer where age=max(age);
ERROR 1111 (HY000): Invalid use of group function
mysql> select name from customer where age(max));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> select name from customer where max(age));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> select name from customer where max(age)>0);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> select name from customer where max(age)>0;
ERROR 1111 (HY000): Invalid use of group function
mysql> select name from customer where age>(select max(age)*from customer );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from customer )' at line 1
mysql> select name from customer where age>select max(age)*from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select max(age)*from customer' at line 1
mysql> select * from customer where name like '_a%';
+--------+---------+----------+------------+------------+------+
| custid | name    | nickname | city       | postalcode | age  |
+--------+---------+----------+------------+------------+------+
| C10    | Jack sp | Sparrow  | New jersey | 102301     |   35 | 
+--------+---------+----------+------------+------------+------+
1 row in set (0.00 sec)

mysql> select * from customer where name like '%a';
Empty set (0.00 sec)

mysql> select * from customer where name like 'a%' and city='new york' || city='new jersy';
Empty set (0.00 sec)

mysql> select * from customer where name like '__n%';
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial jack  | dj       | Brazil  | 341020     |   25 | 
| C05    | donna newman | new      | Toronto | 130120     |   50 | 
| C09    | Tony special | Specie   | GTA     | 418921     |   62 | 
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

mysql> select * from customer where name like '__n%' && name like '%n';
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C05    | donna newman | new      | Toronto | 130120     |   50 | 
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

mysql> select * from customer where name like '__n%' && name like '_____a%';
Empty set (0.00 sec)

mysql> select * from customer where name like '__n__a%';
Empty set (0.00 sec)

mysql> select * from customer where name like '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Denial jack  | dj       | Brazil  | 341020     |   25 | 
| C05    | donna newman | new      | Toronto | 130120     |   50 | 
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

mysql> select * from customer limit 4;
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |   30 | 
| C03    | Cherlies Theron | Cher     | New york | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil   | 341020     |   25 | 
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

mysql> select * from customer between 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'between 10' at line 1
mysql> select * from customer where age in(20,25,65,72); 
+--------+-----------------+----------+----------+------------+------+
| custid | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | New york | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil   | 341020     |   25 | 
| C06    | Eston M.        | M.       | Toronto  | 32030      |   65 | 
| C08    | Ashko charles   | Ak       | USA      | 421044     |   72 | 
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.06 sec)

mysql> select * from customer where age not in(20,25,65,72); 
+--------+---------------+----------+------------+------------+------+
| custid | name          | nickname | city       | postalcode | age  |
+--------+---------------+----------+------------+------------+------+
| C01    | Ashley        | Ash      | WDC        | 321200     |   34 | 
| C02    | Bob marley    | Bm       | Toronto    | 100100     |   30 | 
| C05    | donna newman  | new      | Toronto    | 130120     |   50 | 
| C07    | Bobby Chacko. | Chac     | New York   | 320300     |   70 | 
| C09    | Tony special  | Specie   | GTA        | 418921     |   62 | 
| C10    | Jack sp       | Sparrow  | New jersey | 102301     |   35 | 
+--------+---------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

mysql> select * from customer where city in('toronto'); 
+--------+--------------+----------+---------+------------+------+
| custid | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C02    | Bob marley   | Bm       | Toronto | 100100     |   30 | 
| C05    | donna newman | new      | Toronto | 130120     |   50 | 
| C06    | Eston M.     | M.       | Toronto | 32030      |   65 | 
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

mysql> select * from customer where city in('toronto','gta','usa'); 
+--------+---------------+----------+---------+------------+------+
| custid | name          | nickname | city    | postalcode | age  |
+--------+---------------+----------+---------+------------+------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |   30 | 
| C05    | donna newman  | new      | Toronto | 130120     |   50 | 
| C06    | Eston M.      | M.       | Toronto | 32030      |   65 | 
| C08    | Ashko charles | Ak       | USA     | 421044     |   72 | 
| C09    | Tony special  | Specie   | GTA     | 418921     |   62 | 
+--------+---------------+----------+---------+------------+------+
5 rows in set (0.00 sec)

mysql> select * from customer where city like in('n%'); 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'in('n%')' at line 1
mysql> select * from customer where city in('n%'); 
Empty set (0.00 sec)

mysql> select * from customer where city in('new%'); 
Empty set (0.00 sec)

mysql> select distinct(city) from customer; 
+------------+
| city       |
+------------+
| WDC        | 
| Toronto    | 
| New york   | 
| Brazil     | 
| USA        | 
| GTA        | 
| New jersey | 
+------------+
7 rows in set (0.07 sec)

mysql> select distinct(city) from customer allow duplicate; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'duplicate' at line 1
mysql> select distinct(city) from customer allow all; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'all' at line 1
mysql> select distinct(city) from customer;
+------------+
| city       |
+------------+
| WDC        | 
| Toronto    | 
| New york   | 
| Brazil     | 
| USA        | 
| GTA        | 
| New jersey | 
+------------+
7 rows in set (0.00 sec)

mysql> select count(distinct(city)) from customer; 
+-----------------------+
| count(distinct(city)) |
+-----------------------+
|                     7 | 
+-----------------------+
1 row in set (0.00 sec)

mysql> select * FROM CUSTOMER ORDER BY NAME ASC;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select * FROM CUSTOMER ORDER BY NAME DESC;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select  MAX(AGE) FROM CUSTOMER ORDER BY NAME DESC;
+----------+
| MAX(AGE) |
+----------+
|       72 | 
+----------+
1 row in set (0.00 sec)

mysql> select  MAX(AGE) FROM CUSTOMER ORDER BY NAME ASC;
+----------+
| MAX(AGE) |
+----------+
|       72 | 
+----------+
1 row in set (0.00 sec)

mysql> select * FROM CUSTOMER ORDER BY NAME DESC;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select * FROM CUSTOMER ORDER BY AGE DESC;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select * FROM CUSTOMER ORDER BY AGE ASC;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select * FROM CUSTOMER ORDER BY AGE DESC;
+--------+-----------------+----------+------------+------------+------+
| custid | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko charles   | Ak       | USA        | 421044     |   72 | 
| C07    | Bobby Chacko.   | Chac     | New York   | 320300     |   70 | 
| C06    | Eston M.        | M.       | Toronto    | 32030      |   65 | 
| C09    | Tony special    | Specie   | GTA        | 418921     |   62 | 
| C05    | donna newman    | new      | Toronto    | 130120     |   50 | 
| C10    | Jack sp         | Sparrow  | New jersey | 102301     |   35 | 
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 
| C02    | Bob marley      | Bm       | Toronto    | 100100     |   30 | 
| C04    | Denial jack     | dj       | Brazil     | 341020     |   25 | 
| C03    | Cherlies Theron | Cher     | New york   | 120134     |   20 | 
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

mysql> select * FROM CUSTOMER ORDER BY AGE DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custid | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko charles | Ak       | USA  | 421044     |   72 | 
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

mysql> select  SUM(AGE) FROM CUSTOMER ORDER BY AGE DESC LIMIT 1;
+----------+
| SUM(AGE) |
+----------+
|      463 | 
+----------+
1 row in set (0.00 sec)

mysql> select  SUM(AGE) FROM CUSTOMER;
+----------+
| SUM(AGE) |
+----------+
|      463 | 
+----------+
1 row in set (0.00 sec)

mysql> select FROM CUSTOMER ORDER BY AGE DESC LIMIT 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM CUSTOMER ORDER BY AGE DESC LIMIT 2' at line 1
mysql> select* FROM CUSTOMER ORDER BY AGE DESC LIMIT 2;
+--------+---------------+----------+----------+------------+------+
| custid | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| C08    | Ashko charles | Ak       | USA      | 421044     |   72 | 
| C07    | Bobby Chacko. | Chac     | New York | 320300     |   70 | 
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

mysql> select MAX(AGE) FROM CUSTOMER ORDER BY AGE DESC LIMIT 2;
+----------+
| MAX(AGE) |
+----------+
|       72 | 
+----------+
1 row in set (0.00 sec)

mysql> select MAX(AGE) FROM CUSTOMER ORDER BY AGE DESC LIMIT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select* FROM CUSTOMER ORDER BY AGE DESC LIMIT 2 ;
+--------+---------------+----------+----------+------------+------+
| custid | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| C08    | Ashko charles | Ak       | USA      | 421044     |   72 | 
| C07    | Bobby Chacko. | Chac     | New York | 320300     |   70 | 
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

mysql> select* FROM CUSTOMER ORDER BY AGE DESC LIMIT 2 SHOW LAST ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SHOW LAST' at line 1
mysql> select* FROM CUSTOMER ORDER BY AGE DESC LIMIT 2  ;
+--------+---------------+----------+----------+------------+------+
| custid | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| C08    | Ashko charles | Ak       | USA      | 421044     |   72 | 
| C07    | Bobby Chacko. | Chac     | New York | 320300     |   70 | 
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

mysql> select top FROM CUSTOMER ORDER BY AGE WHERE ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE' at line 1
mysql> select top 1 FROM CUSTOMER ORDER BY AGE WHERE ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1 FROM CUSTOMER ORDER BY AGE WHERE' at line 1
mysql> select top 1 FROM CUSTOMER ORDER BY AGE desc ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1 FROM CUSTOMER ORDER BY AGE desc' at line 1
mysql> select top 1 *FROM CUSTOMER ORDER BY AGE desc ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1 *FROM CUSTOMER ORDER BY AGE desc' at line 1
mysql> select top 1 *FROM CUSTOMER ORDER BY AGE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1 *FROM CUSTOMER ORDER BY AGE' at line 1
mysql> select top 1 *FROM CUSTOMER ORDER BY AGE asc limit 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1 *FROM CUSTOMER ORDER BY AGE asc limit 2' at line 1
mysql> select*from (select*from customer order by age desc limit 2) as t order by age desc limit 1; 
+--------+---------------+----------+------+------------+------+
| custid | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko charles | Ak       | USA  | 421044     |   72 | 
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

mysql> select*from (select*from customer order by age desc limit 2) as t order by age asc limit 1; 
+--------+---------------+----------+----------+------------+------+
| custid | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| C07    | Bobby Chacko. | Chac     | New York | 320300     |   70 | 
+--------+---------------+----------+----------+------------+------+
1 row in set (0.00 sec)

mysql> select*from (select*from customer order by age asc limit 2) as t order by age desc limit 1; 
+--------+-------------+----------+--------+------------+------+
| custid | name        | nickname | city   | postalcode | age  |
+--------+-------------+----------+--------+------------+------+
| C04    | Denial jack | dj       | Brazil | 341020     |   25 | 
+--------+-------------+----------+--------+------------+------+
1 row in set (0.00 sec)

mysql> select max(age)*100;
ERROR 1054 (42S22): Unknown column 'age' in 'field list'
mysql> select max(age)*100 from customer;
+--------------+
| max(age)*100 |
+--------------+
|         7200 | 
+--------------+
1 row in set (0.06 sec)

mysql> select max(age)+100 from customer;
+--------------+
| max(age)+100 |
+--------------+
|          172 | 
+--------------+
1 row in set (0.07 sec)

mysql> select sum(age)+100 from customer;
+--------------+
| sum(age)+100 |
+--------------+
|          563 | 
+--------------+
1 row in set (0.00 sec)

mysql> select mul(age)+100 from customer;
ERROR 1305 (42000): FUNCTION csd2204s18.mul does not exist
mysql> select ml(age)+100 from customer;
ERROR 1305 (42000): FUNCTION csd2204s18.ml does not exist
mysql> select sum(age)+100 from customer;
+--------------+
| sum(age)+100 |
+--------------+
|          563 | 
+--------------+
1 row in set (0.00 sec)

mysql> exit
