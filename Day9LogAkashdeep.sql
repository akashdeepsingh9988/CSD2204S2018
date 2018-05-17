mysql> select*from countries;
+------------+--------------------------+-----------+
| COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
+------------+--------------------------+-----------+
| AR         | Argentina                |         2 | 
| AU         | Australia                |         3 | 
| BE         | Belgium                  |         1 | 
| BR         | Brazil                   |         2 | 
| CA         | Canada                   |         2 | 
| CH         | Switzerland              |         1 | 
| CN         | China                    |         3 | 
| DE         | Germany                  |         1 | 
| DK         | Denmark                  |         1 | 
| EG         | Egypt                    |         4 | 
| FR         | France                   |         1 | 
| HK         | HongKong                 |         3 | 
| IL         | Israel                   |         4 | 
| IN         | India                    |         3 | 
| IT         | Italy                    |         1 | 
| JP         | Japan                    |         3 | 
| KW         | Kuwait                   |         4 | 
| MX         | Mexico                   |         2 | 
| NG         | Nigeria                  |         4 | 
| NL         | Netherlands              |         1 | 
| SG         | Singapore                |         3 | 
| UK         | United Kingdom           |         1 | 
| US         | United States of America |         2 | 
| ZM         | Zambia                   |         4 | 
| ZW         | Zimbabwe                 |         4 | 
+------------+--------------------------+-----------+
25 rows in set (0.00 sec)

mysql> select*from departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 | 
|            20 | Marketing            |        201 |        1800 | 
|            30 | Purchasing           |        114 |        1700 | 
|            40 | Human Resources      |        203 |        2400 | 
|            50 | Shipping             |        121 |        1500 | 
|            60 | IT                   |        103 |        1400 | 
|            70 | Public Relations     |        204 |        2700 | 
|            80 | Sales                |        145 |        2500 | 
|            90 | Executive            |        100 |        1700 | 
|           100 | Finance              |        108 |        1700 | 
|           110 | Accounting           |        205 |        1700 | 
|           120 | Treasury             |          0 |        1700 | 
|           130 | Corporate Tax        |          0 |        1700 | 
|           140 | Control And Credit   |          0 |        1700 | 
|           150 | Shareholder Services |          0 |        1700 | 
|           160 | Benefits             |          0 |        1700 | 
|           170 | Manufacturing        |          0 |        1700 | 
|           180 | Construction         |          0 |        1700 | 
|           190 | Contracting          |          0 |        1700 | 
|           200 | Operations           |          0 |        1700 | 
|           210 | IT Support           |          0 |        1700 | 
|           220 | NOC                  |          0 |        1700 | 
|           230 | IT Helpdesk          |          0 |        1700 | 
|           240 | Government Sales     |          0 |        1700 | 
|           250 | Retail Sales         |          0 |        1700 | 
|           260 | Recruiting           |          0 |        1700 | 
|           270 | Payroll              |          0 |        1700 | 
+---------------+----------------------+------------+-------------+
27 rows in set (0.00 sec)

mysql> select*from employees;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 | 
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 | 
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 | 
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 | 
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 | 
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 | 
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 | 
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 | 
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 | 
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 | 
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 | 
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 | 
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 | 
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 | 
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 | 
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 | 
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 | 
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 | 
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 | 
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 | 
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 | 
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 | 
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 | 
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 | 
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 | 
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 | 
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 | 
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 | 
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 | 
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 | 
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 | 
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 | 
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 | 
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 | 
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 | 
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 | 
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 | 
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 | 
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 | 
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 | 
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 | 
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 | 
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 | 
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 | 
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 | 
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 | 
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 | 
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 | 
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 | 
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 | 
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 | 
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 | 
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 | 
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 | 
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 | 
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 | 
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 | 
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 | 
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 | 
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 | 
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 | 
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 | 
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 | 
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 | 
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 | 
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 | 
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 | 
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 | 
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 | 
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 | 
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 | 
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 | 
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 | 
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 | 
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 | 
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 | 
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 | 
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 | 
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 | 
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 | 
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 | 
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 | 
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 | 
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 | 
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 | 
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 | 
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 | 
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 | 
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 | 
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 | 
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 | 
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 | 
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 | 
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 | 
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 | 
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 | 
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 | 
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 | 
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 | 
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 | 
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 | 
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 | 
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 | 
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 | 
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 | 
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 | 
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 | 
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
107 rows in set (0.00 sec)

mysql> select*from job;
ERROR 1146 (42S02): Table 'day9.job' doesn't exist
mysql> select*from jobs;
+------------+---------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
+------------+---------------------------------+------------+------------+
| AD_PRES    | President                       |      20000 |      40000 | 
| AD_VP      | Administration Vice President   |      15000 |      30000 | 
| AD_ASST    | Administration Assistant        |       3000 |       6000 | 
| FI_MGR     | Finance Manager                 |       8200 |      16000 | 
| FI_ACCOUNT | Accountant                      |       4200 |       9000 | 
| AC_MGR     | Accounting Manager              |       8200 |      16000 | 
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 | 
| SA_MAN     | Sales Manager                   |      10000 |      20000 | 
| SA_REP     | Sales Representative            |       6000 |      12000 | 
| PU_MAN     | Purchasing Manager              |       8000 |      15000 | 
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 | 
| ST_MAN     | Stock Manager                   |       5500 |       8500 | 
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 | 
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 | 
| IT_PROG    | Programmer                      |       4000 |      10000 | 
| MK_MAN     | Marketing Manager               |       9000 |      15000 | 
| MK_REP     | Marketing Representative        |       4000 |       9000 | 
| HR_REP     | Human Resources Representative  |       4000 |       9000 | 
| PR_REP     | Public Relations Representative |       4500 |      10500 | 
+------------+---------------------------------+------------+------------+
19 rows in set (0.00 sec)

mysql> select*from job_history;
+-------------+------------+------------+------------+---------------+
| EMPLOYEE_ID | START_DATE | END_DATE   | JOB_ID     | DEPARTMENT_ID |
+-------------+------------+------------+------------+---------------+
|         102 | 1993-01-13 | 1998-07-24 | IT_PROG    |            60 | 
|         101 | 1989-09-21 | 1993-10-27 | AC_ACCOUNT |           110 | 
|         101 | 1993-10-28 | 1997-03-15 | AC_MGR     |           110 | 
|         201 | 1996-02-17 | 1999-12-19 | MK_REP     |            20 | 
|         114 | 1998-03-24 | 1999-12-31 | ST_CLERK   |            50 | 
|         122 | 1999-01-01 | 1999-12-31 | ST_CLERK   |            50 | 
|         200 | 1987-09-17 | 1993-06-17 | AD_ASST    |            90 | 
|         176 | 1998-03-24 | 1998-12-31 | SA_REP     |            80 | 
|         176 | 1999-01-01 | 1999-12-31 | SA_MAN     |            80 | 
|         200 | 1994-07-01 | 1998-12-31 | AC_ACCOUNT |            90 | 
|           0 | 0000-00-00 | 0000-00-00 |            |             0 | 
+-------------+------------+------------+------------+---------------+
11 rows in set (0.00 sec)

mysql> select*from locations;
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
| LOCATION_ID | STREET_ADDRESS            | POSTAL_CODE  | CITY                | STATE_PROVINCE    | COUNTRY_ID |
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
|        1000 | 1297 Via Cola di Rie      | 989          | Roma                |                   | IT         | 
|        1100 | 93091 Calle della Testa   | 10934        | Venice              |                   | IT         | 
|        1200 | 2017 Shinjuku-ku          | 1689         | Tokyo               | Tokyo Prefecture  | JP         | 
|        1300 | 9450 Kamiya-cho           | 6823         | Hiroshima           |                   | JP         | 
|        1400 | 2014 Jabberwocky Rd       | 26192        | Southlake           | Texas             | US         | 
|        1500 | 2011 Interiors Blvd       | 99236        | South San Francisco | California        | US         | 
|        1600 | 2007 Zagora St            | 50090        | South Brunswick     | New Jersey        | US         | 
|        1700 | 2004 Charade Rd           | 98199        | Seattle             | Washington        | US         | 
|        1800 | 147 Spadina Ave           | M5V 2L7      | Toronto             | Ontario           | CA         | 
|        1900 | 6092 Boxwood St           | YSW 9T2      | Whitehorse          | Yukon             | CA         | 
|        2000 | 40-5-12 Laogianggen       | 190518       | Beijing             |                   | CN         | 
|        2100 | 1298 Vileparle (E)        | 490231       | Bombay              | Maharashtra       | IN         | 
|        2200 | 12-98 Victoria Street     | 2901         | Sydney              | New South Wales   | AU         | 
|        2300 | 198 Clementi North        | 540198       | Singapore           |                   | SG         | 
|        2400 | 8204 Arthur St            |              | London              |                   | UK         | 
|        2500 | "Magdalen Centre          |  The Oxford  | OX9 9ZB             | Oxford            | Ox         | 
|        2600 | 9702 Chester Road         | 9629850293   | Stretford           | Manchester        | UK         | 
|        2700 | Schwanthalerstr. 7031     | 80925        | Munich              | Bavaria           | DE         | 
|        2800 | Rua Frei Caneca 1360      | 01307-002    | Sao Paulo           | Sao Paulo         | BR         | 
|        2900 | 20 Rue des Corps-Saints   | 1730         | Geneva              | Geneve            | CH         | 
|        3000 | Murtenstrasse 921         | 3095         | Bern                | BE                | CH         | 
|        3100 | Pieter Breughelstraat 837 | 3029SK       | Utrecht             | Utrecht           | NL         | 
|        3200 | Mariano Escobedo 9991     | 11932        | Mexico City         | "Distrito Federal | "          | 
+-------------+---------------------------+--------------+---------------------+-------------------+------------+
23 rows in set (0.00 sec)

mysql> select*from regions;
+-----------+-------------------------+
| REGION_ID | REGION_NAME             |
+-----------+-------------------------+
|         1 | Europe                 | 
|         2 | Americas               | 
|         3 | Asia                   | 
|         4 | Middle East and Africa | 
+-----------+-------------------------+
4 rows in set (0.00 sec)

mysql> select*from regions;
+-----------+-------------------------+
| REGION_ID | REGION_NAME             |
+-----------+-------------------------+
|         1 | Europe                 | 
|         2 | Americas               | 
|         3 | Asia                   | 
|         4 | Middle East and Africa | 
+-----------+-------------------------+
4 rows in set (0.00 sec)

