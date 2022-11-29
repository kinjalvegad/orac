     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30

      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7900 JAMES      CLERK           7698 03-DEC-81        950
        30

      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


14 rows selected.

SQL> describe sql; 
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPNO                                     NOT NULL NUMBER(4)
 ENAME                                              VARCHAR2(10)
 JOB                                                VARCHAR2(9)
 MGR                                                NUMBER(4)
 HIREDATE                                           DATE
 SAL                                                NUMBER(7,2)
 COMM                                               NUMBER(7,2)
 DEPTNO                                             NUMBER(2)

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
DEPT                           TABLE
EMP                            TABLE
BONUS                          TABLE
SALGRADE                       TABLE
EMPLOYEES_22                   TABLE
EMPLOYEES_11                   TABLE
EMPLOYEES                      TABLE
EMPLOYEESS                     TABLE
EMPLOYEESSS                    TABLE
EMPLOYEEESSSS                  TABLE
EMPLOYEES_1                    TABLE

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
CUSTOMERS                      TABLE
EMPLOYEE_DETAILS               TABLE
SQL                            TABLE

14 rows selected.

SQL> select empno from sql;

     EMPNO
----------
      7369
      7499
      7521
      7566
      7654
      7698
      7782
      7788
      7839
      7844
      7876

     EMPNO
----------
      7900
      7902
      7934

14 rows selected.

SQL> select ename,job from sql;

ENAME      JOB
---------- ---------
KING       PRESIDENT
BLAKE      MANAGER
CLARK      MANAGER
JONES      MANAGER
SCOTT      ANALYST
FORD       ANALYST
SMITH      CLERK
ALLEN      SALESMAN
WARD       SALESMAN
MARTIN     SALESMAN
TURNER     SALESMAN

ENAME      JOB
---------- ---------
ADAMS      CLERK
JAMES      CLERK
MILLER     CLERK

14 rows selected.

SQL> select empno,comm from sql;

     EMPNO       COMM
---------- ----------
      7839
      7698
      7782
      7566
      7788
      7902
      7369
      7499        300
      7521        500
      7654       1400
      7844          0

     EMPNO       COMM
---------- ----------
      7876
      7900
      7934

14 rows selected.

SQL> select empno,mgr from sql;

     EMPNO        MGR
---------- ----------
      7839
      7698       7839
      7782       7839
      7566       7839
      7788       7566
      7902       7566
      7369       7902
      7499       7698
      7521       7698
      7654       7698
      7844       7698

     EMPNO        MGR
---------- ----------
      7876       7788
      7900       7698
      7934       7782

14 rows selected.

SQL> select deptno from sql;

    DEPTNO
----------
        10
        30
        10
        20
        20
        20
        20
        30
        30
        30
        30

    DEPTNO
----------
        20
        30
        10

14 rows selected.

SQL> select deptno from dept;

    DEPTNO
----------
        10
        20
        30
        40

SQL> select empno,ename,job,mgr from sql;

     EMPNO ENAME      JOB              MGR
---------- ---------- --------- ----------
      7839 KING       PRESIDENT
      7698 BLAKE      MANAGER         7839
      7782 CLARK      MANAGER         7839
      7566 JONES      MANAGER         7839
      7788 SCOTT      ANALYST         7566
      7902 FORD       ANALYST         7566
      7369 SMITH      CLERK           7902
      7499 ALLEN      SALESMAN        7698
      7521 WARD       SALESMAN        7698
      7654 MARTIN     SALESMAN        7698
      7844 TURNER     SALESMAN        7698

     EMPNO ENAME      JOB              MGR
---------- ---------- --------- ----------
      7876 ADAMS      CLERK           7788
      7900 JAMES      CLERK           7698
      7934 MILLER     CLERK           7782

14 rows selected.

SQL> select ename,mgr from sql;

ENAME             MGR
---------- ----------
KING
BLAKE            7839
CLARK            7839
JONES            7839
SCOTT            7566
FORD             7566
SMITH            7902
ALLEN            7698
WARD             7698
MARTIN           7698
TURNER           7698

ENAME             MGR
---------- ----------
ADAMS            7788
JAMES            7698
MILLER           7782

