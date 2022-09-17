# Question 3 

```
create table Department(Did varchar(10) PRIMARY KEY, Dname varchar(30) NOT NULL CHECK(Dname IN ('Development', 'Analytics', 'R&D', 'Tech Support')), Dloc varchar(40) NOT NULL, DateOfSetup DATE NOT NULL);

create table Employee(Eid varchar(10), Ename varchar(50) NOT NULL, Salary number(8) DEFAULT 30000, DOB date NOT NULL, Did varchar(5) references Department(Did), SuperNum varchar(10) references Employee(Eid), PRIMARY KEY(Eid));

insert into Department values('D1', 'Analytics', 'Kolkata', '23-JUN-2020');
insert into Department values('D2', 'Analytics', 'Chennai', '22-JUN-2020');
insert into Department values('D3', 'Development', 'Bengaluru', '19-DEC-2020');
insert into Department values('D4', 'Development', 'Mumbai', '15-NOV-2020');
insert into Department values('D5', 'Tech Support', 'Silchar', '1-DEC-2021');
insert into Department values('D6', 'Tech Support', 'Noida', '03-APR-2021');

insert into employee(Eid, Ename, Salary, DOB, Did) values('E1', 'ABC', 75000, '23-JUN-1991', 'D1');
insert into employee(Eid, Ename, DOB, Did, SuperNum) values('E2', 'DEF', '04-JAN-1993', 'D1', 'E1');
insert into employee(Eid, Ename, DOB, Did, SuperNum) values('E3', 'GHI', '07-SEP-1991', 'D6', 'E1');
insert into employee(Eid, Ename, Salary, DOB, Did, SuperNum) values('E4', 'JKL', 65000, '01-APR-1991', 'D4', 'E1');
insert into employee(Eid, Ename, Salary, DOB, Did, SuperNum) values('E5', 'JKL', 62000, '23-AUG-1995', 'D4', 'E1');
insert into employee(Eid, Ename, Salary, DOB, Did) values('E6', 'ABC', 35000, '3-JUN-1990', 'D2');
insert into employee(Eid, Ename, Salary, DOB, Did, SuperNum) values('E7', 'PQR', 52000, '13-FEB-1996', 'D3', 'E6');
insert into employee(Eid, Ename, Salary, DOB, Did, SuperNum) values('E8', 'PQR', 45000, '12-NOV-1993', 'D4', 'E6');
insert into employee(Eid, Ename, Salary, DOB, Did, SuperNum) values('E9', 'XYZ', 56000, '10-JUN-1993', 'D1', 'E6');
insert into employee(Eid, Ename, Salary, DOB, Did, SuperNum) values('E10', 'DEF',62000, '30-JUL-1994', 'D5', 'E6');



alter table department add email char(255);
alter table department modify email varchar(255);
```


### Q. Remove the email column
```
alter table department drop column email;
```

### Q. Change name of DLOC to DEPARTMENT_LOCATION
```
alter table DEPARTMENT RENAME COLUMN DLOC to DEPARTMENT_LOCATION;
```

### Q. Delete the details of non-supervisors
```
DELETE FROM employee where SuperNum IS NOT NULL;
```

### Q. Delete the details of supervisors
```
DELETE FROM employee where SuperNum is NULL;
```

### Q. Delete contents form department table
```
delete from department;
```

### Q. Remove both the tables, including the schema;
```
drop table employee;
drop table department;
```


-  `Truncate table` command is exactly the same as `delete from tablename`;  the later removes one row at a time where as the first command first applies `drop table (tablename)` command and then applies `create table` command; leaving us only with the schema of the table.


# Question 4

```
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



--------------------------------------------------------------------------------------------------------------------------

### Q. List te employees whose salaries aare 800, 1600, 2450

```
select * from emp where sal in(800,1600,2450);
```


### Q. List the employee name that starts with 'F'

_Pattern matching (used with LIKE clause)_: makes use of wildcards. viz, `_` and `%`.
- `_` means exactly matches one character/symbol/position.
- `%` means match zero or more charachters.



```
select ename from emp where ename like 'F%';
```

All the string values should be enclosed within single quotes only.


### Q. List all employees whose names end with 'N'

```
select ename from emp where ename like '%N';
```

For matching even numeric vaies, use single quotes for pattern matching.


### Q. List all employees whose job does not start with 'CL'
```
select ename from emp where job not like 'CL%';
```


## Aggregate functions:

Aggregate functions work on a group of rows, and return one value.
In SQL, there are total 5 aggregate functions:
	- `SUM`,
	- `AVG`,
	- `MIN`,
	- `MAX`,
	- `COUNT`
The first 4 functions always ignore nullvaules. For the `COUNT` function, where will certain cases where NULL VALUES will be considered.

### Q. Calculate average salary of all employees
```
select avg(sal) "AVERAGE SALARY" from emp;
```

```
select avg(sal) AS "AVERAGE SALARY" from emp;
```

```
select avg(sal) from emp;
```

### Q. Calculate total salary of all managers
```
select sum(sal) "TOTAL SALARY OF MANAGERS" from emp where job = 'MANAGER';
```

### Q. Find the minimum salary earned by the employees
```
select min(sal) "MINIMUM EMPLOYEE SALARY" from emp;
```

### Q. Find the maximum salary earned by the employees
```
select max(sal) "MAXIMUM EMPLOYEE SALARY" from emp;
```

### Q. Find the minimum, maximum and average salary earned by employees
```
select min(sal) "MINIMUM SALARY", max(sal) "MAXIMUM SALARY", avg(sal) "AVERAGE SALARY" from emp;
```

### Q. List the total number of employees and the average salaries of different departments

```

```







