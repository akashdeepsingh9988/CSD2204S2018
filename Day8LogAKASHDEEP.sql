mysql> use csd2204s18
Database changed
mysql> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema | 
| akash              | 
| csd2204            | 
| csd2204s18         | 
| mysql              | 
| newtable           | 
| test               | 
| testing            | 
| vpn                | 
+--------------------+
9 rows in set (0.00 sec)

mysql> select*from manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              | 
|    2 | Creative Labs     | 
|    3 | Hewlett-Packard   | 
|    4 | Iomega            | 
|    5 | Fujitsu           | 
|    6 | Winchester        | 
|    7 | moxDroid Labs Inc | 
|    8 | Dell              | 
|    9 | Bell Labs         | 
+------+-------------------+
9 rows in set (0.00 sec)

mysql> select*from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 | 
|    2 | Memory          |   120 |            6 | 
|    3 | ZIP drive       |   150 |            4 | 
|    4 | Floppy disk     |     5 |            6 | 
|    5 | Monitor         |   240 |            1 | 
|    6 | DVD drive       |   180 |            2 | 
|    7 | CD drive        |    90 |            2 | 
|    8 | Printer         |   270 |            3 | 
|    9 | Toner cartridge |    66 |            3 | 
|   10 | DVD burner      |   180 |            2 | 
|   11 | Printer         |    40 |            7 | 
|   12 | Toner cartridge |    54 |            7 | 
|   13 | DVD burner      |    78 |            7 | 
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

mysql> desc manu;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| Code  | int(3)      | NO   | PRI | NULL    | auto_increment | 
| Name  | varchar(50) | NO   |     | NULL    |                | 
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

mysql> desc products;
+--------------+---------------+------+-----+---------+----------------+
| Field        | Type          | Null | Key | Default | Extra          |
+--------------+---------------+------+-----+---------+----------------+
| Code         | int(3)        | NO   | PRI | NULL    | auto_increment | 
| Name         | varchar(255)  | NO   |     | NULL    |                | 
| Price        | decimal(10,0) | NO   |     | NULL    |                | 
| Manufacturer | int(3)        | YES  | MUL | NULL    |                | 
+--------------+---------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> select*from manu inner join on manu.code=products.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on manu.code=products.code' at line 1
mysql> select*from manu inner join on manu.code=products.manufacturere;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on manu.code=products.manufacturere' at line 1
mysql> select*from manu inner join on product.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on product.code=manu.code' at line 1
mysql> select products.code, manu.name from manu inner join on product.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on product.code=manu.code' at line 1
mysql> select products.code, products.name, manu.name from manu inner join on product.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on product.code=manu.code' at line 1
mysql> select products.code, products.name, manu.name from manu inner join on products.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on products.code=manu.code' at line 1
mysql> select products.code, products.name, manu.name from manu inner join on products.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on products.code=manu.code' at line 1
mysql> select products.code, products.name, manu.name from manu inner join on products.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on products.code=manu.code' at line 1
mysql> select products.code, products.name, manu.name from manu inner join on products.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on products.code=manu.code' at line 1
mysql> select products.code, products.name, manu.name from products inner join on product.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on product.code=manu.code' at line 1
mysql> select products.code, products.name, manu.name
    -> from manu
    -> inner join products
    -> on products.code=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              | 
|    2 | Memory          | Creative Labs     | 
|    3 | ZIP drive       | Hewlett-Packard   | 
|    4 | Floppy disk     | Iomega            | 
|    5 | Monitor         | Fujitsu           | 
|    6 | DVD drive       | Winchester        | 
|    7 | CD drive        | moxDroid Labs Inc | 
|    8 | Printer         | Dell              | 
|    9 | Toner cartridge | Bell Labs         | 
+------+-----------------+-------------------+
9 rows in set (0.00 sec)

mysql> select count(*), MANUFECTURER 
    -> FROM PRODUCTS AS P
    -> INNER JOIN MANU M
    -> ON M.CODE=P.MANUFECTURER
    -> GROUP BY MANUFECTURER;