14 rows selected.

SQL> select job,comm from sql;

JOB             COMM
--------- ----------
PRESIDENT
MANAGER
MANAGER
MANAGER
ANALYST
ANALYST
CLERK
SALESMAN         300
SALESMAN         500
SALESMAN        1400
SALESMAN           0

JOB             COMM
--------- ----------
CLERK
CLERK
CLERK

14 rows selected.

SQL> select ename,deptno from sql;

ENAME          DEPTNO
---------- ----------
KING               10
BLAKE              30
CLARK              10
JONES              20
SCOTT              20
FORD               20
SMITH              20
ALLEN              30
WARD               30
MARTIN             30
TURNER             30

ENAME          DEPTNO
---------- ----------
ADAMS              20
JAMES              30
MILLER             10

14 rows selected.

SQL> select deptno,ename,sal,job from sql;

    DEPTNO ENAME             SAL JOB
---------- ---------- ---------- ---------
        10 KING             5000 PRESIDENT
        30 BLAKE            2850 MANAGER
        10 CLARK            2450 MANAGER
        20 JONES            2975 MANAGER
        20 SCOTT            3000 ANALYST
        20 FORD             3000 ANALYST
        20 SMITH             800 CLERK
        30 ALLEN            1600 SALESMAN
        30 WARD             1250 SALESMAN
        30 MARTIN           1250 SALESMAN
        30 TURNER           1500 SALESMAN

    DEPTNO ENAME             SAL JOB
---------- ---------- ---------- ---------
        20 ADAMS            1100 CLERK
        30 JAMES             950 CLERK
        10 MILLER           1300 CLERK

14 rows selected.

SQL> select deptno,dname from sql;
select deptno,dname from sql
              *
ERROR at line 1:
ORA-00904: "DNAME": invalid identifier


SQL> select deptno,dname from sql;
select deptno,dname from sql
              *
ERROR at line 1:
ORA-00904: "DNAME": invalid identifier


SQL> select deptno,ename from sql;

    DEPTNO ENAME
---------- ----------
        10 KING
        30 BLAKE
        10 CLARK
        20 JONES
        20 SCOTT
        20 FORD
        20 SMITH
        30 ALLEN
        30 WARD
        30 MARTIN
        30 TURNER

    DEPTNO ENAME
---------- ----------
        20 ADAMS
        30 JAMES
        10 MILLER

14 rows selected.

SQL> select loc from dept;

LOC
-------------
NEW YORK
DALLAS
CHICAGO
BOSTON

SQL> select ename,loc from dept;
select ename,loc from dept
       *
ERROR at line 1:
ORA-00904: "ENAME": invalid identifier


SQL> select dname,loc from dept;

DNAME          LOC
-------------- -------------
ACCOUNTING     NEW YORK
RESEARCH       DALLAS
SALES          CHICAGO
OPERATIONS     BOSTON

SQL> select * from sql where job='manager';

no rows selected

SQL> select * from sql WHERE job ='MANAGER';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30

      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20


SQL> select * from sql   WHERE job='PRESIDENT';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7839 KING       PRESIDENT            17-NOV-81       5000
        10


SQL> SELECT * FROM SQL WHERE JOB='MANAGER' OR JOB='CLERK';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30

      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


7 rows selected.

SQL> SELECT * FROM SQL WHERE JOB ='MANAGER' AND DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10


SQL> SELECT * FROM SQL WHERE DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7839 KING       PRESIDENT            17-NOV-81       5000
        10

      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


