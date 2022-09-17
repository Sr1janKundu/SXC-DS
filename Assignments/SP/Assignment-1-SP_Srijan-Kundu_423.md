# Assignment - 1 (SP)
## Name - Srijan Kundu (423)
#### Sept. 17, 2022 

## Question:
- Create an Employee table with the following properties:
Eid (data type = text, primary key), Ename (data type = text, should not be unknown), Salary (data type = integer, should be at least 25000 and at most 90000), DOB (data type = date, should not be unknown), Pid (data type = text, foreign key refers to Pid of Project table),
SuperNum (data type = text, foreign key refers to Eid of Employee table)

- Create a Project table with the following properties:
Pid (data type = text; primary key), Pname (data type = text; default value is “STARTUP”), Plocation (data type = text; should not be unknown; list of possible values include Kolkata, Pune, Delhi and Chennai), Budget (data type = integer, should be at most 500000)

- Insert the following 6 records into the Project table:
    1. ('P1', 'Kolkata', 300000)
    2. ('P2', ‘IT’, 'Chennai', 400000)
    3. ('P3', ‘R&D’, 'Delhi', 350000)
    4. ('P4', 'R&D', 'Delhi', 250000)
    5. ('P5', ‘Fintech’, 'Pune', 480000)
    6. ('P6', ‘Big Data’, 'Pune', 320000)

- Insert the following 10 records into the Employee table
    1. (‘E1', ‘Rajesh', 25000, 23rd June 1991, ‘P1’)
    2. (‘E2', ‘Rakesh', 52000, 4th January 1993, ‘P2’, ‘E1’)
    3. (‘E3', ‘Sumit', 45000, 7th September 1991, ‘P6’, ‘E1’)
    4. (‘E4', ‘Sharon', 65000, 1st April 1992, ‘P3’)
    5. (‘E5', ‘Kavya', 62000, 23rd August 1995, ‘P4’, ‘E4’)
    6. (‘E6', ‘Kriti', 35000, 3rd June 1990, ‘P2’)
    7. (‘E7', ‘Ankush', 52000, 13th February 1996, ‘P5’, ‘E6’)
    8.  (‘E8', ‘Sameer', 45000, 12th Nov 1993, ‘P6’, ‘E6’)
    9. (‘E9', ‘Nadeem', 56000, 10th June 1993, ‘P3’, ‘E1’)
    10. (‘E10', ‘Shruti', 82000, 30th July 1994, ‘P5’, ‘E4’)

- Write SQL statements to solve the following queries:
    1. Display the instance of the Project table
    2. Display the schema of the Project table
    3. Display the instance of the Employee table
    4. Display the schema of the Employee table
    5. Find the names and DOBs of employees receiving salary between 50000 and 60000
    6. Find the names and salaries of employees working on project P5
    7. Find the names of employees born in 1993
    8. Display details of projects for which the budget allocation is at least 400000
    9. List out the names of all the projects
    10. List out details of projects being carried out at Kolkata
    11. List out project details being carried out at Pune and having a budget at least 300000

## Answers:

```
CREATE TABLE project(pid VARCHAR(10) PRIMARY KEY, pname VARCHAR(20) DEFAULT 'STARTUP', plocation VARCHAR(20) NOT NULL CHECK(plocation IN('Kolkata', 'Pune', 'Delhi', 'Chennai')), budget NUMBER(6) CHECK(budget < 500000));
```
![[Pasted image 20220917195727.png]]
```
CREATE TABLE employee(eid VARCHAR(10) PRIMARY KEY, ename VARCHAR(20) NOT NULL, sal NUMBER(5) CHECK(sal >= 25000 and sal <= 90000), dob DATE NOT NULL, pid VARCHAR(10) REFERENCES project(pid), supernum varchar(10) REFERENCES employee(eid));
```
![[Pasted image 20220917195852.png]]
```
INSERT INTO project(pid, plocation, budget) VALUES('P1', 'Kolkata', 300000);
INSERT INTO project(pid, pname, plocation, budget) VALUES('P2', 'IT', 'Chennai', 400000);
INSERT INTO project(pid, pname, plocation, budget) VALUES('P3', 'R'||chr(38)||'D', 'Delhi', 350000);
INSERT INTO project(pid, pname, plocation, budget) VALUES('P4', 'R'||chr(38)||'D', 'Delhi', 250000);
INSERT INTO project(pid, pname, plocation, budget) VALUES('P5', 'Fintech', 'Pune', 480000);
INSERT INTO project(pid, pname, plocation, budget) VALUES('P6', 'Big Data', 'Pune', 320000);
```
![[Pasted image 20220917195946.png]]
```
INSERT INTO employee(eid, ename, sal, dob, pid) VALUES('E1', 'Rajesh', 25000, '23-JUN-1991', 'P1');
INSERT INTO employee(eid, ename, sal, dob, pid, supernum) VALUES('E2', 'Rakesh', 52000, '04-JAN-1993', 'P2', 'E1');
INSERT INTO employee(eid, ename, sal, dob, pid, supernum) VALUES('E3', 'Sumit', 45000, '07-SEP-1991', 'P6', 'E1');
INSERT INTO employee(eid, ename, sal, dob, pid) VALUES('E4', 'Sharon', 65000, '01-APR-1992', 'P3');
INSERT INTO employee(eid, ename, sal, dob, pid, supernum) VALUES('E5', 'Kavya', 62000, '23-AUG-1995', 'P4', 'E4');
INSERT INTO employee(eid, ename, sal, dob, pid) VALUES('E6', 'Kriti', 35000, '03-JUN-1990', 'P2');
INSERT INTO employee(eid, ename, sal, dob, pid, supernum) VALUES('E7', 'Ankush', 52000, '13-FEB-1996', 'P5', 'E6');
INSERT INTO employee(eid, ename, sal, dob, pid, supernum) VALUES('E8', 'Sameer', 45000, '12-NOV-1993', 'P6', 'E6');
INSERT INTO employee(eid, ename, sal, dob, pid, supernum) VALUES('E9', 'Nadeem', 56000, '10-JUN-1993', 'P3', 'E1');
INSERT INTO employee(eid, ename, sal, dob, pid, supernum) VALUES('E10', 'Shruti', 82000, '30-JUL-1994', 'P5', 'E4');
```
![[Pasted image 20220917200035.png]]
```
SELECT * FROM project;
DESC project;
SELECT * FROM employee;
DESC employee;
SELECT ename, dob FROM employee WHERE sal BETWEEN 50000 AND 60000;
SELECT ename, sal FROM employee WHERE pid = 'P5';
SELECT ename FROM employee WHERE dob BETWEEN '01-JAN-1993' AND '31-DEC-1993';
SELECT * FROM project WHERE budget >= 400000;
SELECT DISTINCT pname FROM project;
SELECT * FROM project WHERE plocation = 'Kolkata';
SELECT * FROM project WHERE plocation = 'Pune' AND budget >= 30000;
```
![[Pasted image 20220917200138.png]]
![[Pasted image 20220917200226.png]]
![[Pasted image 20220917200254.png]]
![[Pasted image 20220917200310.png]]
![[Pasted image 20220917200333.png]]
![[Pasted image 20220917200358.png]]
![[Pasted image 20220917212510.png]]
![[Pasted image 20220917212121.png]]
![[Pasted image 20220917200511.png]]
![[Pasted image 20220917200531.png]]
![[Pasted image 20220917212323.png]]