mysql> desc countries;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | NO   | PRI | NULL    |       | 
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       | 
| REGION_ID    | decimal(10,0) | YES  | MUL | NULL    |       | 
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> descregions;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'descregions' at line 1
mysql> desc regions;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| REGION_ID   | decimal(5,0) | NO   | PRI | NULL    |       | 
| REGION_NAME | varchar(25)  | YES  | UNI | NULL    |       | 
+-------------+--------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> desc locations;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| LOCATION_ID    | decimal(4,0) | NO   | PRI | 0       |       | 
| STREET_ADDRESS | varchar(40)  | YES  |     | NULL    |       | 
| POSTAL_CODE    | varchar(12)  | YES  |     | NULL    |       | 
| CITY           | varchar(30)  | NO   | MUL | NULL    |       | 
| STATE_PROVINCE | varchar(25)  | YES  | MUL | NULL    |       | 
| COUNTRY_ID     | varchar(2)   | YES  | MUL | NULL    |       | 
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> desc job_history;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID   | decimal(6,0) | NO   | PRI | NULL    |       | 
| START_DATE    | date         | NO   | PRI | NULL    |       | 
| END_DATE      | date         | NO   |     | NULL    |       | 
| JOB_ID        | varchar(10)  | NO   | MUL | NULL    |       | 
| DEPARTMENT_ID | decimal(4,0) | YES  | MUL | NULL    |       | 
+---------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> desc countries;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| COUNTRY_ID   | varchar(2)    | NO   | PRI | NULL    |       | 
| COUNTRY_NAME | varchar(40)   | YES  |     | NULL    |       | 
| REGION_ID    | decimal(10,0) | YES  | MUL | NULL    |       | 
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.26 sec)

mysql> desc jobs;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| JOB_ID     | varchar(10)  | NO   | PRI |         |       | 
| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       | 
| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       | 
| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       | 
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> select*from employees;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 | 
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 | 
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 | 
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 | 
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 | 
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 | 
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 | 
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 | 
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 | 
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 | 
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 | 
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 | 
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 | 
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 | 
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 | 
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 | 
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 | 
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 | 
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 | 
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 | 
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 | 
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 | 
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 | 
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 | 
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 | 
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 | 
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 | 
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 | 
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 | 
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 | 
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 | 
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 | 
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 | 
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 | 
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 | 
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 | 
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 | 
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 | 
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 | 
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 | 
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 | 
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 | 
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 | 
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 | 
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 | 
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 | 
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 | 
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 | 
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 | 
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 | 
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 | 
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 | 
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 | 
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 | 
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 | 
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 | 
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 | 
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 | 
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 | 
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 | 
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 | 
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 | 
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 | 
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 | 
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 | 
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 | 
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 | 
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 | 
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 | 
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 | 
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 | 
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 | 
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 | 
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 | 
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 | 
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 | 
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 | 
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 | 
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 | 
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 | 
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 | 
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 | 
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 | 
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 | 
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 | 
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 | 
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 | 
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 | 
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 | 
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 | 
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 | 
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 | 
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 | 
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 | 
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 | 
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 | 
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 | 
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 | 
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 | 
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 | 
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 | 
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 | 
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 | 
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 | 
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 | 
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 | 
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 | 
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
107 rows in set (0.00 sec)

mysql> select salary from employees where last_name like 'bull';
+---------+
| salary  |
+---------+
| 4100.00 | 
+---------+
1 row in set (0.00 sec)

mysql> select first_name, last_name from employees where salary>4100 ;
+-------------+------------+
| first_name  | last_name  |
+-------------+------------+
| Steven      | King       | 
| Neena       | Kochhar    | 
| Lex         | De Haan    | 
| Alexander   | Hunold     | 
| Bruce       | Ernst      | 
| David       | Austin     | 
| Valli       | Pataballa  | 
| Diana       | Lorentz    | 
| Nancy       | Greenberg  | 
| Daniel      | Faviet     | 
| John        | Chen       | 
| Ismael      | Sciarra    | 
| Jose Manuel | Urman      | 
| Luis        | Popp       | 
| Den         | Raphaely   | 
| Matthew     | Weiss      | 
| Adam        | Fripp      | 
| Payam       | Kaufling   | 
| Shanta      | Vollman    | 
| Kevin       | Mourgos    | 
| John        | Russell    | 
| Karen       | Partners   | 
| Alberto     | Errazuriz  | 
| Gerald      | Cambrault  | 
| Eleni       | Zlotkey    | 
| Peter       | Tucker     | 
| David       | Bernstein  | 
| Peter       | Hall       | 
| Christopher | Olsen      | 
| Nanette     | Cambrault  | 
| Oliver      | Tuvault    | 
| Janette     | King       | 
| Patrick     | Sully      | 
| Allan       | McEwen     | 
| Lindsey     | Smith      | 
| Louise      | Doran      | 
| Sarath      | Sewall     | 
| Clara       | Vishney    | 
| Danielle    | Greene     | 
| Mattea      | Marvins    | 
| David       | Lee        | 
| Sundar      | Ande       | 
| Amit        | Banda      | 
| Lisa        | Ozer       | 
| Harrison    | Bloom      | 
| Tayler      | Fox        | 
| William     | Smith      | 
| Elizabeth   | Bates      | 
| Sundita     | Kumar      | 
| Ellen       | Abel       | 
| Alyssa      | Hutton     | 
| Jonathon    | Taylor     | 
| Jack        | Livingston | 
| Kimberely   | Grant      | 
| Charles     | Johnson    | 
| Nandita     | Sarchand   | 
| Jennifer    | Whalen     | 
| Michael     | Hartstein  | 
| Pat         | Fay        | 
| Susan       | Mavris     | 
| Hermann     | Baer       | 
| Shelley     | Higgins    | 
| William     | Gietz      | 
+-------------+------------+
63 rows in set (0.00 sec)

mysql> select first_name, last_name,salary from employees where salary>4100 ;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 | 
| Neena       | Kochhar    | 17000.00 | 
| Lex         | De Haan    | 17000.00 | 
| Alexander   | Hunold     |  9000.00 | 
| Bruce       | Ernst      |  6000.00 | 
| David       | Austin     |  4800.00 | 
| Valli       | Pataballa  |  4800.00 | 
| Diana       | Lorentz    |  4200.00 | 
| Nancy       | Greenberg  | 12000.00 | 
| Daniel      | Faviet     |  9000.00 | 
| John        | Chen       |  8200.00 | 
| Ismael      | Sciarra    |  7700.00 | 
| Jose Manuel | Urman      |  7800.00 | 
| Luis        | Popp       |  6900.00 | 
| Den         | Raphaely   | 11000.00 | 
| Matthew     | Weiss      |  8000.00 | 
| Adam        | Fripp      |  8200.00 | 
| Payam       | Kaufling   |  7900.00 | 
| Shanta      | Vollman    |  6500.00 | 
| Kevin       | Mourgos    |  5800.00 | 
| John        | Russell    | 14000.00 | 
| Karen       | Partners   | 13500.00 | 
| Alberto     | Errazuriz  | 12000.00 | 
| Gerald      | Cambrault  | 11000.00 | 
| Eleni       | Zlotkey    | 10500.00 | 
| Peter       | Tucker     | 10000.00 | 
| David       | Bernstein  |  9500.00 | 
| Peter       | Hall       |  9000.00 | 
| Christopher | Olsen      |  8000.00 | 
| Nanette     | Cambrault  |  7500.00 | 
| Oliver      | Tuvault    |  7000.00 | 
| Janette     | King       | 10000.00 | 
| Patrick     | Sully      |  9500.00 | 
| Allan       | McEwen     |  9000.00 | 
| Lindsey     | Smith      |  8000.00 | 
| Louise      | Doran      |  7500.00 | 
| Sarath      | Sewall     |  7000.00 | 
| Clara       | Vishney    | 10500.00 | 
| Danielle    | Greene     |  9500.00 | 
| Mattea      | Marvins    |  7200.00 | 
| David       | Lee        |  6800.00 | 
| Sundar      | Ande       |  6400.00 | 
| Amit        | Banda      |  6200.00 | 
| Lisa        | Ozer       | 11500.00 | 
| Harrison    | Bloom      | 10000.00 | 
| Tayler      | Fox        |  9600.00 | 
| William     | Smith      |  7400.00 | 
| Elizabeth   | Bates      |  7300.00 | 
| Sundita     | Kumar      |  6100.00 | 
| Ellen       | Abel       | 11000.00 | 
| Alyssa      | Hutton     |  8800.00 | 
| Jonathon    | Taylor     |  8600.00 | 
| Jack        | Livingston |  8400.00 | 
| Kimberely   | Grant      |  7000.00 | 
| Charles     | Johnson    |  6200.00 | 
| Nandita     | Sarchand   |  4200.00 | 
| Jennifer    | Whalen     |  4400.00 | 
| Michael     | Hartstein  | 13000.00 | 
| Pat         | Fay        |  6000.00 | 
| Susan       | Mavris     |  6500.00 | 
| Hermann     | Baer       | 10000.00 | 
| Shelley     | Higgins    | 12000.00 | 
| William     | Gietz      |  8300.00 | 
+-------------+------------+----------+
63 rows in set (0.00 sec)