SQL> SELECT * FROM SQL WHERE DEPTNO IN (20,30,40) AND JOB NOT IN ('MANAGER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000
        20

      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20

      7369 SMITH      CLERK           7902 17-DEC-80        800
        20


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30

      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30


9 rows selected.

SQL> SELECT * FROM SQL WHERE (JOB='MANAGER'AND DEPTNO=10) OR JOB='ANALYST';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7788 SCOTT      ANALYST         7566 19-APR-87       3000
        20

      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20


SQL> SELECT * FROM SQL WHERE JOB NOT IN ('PRESIDENT','ANALYST','SALESMAN');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30

      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7876 ADAMS      CLERK           7788 23-MAY-87       1100
        20

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


7 rows selected.

SQL> SELECT * FROM SQL WHERE JOB='CLERK' AND DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7934 MILLER     CLERK           7782 23-JAN-82       1300
        10


SQL> SELECT ENAME "MALAY" FROM SQL;

MALAY
----------
KING
BLAKE
CLARK
JONES
SCOTT
FORD
SMITH
ALLEN
WARD
MARTIN
TURNER

MALAY
----------
ADAMS
JAMES
MILLER

14 rows selected.

SQL> SELECT SAL "SALARIES"FROM SQL;

  SALARIES
----------
      5000
      2850
      2450
      2975
      3000
      3000
       800
      1600
      1250
      1250
      1500

  SALARIES
----------
      1100
       950
      1300

14 rows selected.

SQL> SELECT SQL "EMPLOYEE NAME",JOB "DESIGNATION" FROM SQL;
SELECT SQL "EMPLOYEE NAME",JOB "DESIGNATION" FROM SQL
       *
ERROR at line 1:
ORA-00904: "SQL": invalid identifier


SQL> SELECT SQL "EMPLOYEE NAME",JOB "DESIGNATION" FROM SQL;
SELECT SQL "EMPLOYEE NAME",JOB "DESIGNATION" FROM SQL
       *
ERROR at line 1:
ORA-00904: "SQL": invalid identifier


SQL> SELECT SQL "EMPLOYEE NAME",JOB"DESIGNATION" FROM EMP;
SELECT SQL "EMPLOYEE NAME",JOB"DESIGNATION" FROM EMP
       *
ERROR at line 1:
ORA-00904: "SQL": invalid identifier


SQL> SELECT ENAME "EMPLOYEE NAME",JOB"DESIGNAMTION" FROM SQL;

EMPLOYEE N DESIGNAMT
---------- ---------
KING       PRESIDENT
BLAKE      MANAGER
CLARK      MANAGER
JONES      MANAGER
SCOTT      ANALYST
FORD       ANALYST
SMITH      CLERK
ALLEN      SALESMAN
WARD       SALESMAN
MARTIN     SALESMAN
TURNER     SALESMAN

EMPLOYEE N DESIGNAMT
---------- ---------
ADAMS      CLERK
JAMES      CLERK
MILLER     CLERK

14 rows selected.

SQL> SELECT EMPNO,ENAME,JOB,SAL,SAL+100 FROM SQL WHERE JOB='MANAGER';

     EMPNO ENAME      JOB              SAL    SAL+100
---------- ---------- --------- ---------- ----------
      7698 BLAKE      MANAGER         2850       2950
      7782 CLARK      MANAGER         2450       2550
      7566 JONES      MANAGER         2975       3075

SQL> SELECT EMPNO,ENAME,JOB,SAL,(SAL+1000)-4500 FROM SQL;

     EMPNO ENAME      JOB              SAL (SAL+1000)-4500
---------- ---------- --------- ---------- ---------------
      7839 KING       PRESIDENT       5000            1500
      7698 BLAKE      MANAGER         2850            -650
      7782 CLARK      MANAGER         2450           -1050
      7566 JONES      MANAGER         2975            -525
      7788 SCOTT      ANALYST         3000            -500
      7902 FORD       ANALYST         3000            -500
      7369 SMITH      CLERK            800           -2700
      7499 ALLEN      SALESMAN        1600           -1900
      7521 WARD       SALESMAN        1250           -2250
      7654 MARTIN     SALESMAN        1250           -2250
      7844 TURNER     SALESMAN        1500           -2000

     EMPNO ENAME      JOB              SAL (SAL+1000)-4500
---------- ---------- --------- ---------- ---------------
      7876 ADAMS      CLERK           1100           -2400
      7900 JAMES      CLERK            950           -2550
      7934 MILLER     CLERK           1300           -2200

14 rows selected.

SQL> SELECT EMPNO,ENAME,SAL,(SAL+100) FROM SQL WHERE ENAME='SCOTT';

     EMPNO ENAME             SAL  (SAL+100)
---------- ---------- ---------- ----------
      7788 SCOTT            3000       3100

SQL> SELECT EMPNO,ENAME,SAL,(SAL+500)-300/100 FROM SQL;

     EMPNO ENAME             SAL (SAL+500)-300/100
---------- ---------- ---------- -----------------
      7839 KING             5000              5497
      7698 BLAKE            2850              3347
      7782 CLARK            2450              2947
      7566 JONES            2975              3472
      7788 SCOTT            3000              3497
      7902 FORD             3000              3497
      7369 SMITH             800              1297
      7499 ALLEN            1600              2097
      7521 WARD             1250              1747
      7654 MARTIN           1250              1747
      7844 TURNER           1500              1997

     EMPNO ENAME             SAL (SAL+500)-300/100
---------- ---------- ---------- -----------------
      7876 ADAMS            1100              1597
      7900 JAMES             950              1447
      7934 MILLER           1300              1797

14 rows selected.

SQL> SELECT EMPNO,SAL,(SAL*8)/100 FROM SQL WHERE JOB='SALESMAN';

     EMPNO        SAL (SAL*8)/100
---------- ---------- -----------
      7499       1600         128
      7521       1250         100
      7654       1250         100
      7844       1500         120

SQL> SELECT EMPNO,ENAME,SAL,(SAL*2)FROM SQL;

     EMPNO ENAME             SAL    (SAL*2)
---------- ---------- ---------- ----------
      7839 KING             5000      10000
      7698 BLAKE            2850       5700
      7782 CLARK            2450       4900
      7566 JONES            2975       5950
      7788 SCOTT            3000       6000
      7902 FORD             3000       6000
      7369 SMITH             800       1600
      7499 ALLEN            1600       3200
      7521 WARD             1250       2500
      7654 MARTIN           1250       2500
      7844 TURNER           1500       3000

     EMPNO ENAME             SAL    (SAL*2)
---------- ---------- ---------- ----------
      7876 ADAMS            1100       2200
      7900 JAMES             950       1900
      7934 MILLER           1300       2600

14 rows selected.

SQL> SELECT EMPNO,ENAME,SAL,(SAL*12)"ANNSAL"FROM SQL;

     EMPNO ENAME             SAL     ANNSAL
---------- ---------- ---------- ----------
      7839 KING             5000      60000
      7698 BLAKE            2850      34200
      7782 CLARK            2450      29400
      7566 JONES            2975      35700
      7788 SCOTT            3000      36000
      7902 FORD             3000      36000
      7369 SMITH             800       9600
      7499 ALLEN            1600      19200
      7521 WARD             1250      15000
      7654 MARTIN           1250      15000
      7844 TURNER           1500      18000

     EMPNO ENAME             SAL     ANNSAL
---------- ---------- ---------- ----------
      7876 ADAMS            1100      13200
      7900 JAMES             950      11400
      7934 MILLER           1300      15600

14 rows selected.

SQL> SELECT EMPNO||' '||ENAME"EMPLOYEE"FROM SQL;

EMPLOYEE
---------------------------------------------------
7839 KING
7698 BLAKE
7782 CLARK
7566 JONES
7788 SCOTT
7902 FORD
7369 SMITH
7499 ALLEN
7521 WARD
7654 MARTIN
7844 TURNER

EMPLOYEE
---------------------------------------------------
7876 ADAMS
7900 JAMES
7934 MILLER

14 rows selected.

SQL> SELECT ENAME||' "||JOB"COMP_NAME"FROM SQL;
ERROR:
ORA-01756: quoted string not properly terminated


SQL> SELECT ENAME||' '|| JOB "COMP_NAME" FROM SQL;

COMP_NAME
--------------------
KING PRESIDENT
BLAKE MANAGER
CLARK MANAGER
JONES MANAGER
SCOTT ANALYST
FORD ANALYST
SMITH CLERK
ALLEN SALESMAN
WARD SALESMAN
MARTIN SALESMAN
TURNER SALESMAN

COMP_NAME
--------------------
ADAMS CLERK
JAMES CLERK
MILLER CLERK

14 rows selected.

SQL> SELECT ENAME||' IS '||JOB||'AND HE IS WORKING IN DEPT NO '||'SINCE'||HIREDATE FROM SQL;

ENAME||'IS'||JOB||'ANDHEISWORKINGINDEPTNO'||'SINCE'||HIREDATE
------------------------------------------------------------------
KING IS PRESIDENTAND HE IS WORKING IN DEPT NO SINCE17-NOV-81
BLAKE IS MANAGERAND HE IS WORKING IN DEPT NO SINCE01-MAY-81
CLARK IS MANAGERAND HE IS WORKING IN DEPT NO SINCE09-JUN-81
JONES IS MANAGERAND HE IS WORKING IN DEPT NO SINCE02-APR-81
SCOTT IS ANALYSTAND HE IS WORKING IN DEPT NO SINCE19-APR-87
FORD IS ANALYSTAND HE IS WORKING IN DEPT NO SINCE03-DEC-81
SMITH IS CLERKAND HE IS WORKING IN DEPT NO SINCE17-DEC-80
ALLEN IS SALESMANAND HE IS WORKING IN DEPT NO SINCE20-FEB-81
WARD IS SALESMANAND HE IS WORKING IN DEPT NO SINCE22-FEB-81
MARTIN IS SALESMANAND HE IS WORKING IN DEPT NO SINCE28-SEP-81
TURNER IS SALESMANAND HE IS WORKING IN DEPT NO SINCE08-SEP-81

ENAME||'IS'||JOB||'ANDHEISWORKINGINDEPTNO'||'SINCE'||HIREDATE
------------------------------------------------------------------
ADAMS IS CLERKAND HE IS WORKING IN DEPT NO SINCE23-MAY-87
JAMES IS CLERKAND HE IS WORKING IN DEPT NO SINCE03-DEC-81
MILLER IS CLERKAND HE IS WORKING IN DEPT NO SINCE23-JAN-82

14 rows selected.

SQL> SELECT ENAME,SAL,(SAL*10)+NVL(COMM,0)FROM SQL;

ENAME             SAL (SAL*10)+NVL(COMM,0)
---------- ---------- --------------------
KING             5000                50000
BLAKE            2850                28500
CLARK            2450                24500
JONES            2975                29750
SCOTT            3000                30000
FORD             3000                30000
SMITH             800                 8000
ALLEN            1600                16300
WARD             1250                13000
MARTIN           1250                13900
TURNER           1500                15000

ENAME             SAL (SAL*10)+NVL(COMM,0)
---------- ---------- --------------------
ADAMS            1100                11000
JAMES             950                 9500
MILLER           1300                13000

14 rows selected.

SQL> SELECT DISTINCT DEPTNO FROM SQL;

    DEPTNO
----------
        30
        20
        10

SQL> SELECT DISTINCT DEPTNO,JOB FROM SQL;

    DEPTNO JOB
---------- ---------
        20 MANAGER
        20 CLERK
        30 SALESMAN
        30 CLERK
        10 PRESIDENT
        30 MANAGER
        10 CLERK
        10 MANAGER
        20 ANALYST

9 rows selected.

SQL> SELECT * FROM SQL WHERE COMM IS NULL AND JOB='MANAGER';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30

      7782 CLARK      MANAGER         7839 09-JUN-81       2450
        10

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20


SQL> SEKECT * FROM SQL WHERE COMM IS NOT NULL;
SP2-0734: unknown command beginning "SEKECT * F..." - rest of line ignored.
SQL> SELECT * FROM SQL WHERE COMM IS N0T NULL;
SELECT * FROM SQL WHERE COMM IS N0T NULL
                                *
ERROR at line 1:
ORA-00908: missing NULL keyword


SQL> SELECT * FROM SQL WHERE COMM IS NOT NULL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30

      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30


SQL> SELECT DISTINCT JOB FROM SQL;

JOB
---------
CLERK
SALESMAN
PRESIDENT
MANAGER
ANALYST

SQL> SELECT COUNT (DISTINCT JOB )FROM SQL;

COUNT(DISTINCTJOB)
------------------
                 5

SQL> 
