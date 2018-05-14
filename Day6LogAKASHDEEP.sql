mysql> use csd2204s18
Database changed
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

mysql> select*from customer order by name;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| 1      | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| 1      | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| 1      | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| 1      | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| 1      | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.09 sec)

mysql> select*from customer order by name asc;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| 1      | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| 1      | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| 1      | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| 1      | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| 1      | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer order by name,city asc;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| 1      | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| 1      | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| 1      | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| 1      | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| 1      | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer order by name desc,city asc;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| 1      | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
| 1      | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| 1      | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| 1      | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| 1      | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer order by name desc limit 3;
+--------+--------------+----------+---------+------------+-----+---------+
| custid | name         | nickname | city    | postalcode | age | country |
+--------+--------------+----------+---------+------------+-----+---------+
| 1      | Tony special | Specie   | Toronto | 418921     |  62 | Canada  | 
| 1      | Eston M.     | M.       | Toronto | 32030      |  65 | Canada  | 
| 1      | donna newman | new      | Toronto | 130120     |  50 | Canada  | 
+--------+--------------+----------+---------+------------+-----+---------+
3 rows in set (0.00 sec)

mysql> select*from (select*from customer order by custid desc limit 3) as t order by custid asc limit 3;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
3 rows in set (0.00 sec)

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

mysql> update customer set custid ='c05' where name ='donna newman';
Query OK, 1 row affected (0.33 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set custid ='c06' where name ='eston m.';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set custid ='c07' where name ='bobby chacko';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update customer set custid ='c07' where name ='bobby chacko.';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set custid ='c08' where name ='ashko charles';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set custid ='c09' where name='tony special';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from (select*from customer order by custid desc limit 3) as t order by custid asc limit 3;
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
| c09    | Tony special  | Specie   | Toronto | 418921     |  62 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
3 rows in set (0.00 sec)

mysql> select*from customer group by city;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
+--------+-----------------+----------+----------+------------+-----+---------+
3 rows in set (0.00 sec)

mysql> select*from customer group by custid;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.05 sec)

mysql> select*from customer group by nickname;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer group by country;
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
| C01    | Ashley     | Ash      | WDC     | 321200     |  34 | USA     | 
+--------+------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select city from customer group by country;
+---------+
| city    |
+---------+
| Toronto | 
| WDC     | 
+---------+
2 rows in set (0.00 sec)

mysql> select country from customer group by country;
+---------+
| country |
+---------+
| Canada  | 
| USA     | 
+---------+
2 rows in set (0.00 sec)

mysql> select count(country) from customer group by country;
+----------------+
| count(country) |
+----------------+
|              8 | 
|              1 | 
+----------------+
2 rows in set (0.00 sec)

mysql> select distnict (city) from customer;
ERROR 1305 (42000): FUNCTION csd2204s18.distnict does not exist
mysql> select distnict city from customer;
ERROR 1054 (42S22): Unknown column 'distnict' in 'field list'
mysql> select distinct(city) from customer;
+----------+
| city     |
+----------+
| WDC      | 
| Toronto  | 
| Brampton | 
+----------+
3 rows in set (0.00 sec)

mysql> select*from customer group by country having city like 'new%';
Empty set (0.06 sec)

mysql> select*from customer group by country having city like 'to%';
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer group by country where city like 'to%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where city like 'to%'' at line 1
mysql> select*from customer group by country having city like 'to%';
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where city like 'to%';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c05    | donna newman  | new      | Toronto | 130120     |  50 | Canada  | 
| c06    | Eston M.      | M.       | Toronto | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
| c09    | Tony special  | Specie   | Toronto | 418921     |  62 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
6 rows in set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city;
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having country like 'c%';
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where count(city)>2 group by city having country like 'c%';
ERROR 1111 (HY000): Invalid use of group function
mysql> select*from customer having count(city)>2 group by city having country like 'c%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group by city having country like 'c%'' at line 1
mysql> select*from customer where city like 'to%' group by city having count(country)>2;
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(country)>2;
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(country)<1;
Empty set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(country)<2;
Empty set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(country)<3;
Empty set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(country)>1;
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(country)>=1;
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(country)=1;
Empty set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(city)=1;
Empty set (0.00 sec)

mysql> select*from customer where city like 'to%' group by city having count(city)>1;
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where name regexp '^s';
Empty set (0.00 sec)

mysql> select*from customer where name regexp '^b';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^b$';
Empty set (0.00 sec)

