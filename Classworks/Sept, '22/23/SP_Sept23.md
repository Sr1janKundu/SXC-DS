# Sept 23, 2022 - SP (SQL)

#### _(Continuation of Sept 16, '22 class)_

Check for presence of the `dept` and the `emp` tables:
```{SQL}
desc dept;
desc emp;
```

### Q. List the total number of employees and the average salaries of the different departments
```{sql}
SELECT deptno, COUNT(ename) "NO OF EMPLOYEES", AVG(sal) "AVERAGE SALARY" FROM emp GROUP BY deptno;
```
![[Pasted image 20220923133428.png]]

_If there are phrases like `FOR EACH` / `FOR ALL` / `IN EACH`, apply the `GROUP BY` operation._

### Q. Calculate the total number of managers
```{sql}
SELECT COUNT(ename) "TOTAL NO OF MANAGERS" FROM emp WHERE job='MANAGER';
```
![[Pasted image 20220923134334.png]]

### Q. List details of all managers in ascending order of joining dates
```{sql}
SELECT * FROM emp WHERE job='MANAGER' ORDER BY hiredate;
```
![[Pasted image 20220923134752.png]]

### List average salaries for each different job
_If both `WHERE` and `GROUP BY` are present, `GROUP BY` should come at second._
```{sql}
SELECT job, AVG(sal) "AVERAGE SALARY" FROM emp GROUP BY job;
```
![[Pasted image 20220923135338.png]]

## Queries on multiple tables
### Q. Find all departments which have less than 3 employees

_Here, `join` operations are performed. Whenever information is present across multiple tables, this is importent. A temporary large table is created by the `join` operation to extract informations. A `join` operation is a certesian product followed by a `WHERE` caluse.<br>Columns with different names from different tables will result in showing up all entries. Here, the column names are same in both tables.<br>Here the `join` operation is `INNER JOIN`, being the default `join` operation, we  do not need to specify._
```{sql}
SELECT dname, COUNT(ename) FROM emp, dept WHERE emp.deptno=dept.deptno GROUP BY dname HAVING COUNT(ename) < 3;
```
![[Pasted image 20220923140759.png]]

### Q. List the details of the employees in ascending order of department number and within each department in descending order of salary.
```{sql}
SELECT * FROM emp ORDER BY deptno ASC, sal DESC;
```
Output: 

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


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7788 SCOTT      ANALYST         7566 13-JUL-87       3000
        20

      7902 FORD       ANALYST         7566 03-DEC-81       3000
        20

      7566 JONES      MANAGER         7839 02-APR-81       2975
        20


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7876 ADAMS      CLERK           7788 13-JUL-87       1100
        20

      7369 SMITH      CLERK           7902 17-DEC-80        800
        20

      7698 BLAKE      MANAGER         7839 01-MAY-81       2850
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300
        30

      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0
        30

      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500
        30


     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM
---------- ---------- --------- ---------- --------- ---------- ----------
    DEPTNO
----------
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400
        30

      7900 JAMES      CLERK           7698 03-DEC-81        950
        30


14 rows selected.

## Q. Display the name of employee who earns maximum salary.

_This is a nested query, here one sql statement is inside of another. Nested queries will always be associated with `WHERE` clause. The inner query gets executed first in general; but there can be exceptions._ 
```{sql}
SELECT ename, sal FROM emp WHERE sal=(SELECT MAX(sal) FROM emp);
```
![[Pasted image 20220923143846.png]]