mysql> select first_name, last_name,salary from employees where (select*from employees where last_name like 'bull');
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> select first_name, last_name,salary from employees where (select salary from employees where last_name like 'bull');
+-------------+-------------+----------+
| first_name  | last_name   | salary   |
+-------------+-------------+----------+
| Steven      | King        | 24000.00 | 
| Neena       | Kochhar     | 17000.00 | 
| Lex         | De Haan     | 17000.00 | 
| Alexander   | Hunold      |  9000.00 | 
| Bruce       | Ernst       |  6000.00 | 
| David       | Austin      |  4800.00 | 
| Valli       | Pataballa   |  4800.00 | 
| Diana       | Lorentz     |  4200.00 | 
| Nancy       | Greenberg   | 12000.00 | 
| Daniel      | Faviet      |  9000.00 | 
| John        | Chen        |  8200.00 | 
| Ismael      | Sciarra     |  7700.00 | 
| Jose Manuel | Urman       |  7800.00 | 
| Luis        | Popp        |  6900.00 | 
| Den         | Raphaely    | 11000.00 | 
| Alexander   | Khoo        |  3100.00 | 
| Shelli      | Baida       |  2900.00 | 
| Sigal       | Tobias      |  2800.00 | 
| Guy         | Himuro      |  2600.00 | 
| Karen       | Colmenares  |  2500.00 | 
| Matthew     | Weiss       |  8000.00 | 
| Adam        | Fripp       |  8200.00 | 
| Payam       | Kaufling    |  7900.00 | 
| Shanta      | Vollman     |  6500.00 | 
| Kevin       | Mourgos     |  5800.00 | 
| Julia       | Nayer       |  3200.00 | 
| Irene       | Mikkilineni |  2700.00 | 
| James       | Landry      |  2400.00 | 
| Steven      | Markle      |  2200.00 | 
| Laura       | Bissot      |  3300.00 | 
| Mozhe       | Atkinson    |  2800.00 | 
| James       | Marlow      |  2500.00 | 
| TJ          | Olson       |  2100.00 | 
| Jason       | Mallin      |  3300.00 | 
| Michael     | Rogers      |  2900.00 | 
| Ki          | Gee         |  2400.00 | 
| Hazel       | Philtanker  |  2200.00 | 
| Renske      | Ladwig      |  3600.00 | 
| Stephen     | Stiles      |  3200.00 | 
| John        | Seo         |  2700.00 | 
| Joshua      | Patel       |  2500.00 | 
| Trenna      | Rajs        |  3500.00 | 
| Curtis      | Davies      |  3100.00 | 
| Randall     | Matos       |  2600.00 | 
| Peter       | Vargas      |  2500.00 | 
| John        | Russell     | 14000.00 | 
| Karen       | Partners    | 13500.00 | 
| Alberto     | Errazuriz   | 12000.00 | 
| Gerald      | Cambrault   | 11000.00 | 
| Eleni       | Zlotkey     | 10500.00 | 
| Peter       | Tucker      | 10000.00 | 
| David       | Bernstein   |  9500.00 | 
| Peter       | Hall        |  9000.00 | 
| Christopher | Olsen       |  8000.00 | 
| Nanette     | Cambrault   |  7500.00 | 
| Oliver      | Tuvault     |  7000.00 | 
| Janette     | King        | 10000.00 | 
| Patrick     | Sully       |  9500.00 | 
| Allan       | McEwen      |  9000.00 | 
| Lindsey     | Smith       |  8000.00 | 
| Louise      | Doran       |  7500.00 | 
| Sarath      | Sewall      |  7000.00 | 
| Clara       | Vishney     | 10500.00 | 
| Danielle    | Greene      |  9500.00 | 
| Mattea      | Marvins     |  7200.00 | 
| David       | Lee         |  6800.00 | 
| Sundar      | Ande        |  6400.00 | 
| Amit        | Banda       |  6200.00 | 
| Lisa        | Ozer        | 11500.00 | 
| Harrison    | Bloom       | 10000.00 | 
| Tayler      | Fox         |  9600.00 | 
| William     | Smith       |  7400.00 | 
| Elizabeth   | Bates       |  7300.00 | 
| Sundita     | Kumar       |  6100.00 | 
| Ellen       | Abel        | 11000.00 | 
| Alyssa      | Hutton      |  8800.00 | 
| Jonathon    | Taylor      |  8600.00 | 
| Jack        | Livingston  |  8400.00 | 
| Kimberely   | Grant       |  7000.00 | 
| Charles     | Johnson     |  6200.00 | 
| Winston     | Taylor      |  3200.00 | 
| Jean        | Fleaur      |  3100.00 | 
| Martha      | Sullivan    |  2500.00 | 
| Girard      | Geoni       |  2800.00 | 
| Nandita     | Sarchand    |  4200.00 | 
| Alexis      | Bull        |  4100.00 | 
| Julia       | Dellinger   |  3400.00 | 
| Anthony     | Cabrio      |  3000.00 | 
| Kelly       | Chung       |  3800.00 | 
| Jennifer    | Dilly       |  3600.00 | 
| Timothy     | Gates       |  2900.00 | 
| Randall     | Perkins     |  2500.00 | 
| Sarah       | Bell        |  4000.00 | 
| Britney     | Everett     |  3900.00 | 
| Samuel      | McCain      |  3200.00 | 
| Vance       | Jones       |  2800.00 | 
| Alana       | Walsh       |  3100.00 | 
| Kevin       | Feeney      |  3000.00 | 
| Donald      | OConnell    |  2600.00 | 
| Douglas     | Grant       |  2600.00 | 
| Jennifer    | Whalen      |  4400.00 | 
| Michael     | Hartstein   | 13000.00 | 
| Pat         | Fay         |  6000.00 | 
| Susan       | Mavris      |  6500.00 | 
| Hermann     | Baer        | 10000.00 | 
| Shelley     | Higgins     | 12000.00 | 
| William     | Gietz       |  8300.00 | 
+-------------+-------------+----------+
107 rows in set (0.00 sec)

mysql> select first_name, last_name,salary from employees where salary> (select salary from employees where last_name like 'bull');
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 | 
| Neena       | Kochhar    | 17000.00 | 
| Lex         | De Haan    | 17000.00 | 
| Alexander   | Hunold     |  9000.00 | 
| Bruce       | Ernst      |  6000.00 | 
| David       | Austin     |  4800.00 | 
| Valli       | Pataballa  |  4800.00 | 
| Diana       | Lorentz    |  4200.00 | 
| Nancy       | Greenberg  | 12000.00 | 
| Daniel      | Faviet     |  9000.00 | 
| John        | Chen       |  8200.00 | 
| Ismael      | Sciarra    |  7700.00 | 
| Jose Manuel | Urman      |  7800.00 | 
| Luis        | Popp       |  6900.00 | 
| Den         | Raphaely   | 11000.00 | 
| Matthew     | Weiss      |  8000.00 | 
| Adam        | Fripp      |  8200.00 | 
| Payam       | Kaufling   |  7900.00 | 
| Shanta      | Vollman    |  6500.00 | 
| Kevin       | Mourgos    |  5800.00 | 
| John        | Russell    | 14000.00 | 
| Karen       | Partners   | 13500.00 | 
| Alberto     | Errazuriz  | 12000.00 | 
| Gerald      | Cambrault  | 11000.00 | 
| Eleni       | Zlotkey    | 10500.00 | 
| Peter       | Tucker     | 10000.00 | 
| David       | Bernstein  |  9500.00 | 
| Peter       | Hall       |  9000.00 | 
| Christopher | Olsen      |  8000.00 | 
| Nanette     | Cambrault  |  7500.00 | 
| Oliver      | Tuvault    |  7000.00 | 
| Janette     | King       | 10000.00 | 
| Patrick     | Sully      |  9500.00 | 
| Allan       | McEwen     |  9000.00 | 
| Lindsey     | Smith      |  8000.00 | 
| Louise      | Doran      |  7500.00 | 
| Sarath      | Sewall     |  7000.00 | 
| Clara       | Vishney    | 10500.00 | 
| Danielle    | Greene     |  9500.00 | 
| Mattea      | Marvins    |  7200.00 | 
| David       | Lee        |  6800.00 | 
| Sundar      | Ande       |  6400.00 | 
| Amit        | Banda      |  6200.00 | 
| Lisa        | Ozer       | 11500.00 | 
| Harrison    | Bloom      | 10000.00 | 
| Tayler      | Fox        |  9600.00 | 
| William     | Smith      |  7400.00 | 
| Elizabeth   | Bates      |  7300.00 | 
| Sundita     | Kumar      |  6100.00 | 
| Ellen       | Abel       | 11000.00 | 
| Alyssa      | Hutton     |  8800.00 | 
| Jonathon    | Taylor     |  8600.00 | 
| Jack        | Livingston |  8400.00 | 
| Kimberely   | Grant      |  7000.00 | 
| Charles     | Johnson    |  6200.00 | 
| Nandita     | Sarchand   |  4200.00 | 
| Jennifer    | Whalen     |  4400.00 | 
| Michael     | Hartstein  | 13000.00 | 
| Pat         | Fay        |  6000.00 | 
| Susan       | Mavris     |  6500.00 | 
| Hermann     | Baer       | 10000.00 | 
| Shelley     | Higgins    | 12000.00 | 
| William     | Gietz      |  8300.00 | 
+-------------+------------+----------+
63 rows in set (0.00 sec)

mysql> select department_id,department_name from department where department_name like 'IT';
ERROR 1146 (42S02): Table 'day9.department' doesn't exist
mysql> select department_id,department_name from departments where department_name like 'IT';
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|            60 | IT              | 
+---------------+-----------------+
1 row in set (0.00 sec)