mysql> select*from customer where name regexp 'b$';
Empty set (0.00 sec)

mysql> select*from customer where name regexp 'm$';
Empty set (0.00 sec)

mysql> select*from customer where name regexp 'y$';
+--------+------------+----------+---------+------------+-----+---------+
| custid | name       | nickname | city    | postalcode | age | country |
+--------+------------+----------+---------+------------+-----+---------+
| C01    | Ashley     | Ash      | WDC     | 321200     |  34 | USA     | 
| C02    | Bob marley | Bm       | Toronto | 100100     |  30 | Canada  | 
+--------+------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^b$';
Empty set (0.00 sec)

mysql> select*from customer where name regexp '^...l';
+--------+--------+----------+------+------------+-----+---------+
| custid | name   | nickname | city | postalcode | age | country |
+--------+--------+----------+------+------------+-----+---------+
| C01    | Ashley | Ash      | WDC  | 321200     |  34 | USA     | 
+--------+--------+----------+------+------------+-----+---------+
1 row in set (0.00 sec)

mysql> select*from customer where postalcode regexp '^[0-9]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where postalcode regexp '^[0-3]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
7 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a-z]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a-j]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
8 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a-k]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
8 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a-k]$';
Empty set (0.00 sec)

mysql> select*from customer where name regexp '^[a-k]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
8 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a-b]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C01    | Ashley        | Ash      | WDC     | 321200     |  34 | USA     | 
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
4 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a*]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C01    | Ashley        | Ash      | WDC     | 321200     |  34 | USA     | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C01    | Ashley        | Ash      | WDC     | 321200     |  34 | USA     | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[b]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[b*]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[b+]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[b-]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[b?]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a?]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C01    | Ashley        | Ash      | WDC     | 321200     |  34 | USA     | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a-z?]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where name regexp '^[a?]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C01    | Ashley        | Ash      | WDC     | 321200     |  34 | USA     | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where city regexp '^[a?]';
Empty set (0.00 sec)

mysql> select*from customer where city regexp '^[t?]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c05    | donna newman  | new      | Toronto | 130120     |  50 | Canada  | 
| c06    | Eston M.      | M.       | Toronto | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
| c09    | Tony special  | Specie   | Toronto | 418921     |  62 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
6 rows in set (0.00 sec)

mysql> select*from customer where city regexp '^[a?]' group by city;
Empty set (0.00 sec)

mysql> select*from customer where city regexp '^[a?]';
Empty set (0.00 sec)

mysql> select*from customer where city regexp '^[t?]';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c05    | donna newman  | new      | Toronto | 130120     |  50 | Canada  | 
| c06    | Eston M.      | M.       | Toronto | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
| c09    | Tony special  | Specie   | Toronto | 418921     |  62 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
6 rows in set (0.00 sec)

mysql> select*from customer where city regexp '^[{4}]' group by city;
Empty set (0.00 sec)

mysql> select*from customer where city regexp '^[.{4}]' group by city;
Empty set (0.00 sec)

mysql> select*from customer where city regexp '^.{4}' group by city;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where city regexp '^.{3}' group by city;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
+--------+-----------------+----------+----------+------------+-----+---------+
3 rows in set (0.00 sec)

mysql> select*from customer where city regexp '^.{2}' group by city;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
+--------+-----------------+----------+----------+------------+-----+---------+
3 rows in set (0.00 sec)

mysql> select*from customer where city regexp '^.{10}' group by city;
Empty set (0.00 sec)

mysql> select*from customer where city regexp '^.{5}' group by city;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where city regexp '^.{5}' group by city;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where city regexp '^.{1}' group by city;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
+--------+-----------------+----------+----------+------------+-----+---------+
3 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^.{1}';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^.{1}' group by city;
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
+--------+-----------------+----------+----------+------------+-----+---------+
3 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^.{1}';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^[a-z]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^[a-k]';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
2 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^a';
Empty set (0.00 sec)

mysql> select*from customer where city rlike '^t';
+--------+---------------+----------+---------+------------+-----+---------+
| custid | name          | nickname | city    | postalcode | age | country |
+--------+---------------+----------+---------+------------+-----+---------+
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 
| c05    | donna newman  | new      | Toronto | 130120     |  50 | Canada  | 
| c06    | Eston M.      | M.       | Toronto | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 
| c08    | Ashko charles | Ak       | Toronto | 421044     |  72 | Canada  | 
| c09    | Tony special  | Specie   | Toronto | 418921     |  62 | Canada  | 
+--------+---------------+----------+---------+------------+-----+---------+
6 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^a?';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^a?';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^..a?';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^...a?';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select*from customer where city rlike '^...a';
Empty set (0.00 sec)

