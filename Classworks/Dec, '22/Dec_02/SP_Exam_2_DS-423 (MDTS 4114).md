## Srijan Kundu
#### M.Sc. Data Science
##### Date: Dec 02, 2022

---
## Question:

**Kindly adhere to the given deadline. Late submissions will be penalized. All code and the corresponding output can be included either as screenshots or text of the command line (black screen). Submit a PDF file or a Word file.  
Do not simply copy from your friends. You will not learn anything. Attempt the questions with due diligence and honesty.**  
  
_Create the following tables:_  
  
_Employee (Id: DATA TYPE = VARCHAR; SIZE = 5; PRIMARY KEY, Name: DATA TYPE = VARCHAR; SIZE = 50,  
Salary: DATA TYPE = NUMBER; SIZE = 6)_  
_  
Department (Id: DATA TYPE = VARCHAR; SIZE = 5; PRIMARY KEY, Name: DATA TYPE = VARCHAR; SIZE = 5,  
Manager_Id: DATA TYPE = VARCHAR; SIZE = 5; FOREIGN KEY DEPENDS ON Id of Employee, Floor_No: DATA TYPE = NUMBER; SIZE = 10)_  
_  
Works (Eid: DATA TYPE = VARCHAR; SIZE = 5; FOREIGN KEY DEPENDS ON Id of Employee, Did: DATA TYPE = VARCHAR; SIZE = 5; FOREIGN KEY DEPENDS ON Id of Department; Eid and Did together make up the PRIMARY KEY)_  
**_Contents of tables :_**  
   
SELECT * FROM Employee;  
   
ID     NAME                SALARY  
-----  --------------------         ----------  
E001   Dipshikha             40000  
E002   Nayana                 12000  
E003   Ayan                     55000  
E004   Rohit                     20000  
E005   Aryan                    48000  
E006   Jit                          10000  
E007   Arman                   13500  
E008   Pritam                   45000  
E009   Jyothi                    25000  
   
SELECT * FROM Department;  
   
ID     NAME    MANAGER_Id   FLOOR_NO  
-----        -----          -----                    ----------  
D001     HR           E003                       2  
D002     BPO         E008                       1  
D003     FIN          E005                       3  
D004     SALES     E001                       4  
   
SELECT * FROM Works;  
   
EID     DID  
----       -----  
E001   D004  
E002   D004  
E003   D001  
E004   D001  
E005   D003  
E006   D004  
E007   D002  
E008   D002  
E009   D003  
   
9 rows selected.  
  
Write SQL statements to resolve the following queries:  
a) Find the number of employees receiving a salary more than 40000  
b) Find the number of employees working in the HR department  
c) Display the following details of employees: Name of employee, Salary received and Department she is working for  
d) Find the name and ID of the manager who receives the lowest salary  
e) Display the name and per-day salary of the employees  
f) Show the schema of the Works table  
g) Update the floor number of the SALES department to 40  
h) Add a new column called Date_Of_Birth to the Employee table  
i) Delete all records from the Works table for Department 1  
j) Remove all the three tables completely from your working environment

---
## Answer:

```sql
--table creation
CREATE TABLE employee(id VARCHAR(5) PRIMARY KEY, 
					  name VARCHAR(50), 
					  salary NUMBER(6));

CREATE TABLE department(id VARCHAR(5) PRIMARY KEY, 
						name VARCHAR(5), 
						manager_id VARCHAR(5) REFERENCES employee(id), 
						floor_no NUMBER(10));

CREATE TABLE works(eid VARCHAR(5) REFERENCES employee(id), 
				  did VARCHAR(5) REFERENCES department(id),
				  PRIMARY KEY(eid, did));
```
![[Pasted image 20221202145557.png]]
```sql
--data input
--employee table
INSERT INTO employee VALUES('E001',
						   'Dipshikha',
						   40000);
INSERT INTO employee VALUES('E002',
						   'Nayanaa',
						   12000);
INSERT INTO employee VALUES('E003',
						   'Ayan',
						   55000);
INSERT INTO employee VALUES('E004',
						   'Rohit',
						   20000);
INSERT INTO employee VALUES('E005',
						   'Aryan',
						   48000);						   
INSERT INTO employee VALUES('E006',
						   'Jit',
						   10000);
INSERT INTO employee VALUES('E007',
						   'Arman',
						   13500);
INSERT INTO employee VALUES('E008',
						   'Pritam',
						   45000);
INSERT INTO employee VALUES('E009',
						   'Jyothi',
						   25000);						   						   						   						   						   						   						   						   						   
```
![[Pasted image 20221202150139.png]]
```sql
--department table
INSERT INTO department VALUES('D001',
							 'HR',
							 'E003',
							 2);
INSERT INTO department VALUES('D002',
							 'BPO',
							 'E008',
							 1);
INSERT INTO department VALUES('D003',
							 'FIN',
							 'E005',
							 3);
INSERT INTO department VALUES('D004',
							 'SALES',
							 'E001',
							 4);							 							 							 
```
![[Pasted image 20221202151930.png]]
```sql
--work table
INSERT INTO works VALUES('E001', 'D004');
INSERT INTO works VALUES('E002', 'D004');
INSERT INTO works VALUES('E003', 'D001');
INSERT INTO works VALUES('E004', 'D001');
INSERT INTO works VALUES('E005', 'D003');
INSERT INTO works VALUES('E006', 'D004');
INSERT INTO works VALUES('E007', 'D002');
INSERT INTO works VALUES('E008', 'D002');
INSERT INTO works VALUES('E009', 'D003');
```
![[Pasted image 20221202152111.png]]
```sql
--question(a)
SELECT COUNT(*) FROM employee WHERE salary > 40000;
```
![[Pasted image 20221202152332.png]]
```sql
--question(b)
SELECT COUNT(*) FROM works WHERE did = (SELECT id FROM department WHERE name = 'HR');
```
![[Pasted image 20221202152410.png]]
```sql
--question(c)
SELECT id, name, salary FROM employee,  (SELECT )
```

```sql
--question(d)
SELECT name, id FROM employee WHERE salary = (SELECT MIN(salary) FROM employee AND id <>(SELECT manger_id FROM department));
```

```sql
--question(e)
SELECT name, (salary/30) AS PER_DAY_SALARY FROM employee;
```
![[Pasted image 20221202152607.png]]
```sql
--question(f)
DESC works;
```
![[Pasted image 20221202152620.png]]
```sql
--question(g)
UPDATE department SET floor_no = 40 WHERE name = 'SALES';
```
![[Pasted image 20221202153332.png]]
```sql
--question(h)
ALTER TABLE employee ADD Date_Of_Birth DATE;
```
![[Pasted image 20221202153343.png]]
```sql
--question(i)
DELETE FROM works WHERE DID = 'D001';
```
![[Pasted image 20221202152822.png]]
```sql
--question(j)
DROP TABLE works;
DROP TABLE department;
DROP TABLE employee;
```
![[Pasted image 20221202152844.png]]