mysql> select department_id,department_name from departments where department_name like 'IT%';
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|            60 | IT              | 
|           210 | IT Support      | 
|           230 | IT Helpdesk     | 
+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> select department_id from departments where department_name like 'IT%';
+---------------+
| department_id |
+---------------+
|            60 | 
|           210 | 
|           230 | 
+---------------+
3 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employess where department_id= (select department_name, department_id from departments where department_name like 'it%'  );
ERROR 1146 (42S02): Table 'day9.employess' doesn't exist
mysql> select first_name, last_name,department_id from employees where department_id= (select department_name, department_id from departments where department_name like 'it%'  );
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> select first_name, last_name,department_id from employees where department_id= (select department_id from departments where department_name like 'it%'  );
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%'  );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it_%'  );
Empty set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%_%'  );
Empty set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it'  );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%'  );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name ='it'  );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like ='it%'  );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='it%'  )' at line 1
mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%'  );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name not like 'it%'  );
+-------------+-------------+---------------+
| first_name  | last_name   | department_id |
+-------------+-------------+---------------+
| Steven      | King        |            90 | 
| Neena       | Kochhar     |            90 | 
| Lex         | De Haan     |            90 | 
| Nancy       | Greenberg   |           100 | 
| Daniel      | Faviet      |           100 | 
| John        | Chen        |           100 | 
| Ismael      | Sciarra     |           100 | 
| Jose Manuel | Urman       |           100 | 
| Luis        | Popp        |           100 | 
| Den         | Raphaely    |            30 | 
| Alexander   | Khoo        |            30 | 
| Shelli      | Baida       |            30 | 
| Sigal       | Tobias      |            30 | 
| Guy         | Himuro      |            30 | 
| Karen       | Colmenares  |            30 | 
| Matthew     | Weiss       |            50 | 
| Adam        | Fripp       |            50 | 
| Payam       | Kaufling    |            50 | 
| Shanta      | Vollman     |            50 | 
| Kevin       | Mourgos     |            50 | 
| Julia       | Nayer       |            50 | 
| Irene       | Mikkilineni |            50 | 
| James       | Landry      |            50 | 
| Steven      | Markle      |            50 | 
| Laura       | Bissot      |            50 | 
| Mozhe       | Atkinson    |            50 | 
| James       | Marlow      |            50 | 
| TJ          | Olson       |            50 | 
| Jason       | Mallin      |            50 | 
| Michael     | Rogers      |            50 | 
| Ki          | Gee         |            50 | 
| Hazel       | Philtanker  |            50 | 
| Renske      | Ladwig      |            50 | 
| Stephen     | Stiles      |            50 | 
| John        | Seo         |            50 | 
| Joshua      | Patel       |            50 | 
| Trenna      | Rajs        |            50 | 
| Curtis      | Davies      |            50 | 
| Randall     | Matos       |            50 | 
| Peter       | Vargas      |            50 | 
| John        | Russell     |            80 | 
| Karen       | Partners    |            80 | 
| Alberto     | Errazuriz   |            80 | 
| Gerald      | Cambrault   |            80 | 
| Eleni       | Zlotkey     |            80 | 
| Peter       | Tucker      |            80 | 
| David       | Bernstein   |            80 | 
| Peter       | Hall        |            80 | 
| Christopher | Olsen       |            80 | 
| Nanette     | Cambrault   |            80 | 
| Oliver      | Tuvault     |            80 | 
| Janette     | King        |            80 | 
| Patrick     | Sully       |            80 | 
| Allan       | McEwen      |            80 | 
| Lindsey     | Smith       |            80 | 
| Louise      | Doran       |            80 | 
| Sarath      | Sewall      |            80 | 
| Clara       | Vishney     |            80 | 
| Danielle    | Greene      |            80 | 
| Mattea      | Marvins     |            80 | 
| David       | Lee         |            80 | 
| Sundar      | Ande        |            80 | 
| Amit        | Banda       |            80 | 
| Lisa        | Ozer        |            80 | 
| Harrison    | Bloom       |            80 | 
| Tayler      | Fox         |            80 | 
| William     | Smith       |            80 | 
| Elizabeth   | Bates       |            80 | 
| Sundita     | Kumar       |            80 | 
| Ellen       | Abel        |            80 | 
| Alyssa      | Hutton      |            80 | 
| Jonathon    | Taylor      |            80 | 
| Jack        | Livingston  |            80 | 
| Charles     | Johnson     |            80 | 
| Winston     | Taylor      |            50 | 
| Jean        | Fleaur      |            50 | 
| Martha      | Sullivan    |            50 | 
| Girard      | Geoni       |            50 | 
| Nandita     | Sarchand    |            50 | 
| Alexis      | Bull        |            50 | 
| Julia       | Dellinger   |            50 | 
| Anthony     | Cabrio      |            50 | 
| Kelly       | Chung       |            50 | 
| Jennifer    | Dilly       |            50 | 
| Timothy     | Gates       |            50 | 
| Randall     | Perkins     |            50 | 
| Sarah       | Bell        |            50 | 
| Britney     | Everett     |            50 | 
| Samuel      | McCain      |            50 | 
| Vance       | Jones       |            50 | 
| Alana       | Walsh       |            50 | 
| Kevin       | Feeney      |            50 | 
| Donald      | OConnell    |            50 | 
| Douglas     | Grant       |            50 | 
| Jennifer    | Whalen      |            10 | 
| Michael     | Hartstein   |            20 | 
| Pat         | Fay         |            20 | 
| Susan       | Mavris      |            40 | 
| Hermann     | Baer        |            70 | 
| Shelley     | Higgins     |           110 | 
| William     | Gietz       |           110 | 
+-------------+-------------+---------------+
101 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name in('it')  );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' order by department_name );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' order by department_name asc );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' order by department_name desc );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id order by last_name asc in (select department_id from departments where department_name like 'it%' );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'in (select department_id from departments where department_name like 'it%' )' at line 1
mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' ) order by last_name asc;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| David      | Austin    |            60 | 
| Bruce      | Ernst     |            60 | 
| Alexander  | Hunold    |            60 | 
| Diana      | Lorentz   |            60 | 
| Valli      | Pataballa |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' ) group by department_name;
ERROR 1054 (42S22): Unknown column 'department_name' in 'group statement'
mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' ) order by last_name asc;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| David      | Austin    |            60 | 
| Bruce      | Ernst     |            60 | 
| Alexander  | Hunold    |            60 | 
| Diana      | Lorentz   |            60 | 
| Valli      | Pataballa |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' ) group by department_id;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
+------------+-----------+---------------+
1 row in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' ) order by last_name asc;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| David      | Austin    |            60 | 
| Bruce      | Ernst     |            60 | 
| Alexander  | Hunold    |            60 | 
| Diana      | Lorentz   |            60 | 
| Valli      | Pataballa |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' ) order by last_name asc having name='david';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'having name='david'' at line 1
mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' ) order by last_name asc;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| David      | Austin    |            60 | 
| Bruce      | Ernst     |            60 | 
| Alexander  | Hunold    |            60 | 
| Diana      | Lorentz   |            60 | 
| Valli      | Pataballa |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' ) order by last_name asc;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| David      | Austin    |            60 | 
| Bruce      | Ernst     |            60 | 
| Alexander  | Hunold    |            60 | 
| Diana      | Lorentz   |            60 | 
| Valli      | Pataballa |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like 'it%' );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like '%it%' );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name,department_id from employees where department_id in (select department_id from departments where department_name like '%it%' );
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Alexander  | Hunold    |            60 | 
| Bruce      | Ernst     |            60 | 
| David      | Austin    |            60 | 
| Valli      | Pataballa |            60 | 
| Diana      | Lorentz   |            60 | 
+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> select*from employees limit 5;
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING    | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |          0 |            90 | 
|         101 | Neena      | Kochhar   | NKOCHHAR | 515.123.4568 | 1987-06-18 | AD_VP   | 17000.00 |           0.00 |        100 |            90 | 
|         102 | Lex        | De Haan   | LDEHAAN  | 515.123.4569 | 1987-06-19 | AD_VP   | 17000.00 |           0.00 |        100 |            90 | 
|         103 | Alexander  | Hunold    | AHUNOLD  | 590.423.4567 | 1987-06-20 | IT_PROG |  9000.00 |           0.00 |        102 |            60 | 
|         104 | Bruce      | Ernst     | BERNST   | 590.423.4568 | 1987-06-21 | IT_PROG |  6000.00 |           0.00 |        103 |            60 | 
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
5 rows in set (0.00 sec)

mysql> select*from departments limit 2;
+---------------+-----------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME | MANAGER_ID | LOCATION_ID |
+---------------+-----------------+------------+-------------+
|            10 | Administration  |        200 |        1700 | 
|            20 | Marketing       |        201 |        1800 | 
+---------------+-----------------+------------+-------------+
2 rows in set (0.00 sec)

mysql> select*from locations limit 2;
+-------------+-------------------------+-------------+--------+----------------+------------+
| LOCATION_ID | STREET_ADDRESS          | POSTAL_CODE | CITY   | STATE_PROVINCE | COUNTRY_ID |
+-------------+-------------------------+-------------+--------+----------------+------------+
|        1000 | 1297 Via Cola di Rie    | 989         | Roma   |                | IT         | 
|        1100 | 93091 Calle della Testa | 10934       | Venice |                | IT         | 
+-------------+-------------------------+-------------+--------+----------------+------------+
2 rows in set (0.00 sec)

mysql> select*from locations limit 5;
+-------------+-------------------------+-------------+-----------+------------------+------------+
| LOCATION_ID | STREET_ADDRESS          | POSTAL_CODE | CITY      | STATE_PROVINCE   | COUNTRY_ID |
+-------------+-------------------------+-------------+-----------+------------------+------------+
|        1000 | 1297 Via Cola di Rie    | 989         | Roma      |                  | IT         | 
|        1100 | 93091 Calle della Testa | 10934       | Venice    |                  | IT         | 
|        1200 | 2017 Shinjuku-ku        | 1689        | Tokyo     | Tokyo Prefecture | JP         | 
|        1300 | 9450 Kamiya-cho         | 6823        | Hiroshima |                  | JP         | 
|        1400 | 2014 Jabberwocky Rd     | 26192       | Southlake | Texas            | US         | 
+-------------+-------------------------+-------------+-----------+------------------+------------+
5 rows in set (0.00 sec)