mysql> select*from customer where city rlike '^...a*';
+--------+-----------------+----------+----------+------------+-----+---------+
| custid | name            | nickname | city     | postalcode | age | country |
+--------+-----------------+----------+----------+------------+-----+---------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 
+--------+-----------------+----------+----------+------------+-----+---------+
9 rows in set (0.00 sec)

mysql> select curdate
    -> ;
ERROR 1054 (42S22): Unknown column 'curdate' in 'field list'
mysql> select curdate();
+------------+
| curdate()  |
+------------+
| 2018-05-14 | 
+------------+
1 row in set (0.06 sec)

mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2018-05-14 09:14:53 | 
+---------------------+
1 row in set (0.00 sec)

mysql> alter table customer add column dob date;
Query OK, 9 rows affected (0.29 sec)
Records: 9  Duplicates: 0  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+----------+------------+-----+---------+------+
| custid | name            | nickname | city     | postalcode | age | country | dob  |
+--------+-----------------+----------+----------+------------+-----+---------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | NULL | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | NULL | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | NULL | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | NULL | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | NULL | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | NULL | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | NULL | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | NULL | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | NULL | 
+--------+-----------------+----------+----------+------------+-----+---------+------+
9 rows in set (0.00 sec)

mysql> update customer set dob =curdate();
Query OK, 9 rows affected (0.31 sec)
Rows matched: 9  Changed: 9  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 2018-05-14 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 2018-05-14 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 2018-05-14 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 2018-05-14 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 2018-05-14 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 2018-05-14 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 2018-05-14 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 2018-05-14 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 2018-05-14 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
9 rows in set (0.00 sec)

mysql> update customer set dob ='1998-01-01';
Query OK, 9 rows affected (0.08 sec)
Rows matched: 9  Changed: 9  Warnings: 0

mysql> update customer set dob ='1991-01-10' where custid='c01';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set dob ='1996-04-05' where custid='c02';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set dob ='1994-11-03' where custid='c03';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set dob ='1995-11-03' where custid='c04';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set dob ='1995-01-26' where custid='c05';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set dob ='1995-10-22' where custid='c06';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set dob ='1992-05-07' where custid='c07';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set dob ='1996-05-07' where custid='c08';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set dob ='1985-08-28' where custid='c09';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from customer;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
9 rows in set (0.00 sec)

mysql> select*from customer where now()>dob;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
9 rows in set (0.00 sec)

mysql> select*from customer where now()<dob;
Empty set (0.00 sec)

mysql> select*from customer where now()>dob;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
9 rows in set (0.00 sec)

mysql> select*from customer where curdate()>dob;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
9 rows in set (0.00 sec)

mysql> insert into customer values('c10', 'ash', 'as','new york', '325555',32,'usa',curdate());
Query OK, 1 row affected (0.09 sec)

mysql> select*from customer where curdate()>dob;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
9 rows in set (0.00 sec)

mysql> select*from customer ;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
| c10    | ash             | as       | new york | 325555     |  32 | usa     | 2018-05-14 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
10 rows in set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer ;
+-----------------+------------+------------------------------------+
| name            | dob        | timestampdiff (year,dob,curdate()) |
+-----------------+------------+------------------------------------+
| Ashley          | 1991-01-10 |                                 27 | 
| Bob marley      | 1996-04-05 |                                 22 | 
| Cherlies Theron | 1994-11-03 |                                 23 | 
| Denial jack     | 1995-11-03 |                                 22 | 
| donna newman    | 1995-01-26 |                                 23 | 
| Eston M.        | 1995-10-22 |                                 22 | 
| Bobby Chacko.   | 1992-05-07 |                                 26 | 
| Ashko charles   | 1996-05-07 |                                 22 | 
| Tony special    | 1985-08-28 |                                 32 | 
| ash             | 2018-05-14 |                                  0 | 
+-----------------+------------+------------------------------------+
10 rows in set (0.00 sec)