ERROR 1054 (42S22): Unknown column 'MANUFECTURER' in 'field list'
mysql> select count(*), MANUFACTURER 
    -> FROM PRODUCTS AS P
    -> INNER JOIN MANU M
    -> ON M.CODE=P.MANUFACTURER
    -> GROUP BY MANUFACTURER;
+----------+--------------+
| count(*) | MANUFACTURER |
+----------+--------------+
|        1 |            1 | 
|        3 |            2 | 
|        2 |            3 | 
|        1 |            4 | 
|        1 |            5 | 
|        2 |            6 | 
|        3 |            7 | 
+----------+--------------+
7 rows in set (0.00 sec)

mysql> select products.code, products.name, manu.name from manu inner join on product.code=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'on product.code=manu.code' at line 1
mysql> select*from manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              | 
|    2 | Creative Labs     | 
|    3 | Hewlett-Packard   | 
|    4 | Iomega            | 
|    5 | Fujitsu           | 
|    6 | Winchester        | 
|    7 | moxDroid Labs Inc | 
|    8 | Dell              | 
|    9 | Bell Labs         | 
+------+-------------------+
9 rows in set (0.00 sec)

mysql> select*from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 | 
|    2 | Memory          |   120 |            6 | 
|    3 | ZIP drive       |   150 |            4 | 
|    4 | Floppy disk     |     5 |            6 | 
|    5 | Monitor         |   240 |            1 | 
|    6 | DVD drive       |   180 |            2 | 
|    7 | CD drive        |    90 |            2 | 
|    8 | Printer         |   270 |            3 | 
|    9 | Toner cartridge |    66 |            3 | 
|   10 | DVD burner      |   180 |            2 | 
|   11 | Printer         |    40 |            7 | 
|   12 | Toner cartridge |    54 |            7 | 
|   13 | DVD burner      |    78 |            7 | 
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFECTURER, m.NAME from products as p inne; 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inne' at line 1
mysql> select count(*)'NUMBER OF ITEMS', MANUFECTURER, m.NAME from products as p inner join manu as m; 
ERROR 1054 (42S22): Unknown column 'MANUFECTURER' in 'field list'
mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m; 
+-----------------+--------------+------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME |
+-----------------+--------------+------+
|             117 |            5 | Sony | 
+-----------------+--------------+------+
1 row in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code ; 
+-----------------+--------------+------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME |
+-----------------+--------------+------+
|               9 |            5 | Sony | 
+-----------------+--------------+------+
1 row in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, NAME from products as p inner join manu as m on m.code=p.code ; 
ERROR 1052 (23000): Column 'NAME' in field list is ambiguous
mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code ; 
+-----------------+--------------+------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME |
+-----------------+--------------+------+
|               9 |            5 | Sony | 
+-----------------+--------------+------+
1 row in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.manufacturer=p.code ; 
ERROR 1054 (42S22): Unknown column 'm.manufacturer' in 'on clause'
mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on p.manufacturer=m.code ; 
+-----------------+--------------+------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME |
+-----------------+--------------+------+
|              13 |            1 | Sony | 
+-----------------+--------------+------+
1 row in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.manufacturer=p.code ; 
ERROR 1054 (42S22): Unknown column 'm.manufacturer' in 'on clause'
mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code ; 
+-----------------+--------------+------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME |
+-----------------+--------------+------+
|               9 |            5 | Sony | 
+-----------------+--------------+------+
1 row in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer  ; 
+-----------------+--------------+-----------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME            |
+-----------------+--------------+-----------------+
|               1 |            1 | Fujitsu         | 
|               2 |            2 | Winchester      | 
|               2 |            3 | Dell            | 
|               1 |            4 | Hewlett-Packard | 
|               1 |            5 | Sony            | 
|               2 |            6 | Creative Labs   | 
+-----------------+--------------+-----------------+
6 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code where m.code<4   group by manufacturer  ; 
+-----------------+--------------+-----------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME            |
+-----------------+--------------+-----------------+
|               1 |            4 | Hewlett-Packard | 
|               1 |            5 | Sony            | 
|               1 |            6 | Creative Labs   | 
+-----------------+--------------+-----------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code where m.code>4   group by manufacturer  ; 
+-----------------+--------------+------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME       |
+-----------------+--------------+------------+
|               1 |            1 | Fujitsu    | 
|               2 |            2 | Winchester | 
|               2 |            3 | Dell       | 
+-----------------+--------------+------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on p.code=m.code where m.code<4   group by manufacturer  ; 
+-----------------+--------------+-----------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME            |
+-----------------+--------------+-----------------+
|               1 |            4 | Hewlett-Packard | 
|               1 |            5 | Sony            | 
|               1 |            6 | Creative Labs   | 
+-----------------+--------------+-----------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on p.code=m.code where m.code<4 group by manufacturer  ; 
+-----------------+--------------+-----------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME            |
+-----------------+--------------+-----------------+
|               1 |            4 | Hewlett-Packard | 
|               1 |            5 | Sony            | 
|               1 |            6 | Creative Labs   | 
+-----------------+--------------+-----------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer  ; 
+-----------------+--------------+-----------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME            |
+-----------------+--------------+-----------------+
|               1 |            1 | Fujitsu         | 
|               2 |            2 | Winchester      | 
|               2 |            3 | Dell            | 
|               1 |            4 | Hewlett-Packard | 
|               1 |            5 | Sony            | 
|               2 |            6 | Creative Labs   | 
+-----------------+--------------+-----------------+
6 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on p.code=m.code group by manufacturer  ; 
+-----------------+--------------+-----------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME            |
+-----------------+--------------+-----------------+
|               1 |            1 | Fujitsu         | 
|               2 |            2 | Winchester      | 
|               2 |            3 | Dell            | 
|               1 |            4 | Hewlett-Packard | 
|               1 |            5 | Sony            | 
|               2 |            6 | Creative Labs   | 
+-----------------+--------------+-----------------+
6 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer having count(*)=2 ; 
+-----------------+--------------+---------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME          |
+-----------------+--------------+---------------+
|               2 |            2 | Winchester    | 
|               2 |            3 | Dell          | 
|               2 |            6 | Creative Labs | 
+-----------------+--------------+---------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer having count(*)>2 ; 
Empty set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer having count(*)=2 ; 
+-----------------+--------------+---------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME          |
+-----------------+--------------+---------------+
|               2 |            2 | Winchester    | 
|               2 |            3 | Dell          | 
|               2 |            6 | Creative Labs | 
+-----------------+--------------+---------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer having count(*)>2 ; 
Empty set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer having count(*)>2 ; 
Empty set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, m.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer having count(*)<2 ; 
+-----------------+--------------+-----------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME            |
+-----------------+--------------+-----------------+
|               1 |            1 | Fujitsu         | 
|               1 |            4 | Hewlett-Packard | 
|               1 |            5 | Sony            | 
+-----------------+--------------+-----------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, p.NAME from products as p inner join manu as m on m.code=p.code group by manufacturer having count(*)<2 ; 
+-----------------+--------------+------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME       |
+-----------------+--------------+------------+
|               1 |            1 | Monitor    | 
|               1 |            4 | ZIP drive  | 
|               1 |            5 | Hard drive | 
+-----------------+--------------+------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, p.NAME from products as p inner join manu as m on p.code=m.code group by manufacturer having count(*)<2 ; 
+-----------------+--------------+------------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME       |
+-----------------+--------------+------------+
|               1 |            1 | Monitor    | 
|               1 |            4 | ZIP drive  | 
|               1 |            5 | Hard drive | 
+-----------------+--------------+------------+
3 rows in set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, p.NAME from products as p inner join manu as m on p.code=m.code group by manufacturer having count(*)>2 ; 
Empty set (0.00 sec)