mysql> select first_name, last_name from employees where manager_id not 0;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '0' at line 1
mysql> select first_name, last_name from employees where manager_id not '0';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''0'' at line 1
mysql> select first_name, last_name from employees where manager_id not in(0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Neena       | Kochhar     | 
| Lex         | De Haan     | 
| Alexander   | Hunold      | 
| Bruce       | Ernst       | 
| David       | Austin      | 
| Valli       | Pataballa   | 
| Diana       | Lorentz     | 
| Nancy       | Greenberg   | 
| Daniel      | Faviet      | 
| John        | Chen        | 
| Ismael      | Sciarra     | 
| Jose Manuel | Urman       | 
| Luis        | Popp        | 
| Den         | Raphaely    | 
| Alexander   | Khoo        | 
| Shelli      | Baida       | 
| Sigal       | Tobias      | 
| Guy         | Himuro      | 
| Karen       | Colmenares  | 
| Matthew     | Weiss       | 
| Adam        | Fripp       | 
| Payam       | Kaufling    | 
| Shanta      | Vollman     | 
| Kevin       | Mourgos     | 
| Julia       | Nayer       | 
| Irene       | Mikkilineni | 
| James       | Landry      | 
| Steven      | Markle      | 
| Laura       | Bissot      | 
| Mozhe       | Atkinson    | 
| James       | Marlow      | 
| TJ          | Olson       | 
| Jason       | Mallin      | 
| Michael     | Rogers      | 
| Ki          | Gee         | 
| Hazel       | Philtanker  | 
| Renske      | Ladwig      | 
| Stephen     | Stiles      | 
| John        | Seo         | 
| Joshua      | Patel       | 
| Trenna      | Rajs        | 
| Curtis      | Davies      | 
| Randall     | Matos       | 
| Peter       | Vargas      | 
| John        | Russell     | 
| Karen       | Partners    | 
| Alberto     | Errazuriz   | 
| Gerald      | Cambrault   | 
| Eleni       | Zlotkey     | 
| Peter       | Tucker      | 
| David       | Bernstein   | 
| Peter       | Hall        | 
| Christopher | Olsen       | 
| Nanette     | Cambrault   | 
| Oliver      | Tuvault     | 
| Janette     | King        | 
| Patrick     | Sully       | 
| Allan       | McEwen      | 
| Lindsey     | Smith       | 
| Louise      | Doran       | 
| Sarath      | Sewall      | 
| Clara       | Vishney     | 
| Danielle    | Greene      | 
| Mattea      | Marvins     | 
| David       | Lee         | 
| Sundar      | Ande        | 
| Amit        | Banda       | 
| Lisa        | Ozer        | 
| Harrison    | Bloom       | 
| Tayler      | Fox         | 
| William     | Smith       | 
| Elizabeth   | Bates       | 
| Sundita     | Kumar       | 
| Ellen       | Abel        | 
| Alyssa      | Hutton      | 
| Jonathon    | Taylor      | 
| Jack        | Livingston  | 
| Kimberely   | Grant       | 
| Charles     | Johnson     | 
| Winston     | Taylor      | 
| Jean        | Fleaur      | 
| Martha      | Sullivan    | 
| Girard      | Geoni       | 
| Nandita     | Sarchand    | 
| Alexis      | Bull        | 
| Julia       | Dellinger   | 
| Anthony     | Cabrio      | 
| Kelly       | Chung       | 
| Jennifer    | Dilly       | 
| Timothy     | Gates       | 
| Randall     | Perkins     | 
| Sarah       | Bell        | 
| Britney     | Everett     | 
| Samuel      | McCain      | 
| Vance       | Jones       | 
| Alana       | Walsh       | 
| Kevin       | Feeney      | 
| Donald      | OConnell    | 
| Douglas     | Grant       | 
| Jennifer    | Whalen      | 
| Michael     | Hartstein   | 
| Pat         | Fay         | 
| Susan       | Mavris      | 
| Hermann     | Baer        | 
| Shelley     | Higgins     | 
| William     | Gietz       | 
+-------------+-------------+
106 rows in set (0.00 sec)

mysql> select location_id, country_id from locations where country_id='us';
+-------------+------------+
| location_id | country_id |
+-------------+------------+
|        1400 | US         | 
|        1500 | US         | 
|        1600 | US         | 
|        1700 | US         | 
+-------------+------------+
4 rows in set (0.00 sec)

mysql> select location_id, from locations where country_id='us';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from locations where country_id='us'' at line 1
mysql> select location_id from locations where country_id='us';
+-------------+
| location_id |
+-------------+
|        1400 | 
|        1500 | 
|        1600 | 
|        1700 | 
+-------------+
4 rows in set (0.00 sec)

mysql> select department_id from departments where department_id in( select location_id from locations );
Empty set (0.00 sec)

mysql> select department_id from departments where department_id in( select location_id from locations where country_id='us');
Empty set (0.00 sec)

mysql> select department_id from departments where location_id in( select location_id from locations where country_id='us');
+---------------+
| department_id |
+---------------+
|            10 | 
|            30 | 
|            50 | 
|            60 | 
|            90 | 
|           100 | 
|           110 | 
|           120 | 
|           130 | 
|           140 | 
|           150 | 
|           160 | 
|           170 | 
|           180 | 
|           190 | 
|           200 | 
|           210 | 
|           220 | 
|           230 | 
|           240 | 
|           250 | 
|           260 | 
|           270 | 
+---------------+
23 rows in set (0.00 sec)

mysql> select first_name, last_name from employees !=0 and department_id in(select department_id from departments where location_id in( select location_id from locations where country_id='us'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '!=0 and department_id in(select department_id from departments where location_id' at line 1
mysql> select first_name, last_name from employees where department_id=!0 and department_id in(select department_id from departments where location_id in( select location_id from locations where country_id='us'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=!0 and department_id in(select department_id from departments where location_id' at line 1
mysql> select first_name, last_name from employees where department_id!=0 and department_id in(select department_id from departments where location_id in( select location_id from locations where country_id='us'));
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Steven      | King        | 
| Neena       | Kochhar     | 
| Lex         | De Haan     | 
| Alexander   | Hunold      | 
| Bruce       | Ernst       | 
| David       | Austin      | 
| Valli       | Pataballa   | 
| Diana       | Lorentz     | 
| Nancy       | Greenberg   | 
| Daniel      | Faviet      | 
| John        | Chen        | 
| Ismael      | Sciarra     | 
| Jose Manuel | Urman       | 
| Luis        | Popp        | 
| Den         | Raphaely    | 
| Alexander   | Khoo        | 
| Shelli      | Baida       | 
| Sigal       | Tobias      | 
| Guy         | Himuro      | 
| Karen       | Colmenares  | 
| Matthew     | Weiss       | 
| Adam        | Fripp       | 
| Payam       | Kaufling    | 
| Shanta      | Vollman     | 
| Kevin       | Mourgos     | 
| Julia       | Nayer       | 
| Irene       | Mikkilineni | 
| James       | Landry      | 
| Steven      | Markle      | 
| Laura       | Bissot      | 
| Mozhe       | Atkinson    | 
| James       | Marlow      | 
| TJ          | Olson       | 
| Jason       | Mallin      | 
| Michael     | Rogers      | 
| Ki          | Gee         | 
| Hazel       | Philtanker  | 
| Renske      | Ladwig      | 
| Stephen     | Stiles      | 
| John        | Seo         | 
| Joshua      | Patel       | 
| Trenna      | Rajs        | 
| Curtis      | Davies      | 
| Randall     | Matos       | 
| Peter       | Vargas      | 
| Winston     | Taylor      | 
| Jean        | Fleaur      | 
| Martha      | Sullivan    | 
| Girard      | Geoni       | 
| Nandita     | Sarchand    | 
| Alexis      | Bull        | 
| Julia       | Dellinger   | 
| Anthony     | Cabrio      | 
| Kelly       | Chung       | 
| Jennifer    | Dilly       | 
| Timothy     | Gates       | 
| Randall     | Perkins     | 
| Sarah       | Bell        | 
| Britney     | Everett     | 
| Samuel      | McCain      | 
| Vance       | Jones       | 
| Alana       | Walsh       | 
| Kevin       | Feeney      | 
| Donald      | OConnell    | 
| Douglas     | Grant       | 
| Jennifer    | Whalen      | 
| Shelley     | Higgins     | 
| William     | Gietz       | 
+-------------+-------------+
68 rows in set (0.00 sec)

mysql> select first_name, last_name from employees where department_id!=0 and department_id in(select department_id from deparments where department_id!=0);
ERROR 1146 (42S02): Table 'day9.deparments' doesn't exist
mysql> select first_name, last_name from employees where department_id!=0 and department_id in(select department_id from departments where department_id!=0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Steven      | King        | 
| Neena       | Kochhar     | 
| Lex         | De Haan     | 
| Alexander   | Hunold      | 
| Bruce       | Ernst       | 
| David       | Austin      | 
| Valli       | Pataballa   | 
| Diana       | Lorentz     | 
| Nancy       | Greenberg   | 
| Daniel      | Faviet      | 
| John        | Chen        | 
| Ismael      | Sciarra     | 
| Jose Manuel | Urman       | 
| Luis        | Popp        | 
| Den         | Raphaely    | 
| Alexander   | Khoo        | 
| Shelli      | Baida       | 
| Sigal       | Tobias      | 
| Guy         | Himuro      | 
| Karen       | Colmenares  | 
| Matthew     | Weiss       | 
| Adam        | Fripp       | 
| Payam       | Kaufling    | 
| Shanta      | Vollman     | 
| Kevin       | Mourgos     | 
| Julia       | Nayer       | 
| Irene       | Mikkilineni | 
| James       | Landry      | 
| Steven      | Markle      | 
| Laura       | Bissot      | 
| Mozhe       | Atkinson    | 
| James       | Marlow      | 
| TJ          | Olson       | 
| Jason       | Mallin      | 
| Michael     | Rogers      | 
| Ki          | Gee         | 
| Hazel       | Philtanker  | 
| Renske      | Ladwig      | 
| Stephen     | Stiles      | 
| John        | Seo         | 
| Joshua      | Patel       | 
| Trenna      | Rajs        | 
| Curtis      | Davies      | 
| Randall     | Matos       | 
| Peter       | Vargas      | 
| John        | Russell     | 
| Karen       | Partners    | 
| Alberto     | Errazuriz   | 
| Gerald      | Cambrault   | 
| Eleni       | Zlotkey     | 
| Peter       | Tucker      | 
| David       | Bernstein   | 
| Peter       | Hall        | 
| Christopher | Olsen       | 
| Nanette     | Cambrault   | 
| Oliver      | Tuvault     | 
| Janette     | King        | 
| Patrick     | Sully       | 
| Allan       | McEwen      | 
| Lindsey     | Smith       | 
| Louise      | Doran       | 
| Sarath      | Sewall      | 
| Clara       | Vishney     | 
| Danielle    | Greene      | 
| Mattea      | Marvins     | 
| David       | Lee         | 
| Sundar      | Ande        | 
| Amit        | Banda       | 
| Lisa        | Ozer        | 
| Harrison    | Bloom       | 
| Tayler      | Fox         | 
| William     | Smith       | 
| Elizabeth   | Bates       | 
| Sundita     | Kumar       | 
| Ellen       | Abel        | 
| Alyssa      | Hutton      | 
| Jonathon    | Taylor      | 
| Jack        | Livingston  | 
| Charles     | Johnson     | 
| Winston     | Taylor      | 
| Jean        | Fleaur      | 
| Martha      | Sullivan    | 
| Girard      | Geoni       | 
| Nandita     | Sarchand    | 
| Alexis      | Bull        | 
| Julia       | Dellinger   | 
| Anthony     | Cabrio      | 
| Kelly       | Chung       | 
| Jennifer    | Dilly       | 
| Timothy     | Gates       | 
| Randall     | Perkins     | 
| Sarah       | Bell        | 
| Britney     | Everett     | 
| Samuel      | McCain      | 
| Vance       | Jones       | 
| Alana       | Walsh       | 
| Kevin       | Feeney      | 
| Donald      | OConnell    | 
| Douglas     | Grant       | 
| Jennifer    | Whalen      | 
| Michael     | Hartstein   | 
| Pat         | Fay         | 
| Susan       | Mavris      | 
| Hermann     | Baer        | 
| Shelley     | Higgins     | 
| William     | Gietz       | 
+-------------+-------------+
106 rows in set (0.00 sec)

mysql> select first_name, last_name from employees where manager_id!=0;
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Neena       | Kochhar     | 
| Lex         | De Haan     | 
| Alexander   | Hunold      | 
| Bruce       | Ernst       | 
| David       | Austin      | 
| Valli       | Pataballa   | 
| Diana       | Lorentz     | 
| Nancy       | Greenberg   | 
| Daniel      | Faviet      | 
| John        | Chen        | 
| Ismael      | Sciarra     | 
| Jose Manuel | Urman       | 
| Luis        | Popp        | 
| Den         | Raphaely    | 
| Alexander   | Khoo        | 
| Shelli      | Baida       | 
| Sigal       | Tobias      | 
| Guy         | Himuro      | 
| Karen       | Colmenares  | 
| Matthew     | Weiss       | 
| Adam        | Fripp       | 
| Payam       | Kaufling    | 
| Shanta      | Vollman     | 
| Kevin       | Mourgos     | 
| Julia       | Nayer       | 
| Irene       | Mikkilineni | 
| James       | Landry      | 
| Steven      | Markle      | 
| Laura       | Bissot      | 
| Mozhe       | Atkinson    | 
| James       | Marlow      | 
| TJ          | Olson       | 
| Jason       | Mallin      | 
| Michael     | Rogers      | 
| Ki          | Gee         | 
| Hazel       | Philtanker  | 
| Renske      | Ladwig      | 
| Stephen     | Stiles      | 
| John        | Seo         | 
| Joshua      | Patel       | 
| Trenna      | Rajs        | 
| Curtis      | Davies      | 
| Randall     | Matos       | 
| Peter       | Vargas      | 
| John        | Russell     | 
| Karen       | Partners    | 
| Alberto     | Errazuriz   | 
| Gerald      | Cambrault   | 
| Eleni       | Zlotkey     | 
| Peter       | Tucker      | 
| David       | Bernstein   | 
| Peter       | Hall        | 
| Christopher | Olsen       | 
| Nanette     | Cambrault   | 
| Oliver      | Tuvault     | 
| Janette     | King        | 
| Patrick     | Sully       | 
| Allan       | McEwen      | 
| Lindsey     | Smith       | 
| Louise      | Doran       | 
| Sarath      | Sewall      | 
| Clara       | Vishney     | 
| Danielle    | Greene      | 
| Mattea      | Marvins     | 
| David       | Lee         | 
| Sundar      | Ande        | 
| Amit        | Banda       | 
| Lisa        | Ozer        | 
| Harrison    | Bloom       | 
| Tayler      | Fox         | 
| William     | Smith       | 
| Elizabeth   | Bates       | 
| Sundita     | Kumar       | 
| Ellen       | Abel        | 
| Alyssa      | Hutton      | 
| Jonathon    | Taylor      | 
| Jack        | Livingston  | 
| Kimberely   | Grant       | 
| Charles     | Johnson     | 
| Winston     | Taylor      | 
| Jean        | Fleaur      | 
| Martha      | Sullivan    | 
| Girard      | Geoni       | 
| Nandita     | Sarchand    | 
| Alexis      | Bull        | 
| Julia       | Dellinger   | 
| Anthony     | Cabrio      | 
| Kelly       | Chung       | 
| Jennifer    | Dilly       | 
| Timothy     | Gates       | 
| Randall     | Perkins     | 
| Sarah       | Bell        | 
| Britney     | Everett     | 
| Samuel      | McCain      | 
| Vance       | Jones       | 
| Alana       | Walsh       | 
| Kevin       | Feeney      | 
| Donald      | OConnell    | 
| Douglas     | Grant       | 
| Jennifer    | Whalen      | 
| Michael     | Hartstein   | 
| Pat         | Fay         | 
| Susan       | Mavris      | 
| Hermann     | Baer        | 
| Shelley     | Higgins     | 
| William     | Gietz       | 
+-------------+-------------+
106 rows in set (0.00 sec)

mysql> select manager_id where manager_id!=0;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where manager_id!=0' at line 1
mysql> select manager_id from employees where manager_id!=0;
+------------+
| manager_id |
+------------+
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        100 | 
|        101 | 
|        101 | 
|        101 | 
|        101 | 
|        101 | 
|        102 | 
|        103 | 
|        103 | 
|        103 | 
|        103 | 
|        108 | 
|        108 | 
|        108 | 
|        108 | 
|        108 | 
|        114 | 
|        114 | 
|        114 | 
|        114 | 
|        114 | 
|        120 | 
|        120 | 
|        120 | 
|        120 | 
|        120 | 
|        120 | 
|        120 | 
|        120 | 
|        121 | 
|        121 | 
|        121 | 
|        121 | 
|        121 | 
|        121 | 
|        121 | 
|        121 | 
|        122 | 
|        122 | 
|        122 | 
|        122 | 
|        122 | 
|        122 | 
|        122 | 
|        122 | 
|        123 | 
|        123 | 
|        123 | 
|        123 | 
|        123 | 
|        123 | 
|        123 | 
|        123 | 
|        124 | 
|        124 | 
|        124 | 
|        124 | 
|        124 | 
|        124 | 
|        124 | 
|        124 | 
|        145 | 
|        145 | 
|        145 | 
|        145 | 
|        145 | 
|        145 | 
|        146 | 
|        146 | 
|        146 | 
|        146 | 
|        146 | 
|        146 | 
|        147 | 
|        147 | 
|        147 | 
|        147 | 
|        147 | 
|        147 | 
|        148 | 
|        148 | 
|        148 | 
|        148 | 
|        148 | 
|        148 | 
|        149 | 
|        149 | 
|        149 | 
|        149 | 
|        149 | 
|        149 | 
|        201 | 
|        205 | 
+------------+
106 rows in set (0.00 sec)

mysql> select distinct(manager_id) from employees where manager_id!=0;
+------------+
| manager_id |
+------------+
|        100 | 
|        101 | 
|        102 | 
|        103 | 
|        108 | 
|        114 | 
|        120 | 
|        121 | 
|        122 | 
|        123 | 
|        124 | 
|        145 | 
|        146 | 
|        147 | 
|        148 | 
|        149 | 
|        201 | 
|        205 | 
+------------+
18 rows in set (0.00 sec)

mysql> select first_name,last_name from employees where manager_id!=0 and manager_id in (select distinct(manager_id) from employees);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Neena       | Kochhar     | 
| Lex         | De Haan     | 
| Alexander   | Hunold      | 
| Bruce       | Ernst       | 
| David       | Austin      | 
| Valli       | Pataballa   | 
| Diana       | Lorentz     | 
| Nancy       | Greenberg   | 
| Daniel      | Faviet      | 
| John        | Chen        | 
| Ismael      | Sciarra     | 
| Jose Manuel | Urman       | 
| Luis        | Popp        | 
| Den         | Raphaely    | 
| Alexander   | Khoo        | 
| Shelli      | Baida       | 
| Sigal       | Tobias      | 
| Guy         | Himuro      | 
| Karen       | Colmenares  | 
| Matthew     | Weiss       | 
| Adam        | Fripp       | 
| Payam       | Kaufling    | 
| Shanta      | Vollman     | 
| Kevin       | Mourgos     | 
| Julia       | Nayer       | 
| Irene       | Mikkilineni | 
| James       | Landry      | 
| Steven      | Markle      | 
| Laura       | Bissot      | 
| Mozhe       | Atkinson    | 
| James       | Marlow      | 
| TJ          | Olson       | 
| Jason       | Mallin      | 
| Michael     | Rogers      | 
| Ki          | Gee         | 
| Hazel       | Philtanker  | 
| Renske      | Ladwig      | 
| Stephen     | Stiles      | 
| John        | Seo         | 
| Joshua      | Patel       | 
| Trenna      | Rajs        | 
| Curtis      | Davies      | 
| Randall     | Matos       | 
| Peter       | Vargas      | 
| John        | Russell     | 
| Karen       | Partners    | 
| Alberto     | Errazuriz   | 
| Gerald      | Cambrault   | 
| Eleni       | Zlotkey     | 
| Peter       | Tucker      | 
| David       | Bernstein   | 
| Peter       | Hall        | 
| Christopher | Olsen       | 
| Nanette     | Cambrault   | 
| Oliver      | Tuvault     | 
| Janette     | King        | 
| Patrick     | Sully       | 
| Allan       | McEwen      | 
| Lindsey     | Smith       | 
| Louise      | Doran       | 
| Sarath      | Sewall      | 
| Clara       | Vishney     | 
| Danielle    | Greene      | 
| Mattea      | Marvins     | 
| David       | Lee         | 
| Sundar      | Ande        | 
| Amit        | Banda       | 
| Lisa        | Ozer        | 
| Harrison    | Bloom       | 
| Tayler      | Fox         | 
| William     | Smith       | 
| Elizabeth   | Bates       | 
| Sundita     | Kumar       | 
| Ellen       | Abel        | 
| Alyssa      | Hutton      | 
| Jonathon    | Taylor      | 
| Jack        | Livingston  | 
| Kimberely   | Grant       | 
| Charles     | Johnson     | 
| Winston     | Taylor      | 
| Jean        | Fleaur      | 
| Martha      | Sullivan    | 
| Girard      | Geoni       | 
| Nandita     | Sarchand    | 
| Alexis      | Bull        | 
| Julia       | Dellinger   | 
| Anthony     | Cabrio      | 
| Kelly       | Chung       | 
| Jennifer    | Dilly       | 
| Timothy     | Gates       | 
| Randall     | Perkins     | 
| Sarah       | Bell        | 
| Britney     | Everett     | 
| Samuel      | McCain      | 
| Vance       | Jones       | 
| Alana       | Walsh       | 
| Kevin       | Feeney      | 
| Donald      | OConnell    | 
| Douglas     | Grant       | 
| Jennifer    | Whalen      | 
| Michael     | Hartstein   | 
| Pat         | Fay         | 
| Susan       | Mavris      | 
| Hermann     | Baer        | 
| Shelley     | Higgins     | 
| William     | Gietz       | 
+-------------+-------------+
106 rows in set (0.00 sec)

mysql> select first_name,last_name from employees where manager_id in (select distinct(manager_id) from employees where manager_id!=0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Neena       | Kochhar     | 
| Lex         | De Haan     | 
| Alexander   | Hunold      | 
| Bruce       | Ernst       | 
| David       | Austin      | 
| Valli       | Pataballa   | 
| Diana       | Lorentz     | 
| Nancy       | Greenberg   | 
| Daniel      | Faviet      | 
| John        | Chen        | 
| Ismael      | Sciarra     | 
| Jose Manuel | Urman       | 
| Luis        | Popp        | 
| Den         | Raphaely    | 
| Alexander   | Khoo        | 
| Shelli      | Baida       | 
| Sigal       | Tobias      | 
| Guy         | Himuro      | 
| Karen       | Colmenares  | 
| Matthew     | Weiss       | 
| Adam        | Fripp       | 
| Payam       | Kaufling    | 
| Shanta      | Vollman     | 
| Kevin       | Mourgos     | 
| Julia       | Nayer       | 
| Irene       | Mikkilineni | 
| James       | Landry      | 
| Steven      | Markle      | 
| Laura       | Bissot      | 
| Mozhe       | Atkinson    | 
| James       | Marlow      | 
| TJ          | Olson       | 
| Jason       | Mallin      | 
| Michael     | Rogers      | 
| Ki          | Gee         | 
| Hazel       | Philtanker  | 
| Renske      | Ladwig      | 
| Stephen     | Stiles      | 
| John        | Seo         | 
| Joshua      | Patel       | 
| Trenna      | Rajs        | 
| Curtis      | Davies      | 
| Randall     | Matos       | 
| Peter       | Vargas      | 
| John        | Russell     | 
| Karen       | Partners    | 
| Alberto     | Errazuriz   | 
| Gerald      | Cambrault   | 
| Eleni       | Zlotkey     | 
| Peter       | Tucker      | 
| David       | Bernstein   | 
| Peter       | Hall        | 
| Christopher | Olsen       | 
| Nanette     | Cambrault   | 
| Oliver      | Tuvault     | 
| Janette     | King        | 
| Patrick     | Sully       | 
| Allan       | McEwen      | 
| Lindsey     | Smith       | 
| Louise      | Doran       | 
| Sarath      | Sewall      | 
| Clara       | Vishney     | 
| Danielle    | Greene      | 
| Mattea      | Marvins     | 
| David       | Lee         | 
| Sundar      | Ande        | 
| Amit        | Banda       | 
| Lisa        | Ozer        | 
| Harrison    | Bloom       | 
| Tayler      | Fox         | 
| William     | Smith       | 
| Elizabeth   | Bates       | 
| Sundita     | Kumar       | 
| Ellen       | Abel        | 
| Alyssa      | Hutton      | 
| Jonathon    | Taylor      | 
| Jack        | Livingston  | 
| Kimberely   | Grant       | 
| Charles     | Johnson     | 
| Winston     | Taylor      | 
| Jean        | Fleaur      | 
| Martha      | Sullivan    | 
| Girard      | Geoni       | 
| Nandita     | Sarchand    | 
| Alexis      | Bull        | 
| Julia       | Dellinger   | 
| Anthony     | Cabrio      | 
| Kelly       | Chung       | 
| Jennifer    | Dilly       | 
| Timothy     | Gates       | 
| Randall     | Perkins     | 
| Sarah       | Bell        | 
| Britney     | Everett     | 
| Samuel      | McCain      | 
| Vance       | Jones       | 
| Alana       | Walsh       | 
| Kevin       | Feeney      | 
| Donald      | OConnell    | 
| Douglas     | Grant       | 
| Jennifer    | Whalen      | 
| Michael     | Hartstein   | 
| Pat         | Fay         | 
| Susan       | Mavris      | 
| Hermann     | Baer        | 
| Shelley     | Higgins     | 
| William     | Gietz       | 
+-------------+-------------+
106 rows in set (0.00 sec)

mysql> select first_name,last_name from employees where employee_id in (select distinct(manager_id) from employees where manager_id!=0);
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Steven     | King      | 
| Neena      | Kochhar   | 
| Lex        | De Haan   | 
| Alexander  | Hunold    | 
| Nancy      | Greenberg | 
| Den        | Raphaely  | 
| Matthew    | Weiss     | 
| Adam       | Fripp     | 
| Payam      | Kaufling  | 
| Shanta     | Vollman   | 
| Kevin      | Mourgos   | 
| John       | Russell   | 
| Karen      | Partners  | 
| Alberto    | Errazuriz | 
| Gerald     | Cambrault | 
| Eleni      | Zlotkey   | 
| Michael    | Hartstein | 
| Shelley    | Higgins   | 
+------------+-----------+
18 rows in set (0.00 sec)

mysql> select avg(salary) from employee;
ERROR 1146 (42S02): Table 'day9.employee' doesn't exist
mysql> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
| 6461.682243 | 
+-------------+
1 row in set (0.00 sec)

mysql> select first_name, last_name, salary from employess where salary> (select avg(salary) from employees);
ERROR 1146 (42S02): Table 'day9.employess' doesn't exist
mysql> select first_name, last_name, salary from employees where salary> (select avg(salary) from employees);
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Steven      | King       | 24000.00 | 
| Neena       | Kochhar    | 17000.00 | 
| Lex         | De Haan    | 17000.00 | 
| Alexander   | Hunold     |  9000.00 | 
| Nancy       | Greenberg  | 12000.00 | 
| Daniel      | Faviet     |  9000.00 | 
| John        | Chen       |  8200.00 | 
| Ismael      | Sciarra    |  7700.00 | 
| Jose Manuel | Urman      |  7800.00 | 
| Luis        | Popp       |  6900.00 | 
| Den         | Raphaely   | 11000.00 | 
| Matthew     | Weiss      |  8000.00 | 
| Adam        | Fripp      |  8200.00 | 
| Payam       | Kaufling   |  7900.00 | 
| Shanta      | Vollman    |  6500.00 | 
| John        | Russell    | 14000.00 | 
| Karen       | Partners   | 13500.00 | 
| Alberto     | Errazuriz  | 12000.00 | 
| Gerald      | Cambrault  | 11000.00 | 
| Eleni       | Zlotkey    | 10500.00 | 
| Peter       | Tucker     | 10000.00 | 
| David       | Bernstein  |  9500.00 | 
| Peter       | Hall       |  9000.00 | 
| Christopher | Olsen      |  8000.00 | 
| Nanette     | Cambrault  |  7500.00 | 
| Oliver      | Tuvault    |  7000.00 | 
| Janette     | King       | 10000.00 | 
| Patrick     | Sully      |  9500.00 | 
| Allan       | McEwen     |  9000.00 | 
| Lindsey     | Smith      |  8000.00 | 
| Louise      | Doran      |  7500.00 | 
| Sarath      | Sewall     |  7000.00 | 
| Clara       | Vishney    | 10500.00 | 
| Danielle    | Greene     |  9500.00 | 
| Mattea      | Marvins    |  7200.00 | 
| David       | Lee        |  6800.00 | 
| Lisa        | Ozer       | 11500.00 | 
| Harrison    | Bloom      | 10000.00 | 
| Tayler      | Fox        |  9600.00 | 
| William     | Smith      |  7400.00 | 
| Elizabeth   | Bates      |  7300.00 | 
| Ellen       | Abel       | 11000.00 | 
| Alyssa      | Hutton     |  8800.00 | 
| Jonathon    | Taylor     |  8600.00 | 
| Jack        | Livingston |  8400.00 | 
| Kimberely   | Grant      |  7000.00 | 
| Michael     | Hartstein  | 13000.00 | 
| Susan       | Mavris     |  6500.00 | 
| Hermann     | Baer       | 10000.00 | 
| Shelley     | Higgins    | 12000.00 | 
| William     | Gietz      |  8300.00 | 
+-------------+------------+----------+
51 rows in set (0.00 sec)

mysql> select first_name, last_name, salary from employees where salary=(select min(salary) from employees);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| TJ         | Olson     | 2100.00 | 
+------------+-----------+---------+
1 row in set (0.00 sec)

mysql> select * from jobs;;
+------------+---------------------------------+------------+------------+
| JOB_ID     | JOB_TITLE                       | MIN_SALARY | MAX_SALARY |
+------------+---------------------------------+------------+------------+
| AD_PRES    | President                       |      20000 |      40000 | 
| AD_VP      | Administration Vice President   |      15000 |      30000 | 
| AD_ASST    | Administration Assistant        |       3000 |       6000 | 
| FI_MGR     | Finance Manager                 |       8200 |      16000 | 
| FI_ACCOUNT | Accountant                      |       4200 |       9000 | 
| AC_MGR     | Accounting Manager              |       8200 |      16000 | 
| AC_ACCOUNT | Public Accountant               |       4200 |       9000 | 
| SA_MAN     | Sales Manager                   |      10000 |      20000 | 
| SA_REP     | Sales Representative            |       6000 |      12000 | 
| PU_MAN     | Purchasing Manager              |       8000 |      15000 | 
| PU_CLERK   | Purchasing Clerk                |       2500 |       5500 | 
| ST_MAN     | Stock Manager                   |       5500 |       8500 | 
| ST_CLERK   | Stock Clerk                     |       2000 |       5000 | 
| SH_CLERK   | Shipping Clerk                  |       2500 |       5500 | 
| IT_PROG    | Programmer                      |       4000 |      10000 | 
| MK_MAN     | Marketing Manager               |       9000 |      15000 | 
| MK_REP     | Marketing Representative        |       4000 |       9000 | 
| HR_REP     | Human Resources Representative  |       4000 |       9000 | 
| PR_REP     | Public Relations Representative |       4500 |      10500 | 
+------------+---------------------------------+------------+------------+
19 rows in set (0.00 sec)

ERROR: 
No query specified

mysql> select first_name, last_name, salary from employees where salary=(select min(Min_salary) from jobs);
Empty set (0.00 sec)

mysql> select first_name, last_name, salary from employees where salary=(select min(Min_salary) from jobs where job_id in(select job_id from jobs));
Empty set (0.00 sec)

mysql> select first_name, last_name, salary from employees where salary in(select min(Min_salary) from jobs where job_id in(select job_id from jobs));
Empty set (0.01 sec)

mysql> select first_name, last_name, salary from employees where salary =(select min(Min_salary) from jobs where job_id =(select job_id from jobs));
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> select first_name, last_name, salary from employees where salary =(select min(Min_salary) from jobs where job_id in(select job_id from jobs));
Empty set (0.00 sec)

mysql> select first_name, last_name, salary from employees where job_id(select min(Min_salary) from jobs where job_id in(select job_id from jobs));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select min(Min_salary) from jobs where job_id in(select job_id from jobs))' at line 1
mysql> select first_name, last_name, salary from employees where job_id in(select Min_salary from jobs where job_id in(select job_id from jobs));
Empty set (0.01 sec)

mysql> select first_name, last_name, salary from employees where job_id =(select Min_salary from jobs where job_id in(select job_id from jobs));
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> select first_name, last_name, salary from employees where job_id in(select Min_salary from jobs where job_id in(select job_id from jobs));
Empty set (0.01 sec)

mysql> select first_name, last_name, salary from employees where job_id in(select Min_salary from jobs where job_id in(select job_id from emplyoees));
ERROR 1146 (42S02): Table 'day9.emplyoees' doesn't exist
mysql> select first_name, last_name, salary from employees where job_id in(select Min_salary from jobs where job_id in(select job_id from employees));
Empty set (0.01 sec)

mysql> select first_name, last_name, salary from employees where salary< in(select Min_salary from jobs where job_id in(select job_id from employees));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'in(select Min_salary from jobs where job_id in(select job_id from employees))' at line 1
mysql> select Min_salary from jobs where job_id in(select job_id from employees);
+------------+
| Min_salary |
+------------+
|      20000 | 
|      15000 | 
|       3000 | 
|       8200 | 
|       4200 | 
|       8200 | 
|       4200 | 
|      10000 | 
|       6000 | 
|       8000 | 
|       2500 | 
|       5500 | 
|       2000 | 
|       2500 | 
|       4000 | 
|       9000 | 
|       4000 | 
|       4000 | 
|       4500 | 
+------------+
19 rows in set (0.00 sec)

mysql> select first_name, last_name, salary from employees where salary in(select Min_salary from jobs where job_id in(select job_id from employees));
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Alexander   | Hunold     |  9000.00 | 
| Bruce       | Ernst      |  6000.00 | 
| Diana       | Lorentz    |  4200.00 | 
| Daniel      | Faviet     |  9000.00 | 
| John        | Chen       |  8200.00 | 
| Karen       | Colmenares |  2500.00 | 
| Matthew     | Weiss      |  8000.00 | 
| Adam        | Fripp      |  8200.00 | 
| James       | Marlow     |  2500.00 | 
| Joshua      | Patel      |  2500.00 | 
| Peter       | Vargas     |  2500.00 | 
| Peter       | Tucker     | 10000.00 | 
| Peter       | Hall       |  9000.00 | 
| Christopher | Olsen      |  8000.00 | 
| Janette     | King       | 10000.00 | 
| Allan       | McEwen     |  9000.00 | 
| Lindsey     | Smith      |  8000.00 | 
| Harrison    | Bloom      | 10000.00 | 
| Martha      | Sullivan   |  2500.00 | 
| Nandita     | Sarchand   |  4200.00 | 
| Anthony     | Cabrio     |  3000.00 | 
| Randall     | Perkins    |  2500.00 | 
| Sarah       | Bell       |  4000.00 | 
| Kevin       | Feeney     |  3000.00 | 
| Pat         | Fay        |  6000.00 | 
| Hermann     | Baer       | 10000.00 | 
+-------------+------------+----------+
26 rows in set (0.01 sec)

mysql> select first_name, last_name, salary,job_id from employees where salary in(select Min_salary from jobs where job_id in(select job_id from employees));
+-------------+------------+----------+------------+
| first_name  | last_name  | salary   | job_id     |
+-------------+------------+----------+------------+
| Alexander   | Hunold     |  9000.00 | IT_PROG    | 
| Bruce       | Ernst      |  6000.00 | IT_PROG    | 
| Diana       | Lorentz    |  4200.00 | IT_PROG    | 
| Daniel      | Faviet     |  9000.00 | FI_ACCOUNT | 
| John        | Chen       |  8200.00 | FI_ACCOUNT | 
| Karen       | Colmenares |  2500.00 | PU_CLERK   | 
| Matthew     | Weiss      |  8000.00 | ST_MAN     | 
| Adam        | Fripp      |  8200.00 | ST_MAN     | 
| James       | Marlow     |  2500.00 | ST_CLERK   | 
| Joshua      | Patel      |  2500.00 | ST_CLERK   | 
| Peter       | Vargas     |  2500.00 | ST_CLERK   | 
| Peter       | Tucker     | 10000.00 | SA_REP     | 
| Peter       | Hall       |  9000.00 | SA_REP     | 
| Christopher | Olsen      |  8000.00 | SA_REP     | 
| Janette     | King       | 10000.00 | SA_REP     | 
| Allan       | McEwen     |  9000.00 | SA_REP     | 
| Lindsey     | Smith      |  8000.00 | SA_REP     | 
| Harrison    | Bloom      | 10000.00 | SA_REP     | 
| Martha      | Sullivan   |  2500.00 | SH_CLERK   | 
| Nandita     | Sarchand   |  4200.00 | SH_CLERK   | 
| Anthony     | Cabrio     |  3000.00 | SH_CLERK   | 
| Randall     | Perkins    |  2500.00 | SH_CLERK   | 
| Sarah       | Bell       |  4000.00 | SH_CLERK   | 
| Kevin       | Feeney     |  3000.00 | SH_CLERK   | 
| Pat         | Fay        |  6000.00 | MK_REP     | 
| Hermann     | Baer       | 10000.00 | PR_REP     | 
+-------------+------------+----------+------------+
26 rows in set (0.01 sec)

mysql> select first_name, last_name, salary,job_id from employees where salary =(select Min_salary from jobs where job_id in(select job_id from employees));
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> select first_name, last_name, salary,job_id from employees where salary in(select Min_salary from jobs where job_id in(select job_id from employees));
+-------------+------------+----------+------------+
| first_name  | last_name  | salary   | job_id     |
+-------------+------------+----------+------------+
| Alexander   | Hunold     |  9000.00 | IT_PROG    | 
| Bruce       | Ernst      |  6000.00 | IT_PROG    | 
| Diana       | Lorentz    |  4200.00 | IT_PROG    | 
| Daniel      | Faviet     |  9000.00 | FI_ACCOUNT | 
| John        | Chen       |  8200.00 | FI_ACCOUNT | 
| Karen       | Colmenares |  2500.00 | PU_CLERK   | 
| Matthew     | Weiss      |  8000.00 | ST_MAN     | 
| Adam        | Fripp      |  8200.00 | ST_MAN     | 
| James       | Marlow     |  2500.00 | ST_CLERK   | 
| Joshua      | Patel      |  2500.00 | ST_CLERK   | 
| Peter       | Vargas     |  2500.00 | ST_CLERK   | 
| Peter       | Tucker     | 10000.00 | SA_REP     | 
| Peter       | Hall       |  9000.00 | SA_REP     | 
| Christopher | Olsen      |  8000.00 | SA_REP     | 
| Janette     | King       | 10000.00 | SA_REP     | 
| Allan       | McEwen     |  9000.00 | SA_REP     | 
| Lindsey     | Smith      |  8000.00 | SA_REP     | 
| Harrison    | Bloom      | 10000.00 | SA_REP     | 
| Martha      | Sullivan   |  2500.00 | SH_CLERK   | 
| Nandita     | Sarchand   |  4200.00 | SH_CLERK   | 
| Anthony     | Cabrio     |  3000.00 | SH_CLERK   | 
| Randall     | Perkins    |  2500.00 | SH_CLERK   | 
| Sarah       | Bell       |  4000.00 | SH_CLERK   | 
| Kevin       | Feeney     |  3000.00 | SH_CLERK   | 
| Pat         | Fay        |  6000.00 | MK_REP     | 
| Hermann     | Baer       | 10000.00 | PR_REP     | 
+-------------+------------+----------+------------+
26 rows in set (0.01 sec)

mysql> select first_name, last_name, salary,job_id from employees where salary in(select Min_salary from jobs where jobs.job_id=employees.job_id);
+------------+------------+---------+----------+
| first_name | last_name  | salary  | job_id   |
+------------+------------+---------+----------+
| Karen      | Colmenares | 2500.00 | PU_CLERK | 
| Martha     | Sullivan   | 2500.00 | SH_CLERK | 
| Randall    | Perkins    | 2500.00 | SH_CLERK | 
+------------+------------+---------+----------+
3 rows in set (0.00 sec)

mysql> select avg(salary) from employees;
+-------------+
| avg(salary) |
+-------------+
| 6461.682243 | 
+-------------+
1 row in set (0.00 sec)

mysql> select department_id from departments where department_name like 'it%';
+---------------+
| department_id |
+---------------+
|            60 | 
|           210 | 
|           230 | 
+---------------+
3 rows in set (0.00 sec)

mysql> select First_name,last_name,salary from employees where salary>(select avg(salary) from employees) and department_id in(select department_id from departments where department_name like 'it%'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> select First_name,last_name,salary from employees where salary>(select avg(salary) from employees) and department_id in(select department_id from departments where department_name like 'it%');
+------------+-----------+---------+
| First_name | last_name | salary  |
+------------+-----------+---------+
| Alexander  | Hunold    | 9000.00 | 
+------------+-----------+---------+
1 row in set (0.00 sec)

mysql> select First_name,last_name,salary, department_id from employees where salary>(select avg(salary) from employees) and department_id in(select department_id from departments where department_name like 'it%');
+------------+-----------+---------+---------------+
| First_name | last_name | salary  | department_id |
+------------+-----------+---------+---------------+
| Alexander  | Hunold    | 9000.00 |            60 | 
+------------+-----------+---------+---------------+
1 row in set (0.00 sec)

