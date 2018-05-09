mysql> tee C:\Users\Akashdeep Singh\Desktop\Day3LogAKASHDEEP.sql
mysql> show variables like 'version'
    -> ;
+---------------+------------------+
| Variable_name | Value            |
+---------------+------------------+
| version       | 5.1.33-community | 
+---------------+------------------+
1 row in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema | 
| akash              | 
| mysql              | 
| newtable           | 
| test               | 
+--------------------+
5 rows in set (0.00 sec)

mysql> create database CSD2204S18;
Query OK, 1 row affected (0.00 sec)

mysql> tee C:\Users\Akashdeep Singh\Desktop\Day3LogAKASHDEEP.sql
mysql> 
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema | 
| akash              | 
| csd2204s18         | 
| mysql              | 
| newtable           | 
| test               | 
+--------------------+
6 rows in set (0.00 sec)

mysql> use csd2204s18;
Database changed
mysql> create table customer
    -> ( custid varchar(20),
    -> name varchar(50),
    -> nickname varchar(10),
    -> city varchar(20),
    -> postalcode varchar(10),
    -> age integer(3),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 8
mysql> create table customer
    -> ( custid varchar(20) primary key,
    -> name varchar(50),
    -> nickname varchar(10),
    -> city varchar(20),
    -> postalcode varchar(10),
    -> age integer(3));
Query OK, 0 rows affected (0.11 sec)

mysql> tee C:\Users\Akashdeep Singh\Desktop\Day3LogAKASHDEEP1.sql