mysql> select count(*)'NUMBER OF ITEMS', MANUFaCTURER, p.NAME from products as p inner join manu as m on p.code=m.code where m.code in(2,3) group by manufacturer ; 
+-----------------+--------------+-----------+
| NUMBER OF ITEMS | MANUFaCTURER | NAME      |
+-----------------+--------------+-----------+
|               1 |            4 | ZIP drive | 
|               1 |            6 | Memory    | 
+-----------------+--------------+-----------+
2 rows in set (0.00 sec)

mysql> select  MANUFaCTURER, p.NAME,count(*) from products as p inner join manu as m on p.code=m.code where m.code in(2,3) group by manufacturer ; 
+--------------+-----------+----------+
| MANUFaCTURER | NAME      | count(*) |
+--------------+-----------+----------+
|            4 | ZIP drive |        1 | 
|            6 | Memory    |        1 | 
+--------------+-----------+----------+
2 rows in set (0.00 sec)

mysql> select*from manu;
+------+-------------------+
| Code | Name              |
+------+-------------------+
|    1 | Sony              | 
|    2 | Creative Labs     | 
|    3 | Hewlett-Packard   | 
|    4 | Iomega            | 
|    5 | Fujitsu           | 
|    6 | Winchester        | 
|    7 | moxDroid Labs Inc | 
|    8 | Dell              | 
|    9 | Bell Labs         | 
+------+-------------------+
9 rows in set (0.00 sec)

