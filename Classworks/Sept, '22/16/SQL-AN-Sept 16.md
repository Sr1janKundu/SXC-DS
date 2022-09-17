# Introduction to PL/SQL


- PL/SQL is procedural language for SQL like C, Java, C#, Python etc.

- In PL/SQL code, we normallly use 2 distinct blocks:
	- Declare: Here we define variables, parameters etc
	- Begin END: In this bblock we write normal procedural code.

- To write PL/SQL code, we have to use any text-editor such as notepad/notepad++.

- The extension for any PL/SQL file must be .sql. e.g., myprog.sql.

- Normally we are supposed to save the files usnder Orcle folder. However, if we can not save it in the oracle folder, then we can save it anywhere, but e have to remember the path where the PL/SQl file has been saved.

 - To execute any PL/SQL code, we go this way:
```
# Suppose the file is saved in th plsql folder under the D-drive, and the file name is myprog.sql.
SQL> d:/plsql_folder/myprog.sql
```

- Before we start to execute PL/SQL code, we have to execute the folowing lines:
```
set serveroutput on;
set verify off;
set feedback off;
```

- Some arithmatic operations in PL/SQL:
	1. Addition: `+`,
	2. Substraction: `-`,
	3. Multiply: `*`,
	4. Division: `/` (exact division, i.e., 5/2 = 2.5);
	5. Exponent: `**`,
	6. Mod(x,y): `mod` , will return x modulo y.

- Some comparison operators:
	1. Equal: `=`,
	2. Greater than: `>`,
	3. Less than: `<`,
	4. Greater than or equal to: `>=`,
	5. Less than or equal to: `<=`,
	6. Not equal: `!=, ~=, <>`.

- Logical operators:
	1. `and`,
	2. `or`,
	3. `not`,
	4. `nor`
	5. `xor`.

-  To display output on screen:
```
dbms_output.put_line(var1 || var2 || var3)
```

- Every statement must be terminated by semicolon.

### Prob1: Write a program in PL/SQL to input $2$ numbers $a,b$. Calculate and print: (i) $a+b$, (ii) $a-b$, (iii) $a*b$, (iv) $a/b$.

### Prob2: Write a program in PL/SQL to input values of $'c'$ and then calculate $'f'$ from $\frac{c}{5}=\frac{f-32}{9}$. Print c,f.

### Prob3. Calculate $f$ from $\frac{c}{5}=\frac{f-32}{9}$ for $c = 10,20,30,40,50,60,70,80,90,100$.

### Prob4. Input $'n'(1\sim10)$. Calculate and print $S = (1) + (1+2+3)+ ...+(1+2+ ...+n)$. Use for loop. 
### Syntax for loop:
```
FOR i in range 1...n
LOOP
END LOOP
```