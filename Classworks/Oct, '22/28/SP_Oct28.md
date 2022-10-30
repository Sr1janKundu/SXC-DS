## **FYI (Example 4, for today)**  

```sql
create table dept(deptno number(2,0), dname varchar2(14), loc varchar2(13), constraint pk_dept primary key (deptno));  
  

create table emp(empno number(4,0), ename varchar2(10), job varchar2(9), mgr number(4,0), hiredate date, sal number(7,2), comm number(7,2), deptno number(2,0), constraint pk_emp primary key (empno), constraint fk_deptno foreign key (deptno) references dept (deptno));  
insert into DEPT (DEPTNO, DNAME, LOC) values(10, 'ACCOUNTING', 'NEW YORK');  
insert into dept values(20, 'RESEARCH', 'DALLAS');  
insert into dept values(30, 'SALES', 'CHICAGO');  
insert into dept values(40, 'OPERATIONS', 'BOSTON');  
  
insert into emp values(7839, 'KING', 'PRESIDENT', null, '17-NOV-1981', 5000, null, 10);  
insert into emp values(7698, 'BLAKE', 'MANAGER', 7839, '1-MAY-1981', 2850, null, 30);  
insert into emp values(7782, 'CLARK', 'MANAGER', 7839, '09-JUN-1981', 2450, null, 10);  
insert into emp values(7566, 'JONES', 'MANAGER', 7839, '2-APR-1981', 2975, null, 20);  
insert into emp values(7788, 'SCOTT', 'ANALYST', 7566, '13-JUL-1987', 3000, null, 20);  
insert into emp values(7902, 'FORD', 'ANALYST', 7566, '3-DEC-1981', 3000, null, 20);  
insert into emp values(7369, 'SMITH', 'CLERK', 7902, '17-DEC-1980', 800, null, 20);  
insert into emp values(7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-1981', 1600, 300, 30);  
insert into emp values(7521, 'WARD', 'SALESMAN', 7698, '22-FEB-1981', 1250, 500, 30);  
insert into emp values(7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-1981', 1250, 1400, 30);  
insert into emp values(7844, 'TURNER', 'SALESMAN', 7698, '8-SEP-1981', 1500, 0, 30);  
insert into emp values(7876, 'ADAMS', 'CLERK', 7788, '13-JUL-1987', 1100, null, 20);  
insert into emp values(7900, 'JAMES', 'CLERK', 7698, '3-DEC-1981', 950, null, 30);  
insert into emp values(7934, 'MILLER', 'CLERK', 7782, '23-JAN-1982', 1300, null, 10);
```

- The  expression `NUMBER(n, m)` specifies decimal formatting.
- Notice the _table-level-constrain_. 
---
### Question 1: List tname of the employee who earns the minimum salary.

```sql
SELECT ename FROM emp WHERE sal = (SELECT MIN(sal) FROM emp);
```
![[Pasted image 20221028133707.png]]
- Here, the aggregate function `MIN` is used. remember, there are 5 aggregate functions.

### Question 2: List all employees who work in the same post as Smith.

```sql
SELECT ename FROM emp WHERE job = (SELECT job FROM emp WHERE ename = 'SMITH') AND ename <> 'SMITH';
```
![[Pasted image 20221028134658.png]]
- The `=` is a relational equals-to operator.
- The `<>` is a relational not-equals-to operator.

### Question 3: List all employees who earn more than every employee in the 'Sales' dept.

```sql
SELECT ename FROM emp WHERE sal > (SELECT MAX(sal) FROM emp, dept WHERE emp.deptno = dept.deptno AND dname = 'SALES');
```
![[Pasted image 20221028134913.png]]
- `WHERE emp.deptno = dept.deptno` helps to temporarily join the two tables using primary key-foreign keys.

### Question 4: Find the job with the highest average salary.

```sql
SELECT A.job 
FROM (SELECT job, AVG(sal) as avgsal
	FROM emp
	GROUP BY job)A,
	(SELECT MAX(AVG(sal)) AS maxsal
	FROM emp GROUP BY job)B
	WHERE A.avgsal = B.maxsal;
```
![[Pasted image 20221028140256.png]]
- 'A' is used as an alias to refer to what is returned by `(SELECT job, AVG(sal) as avgsal FROM emp GROUP BY job)`; which is a temporary table with two columns: job and average salary.

### Question 5: Find the highest salary of each job.

```sql
SELECT job, MAX(sal) as "HIGHEST SALARY"
FROM emp
GROUP BY job;
```
![[Pasted image 20221028140643.png]]

### Question 6: List the names, jobs and salaries of employees whose salary is greater than the highest salary in Research department.

```sql
SELECT ename, job, sal
FROM emp
WHERE sal > (SELECT MAX(sal)
		FROM emp, dept
		WHERE emp.deptno = dept.deptno AND dname = 'RESEARCH');
```
![[Pasted image 20221028141540.png]]
- The query also works without the `GROUP BY dname` part.

### Question 7:  Find the department that is no having any emmployee.

```sql
SELECT dname
FROM dept
WHERE NOT EXISTS (SELECT job FROM emp WHERE emp.deptno = dept.deptno);
```
![[Pasted image 20221028143154.png]]

### Question 8: List the top 3 earners in the organisation.

```sql
SELECT E.ename, E.sal
FROM (SELECT * 
	  FROM emp
	  ORDER BY sal DESC)E
	  WHERE rownum < 4;
```
![[Pasted image 20221028143049.png]]

### Question 9: List the years and the number of people joining in that year.

```sql
SELECT TO_CHAR(hiredate, 'YYYY') AS "year", COUNT(ename) "NO OF EMPLOYEE"
FROM emp
GROUP BY TO_CHAR(hiredate, 'YYYY');
```
![[Pasted image 20221028143815.png]]
 
### Question 10: Give an increment of 20% to all employees joined before 1/1/82 or earner less than Rs. 3000.

```sql

```