mysql> select*from products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 | 
|    2 | Memory          |   120 |            6 | 
|    3 | ZIP drive       |   150 |            4 | 
|    4 | Floppy disk     |     5 |            6 | 
|    5 | Monitor         |   240 |            1 | 
|    6 | DVD drive       |   180 |            2 | 
|    7 | CD drive        |    90 |            2 | 
|    8 | Printer         |   270 |            3 | 
|    9 | Toner cartridge |    66 |            3 | 
|   10 | DVD burner      |   180 |            2 | 
|   11 | Printer         |    40 |            7 | 
|   12 | Toner cartridge |    54 |            7 | 
|   13 | DVD burner      |    78 |            7 | 
+------+-----------------+-------+--------------+
13 rows in set (0.00 sec)

mysql> select name,code from manu,products;
ERROR 1052 (23000): Column 'name' in field list is ambiguous
mysql> select m.name,code from manu,products;
ERROR 1054 (42S22): Unknown column 'm.name' in 'field list'
mysql> select manu'.name,code from manu,products;
    '> ;
    '> '
    -> ;
ERROR 1054 (42S22): Unknown column 'manu' in 'field list'
mysql> select manu.name,code from manu,products;
ERROR 1052 (23000): Column 'code' in field list is ambiguous
mysql> select manu.name,product.code from manu,products;
ERROR 1054 (42S22): Unknown column 'product.code' in 'field list'
mysql> select manu.name,products.code from manu,products;
+-------------------+------+
| name              | code |
+-------------------+------+
| Sony              |    1 | 
| Creative Labs     |    1 | 
| Hewlett-Packard   |    1 | 
| Iomega            |    1 | 
| Fujitsu           |    1 | 
| Winchester        |    1 | 
| moxDroid Labs Inc |    1 | 
| Dell              |    1 | 
| Bell Labs         |    1 | 
| Sony              |    2 | 
| Creative Labs     |    2 | 
| Hewlett-Packard   |    2 | 
| Iomega            |    2 | 
| Fujitsu           |    2 | 
| Winchester        |    2 | 
| moxDroid Labs Inc |    2 | 
| Dell              |    2 | 
| Bell Labs         |    2 | 
| Sony              |    3 | 
| Creative Labs     |    3 | 
| Hewlett-Packard   |    3 | 
| Iomega            |    3 | 
| Fujitsu           |    3 | 
| Winchester        |    3 | 
| moxDroid Labs Inc |    3 | 
| Dell              |    3 | 
| Bell Labs         |    3 | 
| Sony              |    4 | 
| Creative Labs     |    4 | 
| Hewlett-Packard   |    4 | 
| Iomega            |    4 | 
| Fujitsu           |    4 | 
| Winchester        |    4 | 
| moxDroid Labs Inc |    4 | 
| Dell              |    4 | 
| Bell Labs         |    4 | 
| Sony              |    5 | 
| Creative Labs     |    5 | 
| Hewlett-Packard   |    5 | 
| Iomega            |    5 | 
| Fujitsu           |    5 | 
| Winchester        |    5 | 
| moxDroid Labs Inc |    5 | 
| Dell              |    5 | 
| Bell Labs         |    5 | 
| Sony              |    6 | 
| Creative Labs     |    6 | 
| Hewlett-Packard   |    6 | 
| Iomega            |    6 | 
| Fujitsu           |    6 | 
| Winchester        |    6 | 
| moxDroid Labs Inc |    6 | 
| Dell              |    6 | 
| Bell Labs         |    6 | 
| Sony              |    7 | 
| Creative Labs     |    7 | 
| Hewlett-Packard   |    7 | 
| Iomega            |    7 | 
| Fujitsu           |    7 | 
| Winchester        |    7 | 
| moxDroid Labs Inc |    7 | 
| Dell              |    7 | 
| Bell Labs         |    7 | 
| Sony              |    8 | 
| Creative Labs     |    8 | 
| Hewlett-Packard   |    8 | 
| Iomega            |    8 | 
| Fujitsu           |    8 | 
| Winchester        |    8 | 
| moxDroid Labs Inc |    8 | 
| Dell              |    8 | 
| Bell Labs         |    8 | 
| Sony              |    9 | 
| Creative Labs     |    9 | 
| Hewlett-Packard   |    9 | 
| Iomega            |    9 | 
| Fujitsu           |    9 | 
| Winchester        |    9 | 
| moxDroid Labs Inc |    9 | 
| Dell              |    9 | 
| Bell Labs         |    9 | 
| Sony              |   10 | 
| Creative Labs     |   10 | 
| Hewlett-Packard   |   10 | 
| Iomega            |   10 | 
| Fujitsu           |   10 | 
| Winchester        |   10 | 
| moxDroid Labs Inc |   10 | 
| Dell              |   10 | 
| Bell Labs         |   10 | 
| Sony              |   11 | 
| Creative Labs     |   11 | 
| Hewlett-Packard   |   11 | 
| Iomega            |   11 | 
| Fujitsu           |   11 | 
| Winchester        |   11 | 
| moxDroid Labs Inc |   11 | 
| Dell              |   11 | 
| Bell Labs         |   11 | 
| Sony              |   12 | 
| Creative Labs     |   12 | 
| Hewlett-Packard   |   12 | 
| Iomega            |   12 | 
| Fujitsu           |   12 | 
| Winchester        |   12 | 
| moxDroid Labs Inc |   12 | 
| Dell              |   12 | 
| Bell Labs         |   12 | 
| Sony              |   13 | 
| Creative Labs     |   13 | 
| Hewlett-Packard   |   13 | 
| Iomega            |   13 | 
| Fujitsu           |   13 | 
| Winchester        |   13 | 
| moxDroid Labs Inc |   13 | 
| Dell              |   13 | 
| Bell Labs         |   13 | 
+-------------------+------+
117 rows in set (0.00 sec)