mysql> select name, dob , timestampdiff (year,curdate(),dob) from customer ;
+-----------------+------------+------------------------------------+
| name            | dob        | timestampdiff (year,curdate(),dob) |
+-----------------+------------+------------------------------------+
| Ashley          | 1991-01-10 |                                -27 | 
| Bob marley      | 1996-04-05 |                                -22 | 
| Cherlies Theron | 1994-11-03 |                                -23 | 
| Denial jack     | 1995-11-03 |                                -22 | 
| donna newman    | 1995-01-26 |                                -23 | 
| Eston M.        | 1995-10-22 |                                -22 | 
| Bobby Chacko.   | 1992-05-07 |                                -26 | 
| Ashko charles   | 1996-05-07 |                                -22 | 
| Tony special    | 1985-08-28 |                                -32 | 
| ash             | 2018-05-14 |                                  0 | 
+-----------------+------------+------------------------------------+
10 rows in set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer ;
+-----------------+------------+------------------------------------+
| name            | dob        | timestampdiff (year,dob,curdate()) |
+-----------------+------------+------------------------------------+
| Ashley          | 1991-01-10 |                                 27 | 
| Bob marley      | 1996-04-05 |                                 22 | 
| Cherlies Theron | 1994-11-03 |                                 23 | 
| Denial jack     | 1995-11-03 |                                 22 | 
| donna newman    | 1995-01-26 |                                 23 | 
| Eston M.        | 1995-10-22 |                                 22 | 
| Bobby Chacko.   | 1992-05-07 |                                 26 | 
| Ashko charles   | 1996-05-07 |                                 22 | 
| Tony special    | 1985-08-28 |                                 32 | 
| ash             | 2018-05-14 |                                  0 | 
+-----------------+------------+------------------------------------+
10 rows in set (0.00 sec)

mysql> select name, dob , timestampdiff (dob,year,curdate()) from customer ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'dob,year,curdate()) from customer' at line 1
mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer ;
+-----------------+------------+------------------------------------+
| name            | dob        | timestampdiff (year,dob,curdate()) |
+-----------------+------------+------------------------------------+
| Ashley          | 1991-01-10 |                                 27 | 
| Bob marley      | 1996-04-05 |                                 22 | 
| Cherlies Theron | 1994-11-03 |                                 23 | 
| Denial jack     | 1995-11-03 |                                 22 | 
| donna newman    | 1995-01-26 |                                 23 | 
| Eston M.        | 1995-10-22 |                                 22 | 
| Bobby Chacko.   | 1992-05-07 |                                 26 | 
| Ashko charles   | 1996-05-07 |                                 22 | 
| Tony special    | 1985-08-28 |                                 32 | 
| ash             | 2018-05-14 |                                  0 | 
+-----------------+------------+------------------------------------+
10 rows in set (0.00 sec)

mysql> select name, dob , timestampdiff (day,dob,curdate()) from customer ;
+-----------------+------------+-----------------------------------+
| name            | dob        | timestampdiff (day,dob,curdate()) |
+-----------------+------------+-----------------------------------+
| Ashley          | 1991-01-10 |                              9986 | 
| Bob marley      | 1996-04-05 |                              8074 | 
| Cherlies Theron | 1994-11-03 |                              8593 | 
| Denial jack     | 1995-11-03 |                              8228 | 
| donna newman    | 1995-01-26 |                              8509 | 
| Eston M.        | 1995-10-22 |                              8240 | 
| Bobby Chacko.   | 1992-05-07 |                              9503 | 
| Ashko charles   | 1996-05-07 |                              8042 | 
| Tony special    | 1985-08-28 |                             11947 | 
| ash             | 2018-05-14 |                                 0 | 
+-----------------+------------+-----------------------------------+
10 rows in set (0.00 sec)

