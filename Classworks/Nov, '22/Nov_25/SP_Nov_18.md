## Practice Exercise:

Consider the following schema of a relational database:
- Product(maker:char, model:number, type:char) 
- PC(model:number, speed:number, RAM:number, hdd:number, cd:number, price:number) 
- Laptop(model:number, speed:number, RAM:number, screen:number, price:number) 
- Printer(model:number, colour:char, type:char, price:number) 

**Constraints on Product table:**

- Model is the primary key
- Type can only take the values PC, LAPTOP or PRINTER
- Maker cannot take empty values

**Constraints on PC table;**

- Model is the primary key
- Model is the foreign key which depends on the model attribute of Product
- Speed, RAM, HDD, Price cannot take blank values
- Speed attribute can take decimal values upto 5 places

**Constraints on Laptop table:**

- Model is the primary key
- Model is the foreign key which depends on the model attribute of Product
- Speed, RAM, Screen, Price cannot be left blank
- Speed attribute can take decimal values upto 2 places

**Constraints on Printer table:**

- Model is the primary key
- Model is the foreign key which depends on the model attribute of Product
- Colour, Type, Price cannot be left blank

```sql
CREATE TABLE Product(maker varchar(20) NOT NULL, model NUMBER(10) PRIMARY KEY, type VARCHAR(10) CHECK (type IN ('PC','laptop','printer')));

CREATE TABLE PC(model NUMBER(10) PRIMARY KEY REFERENCES Product(model),speed NUMBER(10,5) NOT NULL ,ram NUMBER(5) NOT NULL , hdd NUMBER(10) NOT NULL, CD NUMBER(10), PRICE NUMBER(10) NOT NULL);

CREATE TABLE Laptop(model NUMBER(10) PRIMARY KEY REFERENCES Product(model),speed NUMBER(10,2) NOT NULL, RAM NUMBER(10) NOT NULL, screen NUMBER(10) NOT NULL,price NUMBER(10) NOT NULL);

CREATE TABLE Printer(model NUMBER(10) PRIMARY KEY REFERENCES Product(model), colour VARCHAR(10) NOT NULL, type VARCHAR(10) NOT NULL, price NUMBER(10) NOT NULL);


insert into product values('samsung', 1, 'PC');
insert into product values('dell', 2, 'PC');
insert into product values('hp', 11, 'printer');
insert into product values('canon', 12, 'printer');
insert into product values('epson', 13, 'printer');
insert into product values('toshiba', 21, 'laptop');
insert into product values('hp', 22, 'laptop');
insert into product values('dell', 23, 'laptop');
insert into product values('samsung', 3, 'PC');
insert into product values('intel', 4, 'PC');
insert into product values('samsung', 5, 'PC');
insert into product values('apple', 24, 'laptop');
insert into product values('hp', 6, 'PC');
insert into product values('canon', 7, 'PC');


INSERT INTO PC VALUES (1,2,500,1000,6,8000);
INSERT INTO PC VALUES (2,3,1000,512,7,60000);
INSERT INTO PC VALUES (3,1,256,512,8,9000);
INSERT INTO PC VALUES (4,2,512,80,10,20000);
INSERT INTO PC VALUES (5,10,512,256,10,20000);
INSERT INTO PC VALUES (6,4,256,512,8,60000);
INSERT INTO PC VALUES (7,3,1000,1024,4,80000);


INSERT INTO LAPTOP VALUES (21,12,1024,15,20000);
INSERT INTO LAPTOP VALUES (22,15,2048,17,20000);
INSERT INTO LAPTOP VALUES (23,0,512,20,20000);
INSERT INTO LAPTOP VALUES (24,2,256,14,45000);


INSERT INTO PRINTER VALUES (11,'white','inkjet',5000);
INSERT INTO PRINTER VALUES (12,'black','laser',20000);
INSERT INTO PRINTER VALUES (13,'grey','dot matrix',3000);
```

### Question 1
Find laptops whose speed is slower than any PC.
```sql
SELECT MODEL
  FROM LAPTOP
  WHERE SPEED < (SELECT min(SPEED) FROM PC);
```
### Question 2
Find average hard disk size of PCs for all those manufacturers that make printers.
```sql
SELECT AVG(HDD)
  FROM PC,PRODUCT
  WHERE PC.MODEL=PRODUCT.MODEL
  AND MAKER IN
  (SELECT P.MAKER
  FROM PRODUCT P, PRINTER T
  WHERE P.MODEL=T.MODEL);
```
### Question 3
Find the makers of PC with the fastest processor among all those whose RAM is the 
smallest.
```sql
SELECT MAKER FROM PRODUCT 
           WHERE MODEL IN
      (SELECT MODEL FROM PC 
        WHERE SPEED=(SELECT MAX(SPEED) FROM PC WHERE MODEL IN (SELECT MODEL FROM PC WHERE RAM=(SELECT MIN(RAM) FROM PC))));
```
### Question 4
Find hard disk sizes that occur in 3 or more PCs.
```sql
SELECT HDD
FROM PC
GROUP BY HDD
HAVING COUNT(MODEL)>2;
```
### Question 5
Give an alternate to laptop schema by adding a new attribute cd. Let the default value of the attribute be "NULL" if the laptop does not have a cd drive.
```sql
ALTER TABLE Laptop ADD (Cd NUMBER(5));
```
### Question 6
Find the manufacturer that makes at least 3 different models of PC.
```sql
SELECT MAKER
  FROM PRODUCT
  WHERE TYPE='PC'
  GROUP BY MAKER
  HAVING COUNT(MODEL)>=3;
```
### Question 7
Find the model number, speed and hard disk size for a PC that have either a 6x or 8x cd and price less than 10000. The output must be sorted by model number.
```sql
SELECT MODEL,SPEED,HDD
FROM PC
WHERE CD IN (6,8)
AND PRICE<10000
ORDER BY MODEL;
```
### Question 8
Find those pairs of PC models that have the same speed and RAM. A pair should be listed only once.
```sql
SELECT DISTINCT P1.Model,P2.Model
 FROM PC P1, PC P2
 WHERE P1.Speed=P2.Speed AND P1.RAM=P2.RAM
 AND NOT(P1.MODEL=P2.MODEL);
```
### Question 9
Find all those laptops whose speed is more than any PC with the same price tag of Rs. 20000.
```sql
Select model
From laptop
Where speed >( select max(speed) from pc where price=20000)
and price=20000;
```
### Question 10
Change the price of the PC to include fractional numbers as well.
```sql
ALTER TABLE PC MODIFY (Price NUMBER (10,2));
```