mysql> select products.code, products.name,manu.name 
    -> from manu 
    -> left join products
    -> on products.code=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              | 
|    2 | Memory          | Creative Labs     | 
|    3 | ZIP drive       | Hewlett-Packard   | 
|    4 | Floppy disk     | Iomega            | 
|    5 | Monitor         | Fujitsu           | 
|    6 | DVD drive       | Winchester        | 
|    7 | CD drive        | moxDroid Labs Inc | 
|    8 | Printer         | Dell              | 
|    9 | Toner cartridge | Bell Labs         | 
+------+-----------------+-------------------+
9 rows in set (0.00 sec)

mysql> select manu.name,code from manu,products;
ERROR 1052 (23000): Column 'code' in field list is ambiguous
mysql> select products.code, products.name,manu.name 
    -> from products 
    -> left join products
    -> on products.code=manu.code;
ERROR 1066 (42000): Not unique table/alias: 'products'
mysql> select products.code, products.name,manu.name 
    -> from products 
    -> left join manu
    -> on products.code=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              | 
|    2 | Memory          | Creative Labs     | 
|    3 | ZIP drive       | Hewlett-Packard   | 
|    4 | Floppy disk     | Iomega            | 
|    5 | Monitor         | Fujitsu           | 
|    6 | DVD drive       | Winchester        | 
|    7 | CD drive        | moxDroid Labs Inc | 
|    8 | Printer         | Dell              | 
|    9 | Toner cartridge | Bell Labs         | 
|   10 | DVD burner      | NULL              | 
|   11 | Printer         | NULL              | 
|   12 | Toner cartridge | NULL              | 
|   13 | DVD burner      | NULL              | 
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