mysql> select name, dob , timestampdiff (day,'1995-01-16',curdate()) from customer ;
+-----------------+------------+--------------------------------------------+
| name            | dob        | timestampdiff (day,'1995-01-16',curdate()) |
+-----------------+------------+--------------------------------------------+
| Ashley          | 1991-01-10 |                                       8519 | 
| Bob marley      | 1996-04-05 |                                       8519 | 
| Cherlies Theron | 1994-11-03 |                                       8519 | 
| Denial jack     | 1995-11-03 |                                       8519 | 
| donna newman    | 1995-01-26 |                                       8519 | 
| Eston M.        | 1995-10-22 |                                       8519 | 
| Bobby Chacko.   | 1992-05-07 |                                       8519 | 
| Ashko charles   | 1996-05-07 |                                       8519 | 
| Tony special    | 1985-08-28 |                                       8519 | 
| ash             | 2018-05-14 |                                       8519 | 
+-----------------+------------+--------------------------------------------+
10 rows in set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer where age=22; 
Empty set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer where age=50; 
+--------------+------------+------------------------------------+
| name         | dob        | timestampdiff (year,dob,curdate()) |
+--------------+------------+------------------------------------+
| donna newman | 1995-01-26 |                                 23 | 
+--------------+------------+------------------------------------+
1 row in set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer where age=25; 
+-------------+------------+------------------------------------+
| name        | dob        | timestampdiff (year,dob,curdate()) |
+-------------+------------+------------------------------------+
| Denial jack | 1995-11-03 |                                 22 | 
+-------------+------------+------------------------------------+
1 row in set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer having age=50; 
ERROR 1054 (42S22): Unknown column 'age' in 'having clause'
mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer having age=22; 
ERROR 1054 (42S22): Unknown column 'age' in 'having clause'
mysql> select*from customer ;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
| c10    | ash             | as       | new york | 325555     |  32 | usa     | 2018-05-14 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
10 rows in set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer where age=22; 
Empty set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer where age=25; 
+-------------+------------+------------------------------------+
| name        | dob        | timestampdiff (year,dob,curdate()) |
+-------------+------------+------------------------------------+
| Denial jack | 1995-11-03 |                                 22 | 
+-------------+------------+------------------------------------+
1 row in set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer where timestampdiff(year,dob,curdate)=25; 
ERROR 1054 (42S22): Unknown column 'curdate' in 'where clause'
mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer where timestampdiff(year,dob,curdate())=25; 
Empty set (0.00 sec)

mysql> select name, dob , timestampdiff (year,dob,curdate()) from customer where timestampdiff(year,dob,curdate())=22; 
+---------------+------------+------------------------------------+
| name          | dob        | timestampdiff (year,dob,curdate()) |
+---------------+------------+------------------------------------+
| Bob marley    | 1996-04-05 |                                 22 | 
| Denial jack   | 1995-11-03 |                                 22 | 
| Eston M.      | 1995-10-22 |                                 22 | 
| Ashko charles | 1996-05-07 |                                 22 | 
+---------------+------------+------------------------------------+
4 rows in set (0.00 sec)

mysql> select name"NAME", dob , timestampdiff (year,dob,curdate()) from customer where timestampdiff(year,dob,curdate())=22; 
+---------------+------------+------------------------------------+
| NAME          | dob        | timestampdiff (year,dob,curdate()) |
+---------------+------------+------------------------------------+
| Bob marley    | 1996-04-05 |                                 22 | 
| Denial jack   | 1995-11-03 |                                 22 | 
| Eston M.      | 1995-10-22 |                                 22 | 
| Ashko charles | 1996-05-07 |                                 22 | 
+---------------+------------+------------------------------------+
4 rows in set (0.00 sec)

mysql> select*from customer ;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
| c10    | ash             | as       | new york | 325555     |  32 | usa     | 2018-05-14 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
10 rows in set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t order by dob asc;
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| c09    | Tony special    | Specie   | Toronto  | 418921     |  62 | Canada  | 1985-08-28 | 
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c10    | ash             | as       | new york | 325555     |  32 | usa     | 2018-05-14 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
10 rows in set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t where name like 'b%';
+--------+---------------+----------+---------+------------+-----+---------+------------+
| custid | name          | nickname | city    | postalcode | age | country | dob        |
+--------+---------------+----------+---------+------------+-----+---------+------------+
| c07    | Bobby Chacko. | Chac     | Toronto | 320300     |  70 | Canada  | 1992-05-07 | 
| C02    | Bob marley    | Bm       | Toronto | 100100     |  30 | Canada  | 1996-04-05 | 
+--------+---------------+----------+---------+------------+-----+---------+------------+
2 rows in set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t where name rlike '^d';
+--------+--------------+----------+----------+------------+-----+---------+------------+
| custid | name         | nickname | city     | postalcode | age | country | dob        |
+--------+--------------+----------+----------+------------+-----+---------+------------+
| c05    | donna newman | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| C04    | Denial jack  | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
+--------+--------------+----------+----------+------------+-----+---------+------------+
2 rows in set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t where name rlike '^[a-s]';
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| c07    | Bobby Chacko.   | Chac     | Toronto  | 320300     |  70 | Canada  | 1992-05-07 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| c05    | donna newman    | new      | Toronto  | 130120     |  50 | Canada  | 1995-01-26 | 
| c06    | Eston M.        | M.       | Toronto  | 32030      |  65 | Canada  | 1995-10-22 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| c08    | Ashko charles   | Ak       | Toronto  | 421044     |  72 | Canada  | 1996-05-07 | 
| c10    | ash             | as       | new york | 325555     |  32 | usa     | 2018-05-14 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
9 rows in set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t where age rlike '^[1-4]';
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley          | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| C02    | Bob marley      | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| c10    | ash             | as       | new york | 325555     |  32 | usa     | 2018-05-14 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
5 rows in set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t where age rlike '^[0-1]';
Empty set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t where age rlike '^[0-2]';
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| custid | name            | nickname | city     | postalcode | age | country | dob        |
+--------+-----------------+----------+----------+------------+-----+---------+------------+
| C03    | Cherlies Theron | Cher     | Brampton | 120134     |  20 | Canada  | 1994-11-03 | 
| C04    | Denial jack     | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
+--------+-----------------+----------+----------+------------+-----+---------+------------+
2 rows in set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t where age rlike '^[1-4]' having age>20;
+--------+-------------+----------+----------+------------+-----+---------+------------+
| custid | name        | nickname | city     | postalcode | age | country | dob        |
+--------+-------------+----------+----------+------------+-----+---------+------------+
| C01    | Ashley      | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C04    | Denial jack | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
| C02    | Bob marley  | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| c10    | ash         | as       | new york | 325555     |  32 | usa     | 2018-05-14 | 
+--------+-------------+----------+----------+------------+-----+---------+------------+
4 rows in set (0.00 sec)

