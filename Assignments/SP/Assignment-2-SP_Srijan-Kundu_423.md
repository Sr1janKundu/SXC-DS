# Assignment - 2(SP)
## Name - Srijan Kundu (423)
### Nov. 06, 2022

- Run the following SQL statements to create tables dept and emp and insert records into them:
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
![[Pasted image 20221106232950.png]]
- Write SQL statements to resolve the following queries:  
  
01) List the names and code of all employees.  
```sql
SELECT ename, empno FROM emp;
```
![[Pasted image 20221106233013.png]]
02) List the names, employee code and department code of all clerks.  
```sql
SELECT emp.ename, emp.empno, emp.deptno, dept.dname FROM emp, dept WHERE emp.deptno = dept.deptno AND job = 'CLERK';
```
![[Pasted image 20221106193409.png]]
03) List the names, employee code and salary of all managers.  
```sql
SELECT ename, empno, sal FROM emp WHERE job = 'MANAGER';
```
![[Pasted image 20221106193524.png]]
04) List the names, employee code and hire date of all analysts.  
```sql
SELECT ename, empno, hiredate FROM emp WHERE job = 'ANALYST';
```
![[Pasted image 20221106193629.png]]
05) List the employees whose salary lies between 2000 and 3000.  
```sql
SELECT ename FROM emp WHERE sal BETWEEN 2000 AND 3000;
```
![[Pasted image 20221106194037.png]]
06) List the employees whose salary less than 1000.  
```sql
SELECT ename, sal FROM emp WHERE sal < 1000;
```
![[Pasted image 20221106194136.png]]
07) List the employees whose salary greater than 4000.  
```sql
SELECT ename, sal FROM emp WHERE sal > 4000;
```
![[Pasted image 20221106200355.png]]
08) List the names of all employees who are either clerks or salesman or analysts. 
```sql
SELECT ename, job FROM emp WHERE job IN ('CLERK', 'ANALYST', 'SALESMAN');
```
![[Pasted image 20221106202217.png]]
09) List the employees those who are not getting commission.  
```sql
SELECT ename, empno FROM emp WHERE comm IS NULL;
```
![[Pasted image 20221106225220.png]]
10) List the employees those who are getting commission.  
```sql
SELECT ename, empno FROM emp WHERE comm IS NOT NULL;
```
![[Pasted image 20221106225340.png]]
11) List all employees whose names start with ‘G’.
```sql
SELECT ename, empno FROM emp WHERE ename LIKE 'G%';
```
![[Pasted image 20221106225748.png]]
12) List all managers who earn more than Rs. 4000.  
```sql
SELECT ename, sal FROM emp WHERE sal > 4000 AND job = 'MANAGER';
```
![[Pasted image 20221106225932.png]]
13) List all clerks and managers who earn more than Rs. 1600.  
```sql
SELECT ename, sal, job FROM emp WHERE sal > 1600 AND job IN ('CLERK', 'MANAGER');
```
![[Pasted image 20221106225806.png]]
14) List the names and salaries of all employees who were joined as manager during 1981.  
```sql
SELECT ename, sal FROM emp WHERE job = 'MANAGER' AND hiredate LIKE '%81';
```
![[Pasted image 20221106230137.png]]
15) Calculate the average salary of all managers.  
```sql
SELECT AVG(sal) AS "AVG SALARY OF MANAGERS" FROM emp WHERE job = 'MANAGER';
```
![[Pasted image 20221106230328.png]]
16) Calcutate the total salary of all employees.  
```sql
SELECT SUM(sal) AS "TOTAL SALARY OF EMPLOYEES" FROM emp;
```
![[Pasted image 20221106230420.png]]
17) Find the minimum salaries earned by the clerks.  
```sql
SELECT MIN(sal) AS "MINIMUM SALARY OF CLERK" FROM emp WHERE job = 'CLERK';
```
![[Pasted image 20221106230531.png]]
18) Find the maximum salaries earned by a salesman.  
```sql
SELECT MAX(sal) AS "MAXIMUM SALARY OF SALESMAN" FROM emp WHERE job = 'SALESMAN';
```
![[Pasted image 20221106230636.png]]
19) Find the minimum and maximum and average salaries earned by a clerks.  
```sql
SELECT job, MIN(sal) AS "MINIMUM SALARY", MAX(sal) AS "MAXIMUM SALARY", AVG(sal) AS "AVERAGE SALARY" FROM emp WHERE job = 'CLERK' GROUP BY job;
```
![[Pasted image 20221106231147.png]]
_or,_
```sql
SELECT MIN(sal) AS "MINIMUM SALARY OF CLERK", MAX(sal) AS "MAXIMUM SALARY OF CLERK", AVG(sal) AS "AVERAGE SALARY OF CLERK" FROM emp WHERE job = 'CLERK';
```
![[Pasted image 20221106231320.png]]
20) Calculate total number of employees.  
```sql
SELECT COUNT(*) AS "TOTAL NUMBER OF EMPLOYEES" FROM emp;
```
![[Pasted image 20221106231413.png]]
21) Display the minimum, maximum and average salaries for each job group.  
```sql
SELECT job, MIN(sal) AS "MINIMUM SALARY", MAX(sal) AS "MAXIMUM SALARY", AVG(sal) AS "AVERAGE SALARY" FROM emp GROUP BY job;
```
![[Pasted image 20221106231544.png]]
22) Display the name, departno and annual salary of each employee in order of salary and deptno.  
```sql
SELECT ename AS "NAME", deptno, sal*12 AS "ANNUAL SALARY" FROM emp ORDER BY sal, deptno;
```
![[Pasted image 20221106231759.png]]
23) Display the name of employee who earns minimum salary.  
```sql
SELECT ename AS "NAME", sal AS "SALARY" FROM emp WHERE sal IN(SELECT MIN(sal) FROM EMP);
```
![[Pasted image 20221106231904.png]]
24) Display the name of employee who earns minimum salary whose job is a clerk.  
```sql
SELECT ename AS "NAME", job, sal AS "SALARY" FROM emp WHERE sal IN(SELECT MIN(sal) FROM emp WHERE job = 'CLERK');
```
![[Pasted image 20221106232649.png]]
25) List all employee name,dept number,dept name and salary, in order of salary.  
```sql
SELECT emp.ename AS "NAME", emp.deptno AS "DEPT NO", dept.dname AS "DEPT NAME", emp.sal AS "SALARY" FROM emp, dept WHERE emp.deptno = dept.deptno ORDER BY sal;
```
![[Pasted image 20221106232513.png]]
26) List all employees working in Dallas in descending order of salary.
```sql
SELECT ename, emp.deptno, sal FROM emp, dept WHERE emp.deptno = dept.deptno AND dept.loc = 'DALLAS' ORDER BY emp.sal DESC;
```
![[Pasted image 20221106232254.png]]