mysql> select products.code, products.name,manu.name 
    -> from manu 
    -> left join products
    -> on products.code=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Sony              | 
|    2 | Memory          | Creative Labs     | 
|    3 | ZIP drive       | Hewlett-Packard   | 
|    4 | Floppy disk     | Iomega            | 
|    5 | Monitor         | Fujitsu           | 
|    6 | DVD drive       | Winchester        | 
|    7 | CD drive        | moxDroid Labs Inc | 
|    8 | Printer         | Dell              | 
|    9 | Toner cartridge | Bell Labs         | 
+------+-----------------+-------------------+
9 rows in set (0.00 sec)

mysql> select manu.name,code from manu,products;
ERROR 1052 (23000): Column 'code' in field list is ambiguous
mysql> select products.code, products.name,manu.name 
    -> from products 
    -> left join manu
    -> on products.manufacturer=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           | 
|    2 | Memory          | Winchester        | 
|    3 | ZIP drive       | Iomega            | 
|    4 | Floppy disk     | Winchester        | 
|    5 | Monitor         | Sony              | 
|    6 | DVD drive       | Creative Labs     | 
|    7 | CD drive        | Creative Labs     | 
|    8 | Printer         | Hewlett-Packard   | 
|    9 | Toner cartridge | Hewlett-Packard   | 
|   10 | DVD burner      | Creative Labs     | 
|   11 | Printer         | moxDroid Labs Inc | 
|   12 | Toner cartridge | moxDroid Labs Inc | 
|   13 | DVD burner      | moxDroid Labs Inc | 
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

mysql> select products.code, products.name,manu.name 
    -> from products 
    -> left join manu
    -> on products.manufacturer=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           | 
|    2 | Memory          | Winchester        | 
|    3 | ZIP drive       | Iomega            | 
|    4 | Floppy disk     | Winchester        | 
|    5 | Monitor         | Sony              | 
|    6 | DVD drive       | Creative Labs     | 
|    7 | CD drive        | Creative Labs     | 
|    8 | Printer         | Hewlett-Packard   | 
|    9 | Toner cartridge | Hewlett-Packard   | 
|   10 | DVD burner      | Creative Labs     | 
|   11 | Printer         | moxDroid Labs Inc | 
|   12 | Toner cartridge | moxDroid Labs Inc | 
|   13 | DVD burner      | moxDroid Labs Inc | 
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

mysql> select products.code, products.name,manu.name 
    -> from products 
    -> right join manu
    -> on products.manufacturer=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    5 | Monitor         | Sony              | 
|    6 | DVD drive       | Creative Labs     | 
|    7 | CD drive        | Creative Labs     | 
|   10 | DVD burner      | Creative Labs     | 
|    8 | Printer         | Hewlett-Packard   | 
|    9 | Toner cartridge | Hewlett-Packard   | 
|    3 | ZIP drive       | Iomega            | 
|    1 | Hard drive      | Fujitsu           | 
|    2 | Memory          | Winchester        | 
|    4 | Floppy disk     | Winchester        | 
|   11 | Printer         | moxDroid Labs Inc | 
|   12 | Toner cartridge | moxDroid Labs Inc | 
|   13 | DVD burner      | moxDroid Labs Inc | 
| NULL | NULL            | Dell              | 
| NULL | NULL            | Bell Labs         | 
+------+-----------------+-------------------+
15 rows in set (0.00 sec)

mysql> select products.code, products.name,manu.name 
    -> from manu 
    -> right join products
    -> on products.manufacturer=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    1 | Hard drive      | Fujitsu           | 
|    2 | Memory          | Winchester        | 
|    3 | ZIP drive       | Iomega            | 
|    4 | Floppy disk     | Winchester        | 
|    5 | Monitor         | Sony              | 
|    6 | DVD drive       | Creative Labs     | 
|    7 | CD drive        | Creative Labs     | 
|    8 | Printer         | Hewlett-Packard   | 
|    9 | Toner cartridge | Hewlett-Packard   | 
|   10 | DVD burner      | Creative Labs     | 
|   11 | Printer         | moxDroid Labs Inc | 
|   12 | Toner cartridge | moxDroid Labs Inc | 
|   13 | DVD burner      | moxDroid Labs Inc | 
+------+-----------------+-------------------+
13 rows in set (0.00 sec)