mysql> select*from (select*from customer order by dob asc) as t where age rlike '^[1-4]' having age>20 group by name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'group by name' at line 1
mysql> select*from (select*from customer order by dob asc) as t group by name where age rlike '^[1-4]' having age>20;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where age rlike '^[1-4]' having age>20' at line 1
mysql> select*from (select*from customer order by dob asc) as t where age rlike '^[1-4]' group by name having age>20;
+--------+-------------+----------+----------+------------+-----+---------+------------+
| custid | name        | nickname | city     | postalcode | age | country | dob        |
+--------+-------------+----------+----------+------------+-----+---------+------------+
| c10    | ash         | as       | new york | 325555     |  32 | usa     | 2018-05-14 | 
| C01    | Ashley      | Ash      | WDC      | 321200     |  34 | USA     | 1991-01-10 | 
| C02    | Bob marley  | Bm       | Toronto  | 100100     |  30 | Canada  | 1996-04-05 | 
| C04    | Denial jack | dj       | Brampton | 341020     |  25 | Canada  | 1995-11-03 | 
+--------+-------------+----------+----------+------------+-----+---------+------------+
4 rows in set (0.00 sec)

mysql> use csd2204;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_csd2204 |
+-------------------+
| ac_mast           | 
| cust_mast         | 
| emp               | 
+-------------------+
3 rows in set (0.10 sec)

mysql> desc ac_mast
    -> ;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| ac_type  | varchar(3)  | NO   | PRI |         |       | 
| ac_no    | int(4)      | NO   | PRI | 0       |       | 
| cust_no  | int(5)      | YES  | MUL | NULL    |       | 
| bal      | float(10,2) | YES  |     | NULL    |       | 
| od_limit | float(10,2) | YES  |     | NULL    |       | 
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> use csd2204s2018
ERROR 1049 (42000): Unknown database 'csd2204s2018'
mysql> use csd2204s18;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             | 
| orders               | 
| persons              | 
| test3                | 
| test4                | 
| tt                   | 
+----------------------+
6 rows in set (0.11 sec)

mysql> select*from orders;
Empty set (0.00 sec)

mysql> desc orders;
+-------------+--------+------+-----+---------+-------+
| Field       | Type   | Null | Key | Default | Extra |
+-------------+--------+------+-----+---------+-------+
| orderid     | int(5) | NO   | PRI | NULL    |       | 
| ordernumber | int(5) | NO   |     | NULL    |       | 
| personid    | int(5) | YES  | MUL | NULL    |       | 
+-------------+--------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table orders modify ordernumber ordernumber int(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ordernumber int(50)' at line 1
mysql> alter table orders modify ordernumber ordernumber integer(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ordernumber integer(50)' at line 1
mysql> alter table orders modify column ordernumber integer(50);
Query OK, 0 rows affected (0.22 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table orders change column ordernumber ordernum integer(50);
Query OK, 0 rows affected (0.20 sec)
Records: 0  Duplicates: 0  Warnings: 0