mysql> select products.code, products.name,manu.name 
    -> from products 
    -> left join products
    -> on products.manufacturer=manu.code;
ERROR 1066 (42000): Not unique table/alias: 'products'
mysql> select products.code, products.name,manu.name 
    -> from products 
    -> right join manu
    -> on products.manufacturer=manu.code;
+------+-----------------+-------------------+
| code | name            | name              |
+------+-----------------+-------------------+
|    5 | Monitor         | Sony              | 
|    6 | DVD drive       | Creative Labs     | 
|    7 | CD drive        | Creative Labs     | 
|   10 | DVD burner      | Creative Labs     | 
|    8 | Printer         | Hewlett-Packard   | 
|    9 | Toner cartridge | Hewlett-Packard   | 
|    3 | ZIP drive       | Iomega            | 
|    1 | Hard drive      | Fujitsu           | 
|    2 | Memory          | Winchester        | 
|    4 | Floppy disk     | Winchester        | 
|   11 | Printer         | moxDroid Labs Inc | 
|   12 | Toner cartridge | moxDroid Labs Inc | 
|   13 | DVD burner      | moxDroid Labs Inc | 
| NULL | NULL            | Dell              | 
| NULL | NULL            | Bell Labs         | 
+------+-----------------+-------------------+
15 rows in set (0.00 sec)

mysql> select products.code, products.name,manu.name 
    -> from products 
    -> full outer join manu
    -> on products.manufacturer=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'outer join manu
on products.manufacturer=manu.code' at line 3
mysql> select products.code, products.name from products 
    -> union 
    -> select manu.code, manu.name from manu;
+------+-------------------+
| code | name              |
+------+-------------------+
|    1 | Hard drive        | 
|    2 | Memory            | 
|    3 | ZIP drive         | 
|    4 | Floppy disk       | 
|    5 | Monitor           | 
|    6 | DVD drive         | 
|    7 | CD drive          | 
|    8 | Printer           | 
|    9 | Toner cartridge   | 
|   10 | DVD burner        | 
|   11 | Printer           | 
|   12 | Toner cartridge   | 
|   13 | DVD burner        | 
|    1 | Sony              | 
|    2 | Creative Labs     | 
|    3 | Hewlett-Packard   | 
|    4 | Iomega            | 
|    5 | Fujitsu           | 
|    6 | Winchester        | 
|    7 | moxDroid Labs Inc | 
|    8 | Dell              | 
|    9 | Bell Labs         | 
+------+-------------------+
22 rows in set (0.00 sec)

mysql> select products.code, products.name,manu.name 
    -> from products 
    -> right join manu
    -> on products.manufacturer=manu.code
    -> union
    -> select products.code, products.name from products 
    -> from products 
    -> left join manu
    -> on products.manufacturer=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from products 
left join manu
on products.manufacturer=manu.code' at line 7
mysql> select products.code, products.name,manu.name 
    -> from products 
    -> right join manu
    -> on products.manufacturer=manu.code
    -> union
    -> select products.code, products.name from products 
    -> from manu
    -> left join products
    -> on products.manufacturer=manu.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from manu
left join products
on products.manufacturer=manu.code' at line 7
mysql> select products.code, products.name from products p1, products p2 where p1.code<>p2.code;
ERROR 1054 (42S22): Unknown column 'products.code' in 'field list'
mysql> select code,name from products p1, products p2 where p1.code<>p2.code;
ERROR 1052 (23000): Column 'code' in field list is ambiguous
mysql> select products.code, products.name from products p1, products p2 where p1.code<>p2.code;
ERROR 1054 (42S22): Unknown column 'products.code' in 'field list'
mysql> select products.code, products.name from products p1, products p2 where p1.code<>p2.code;
ERROR 1054 (42S22): Unknown column 'products.code' in 'field list'
mysql> select products.code, products.name from products p1, products p2 where p1.code==p2.code;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '==p2.code' at line 1
