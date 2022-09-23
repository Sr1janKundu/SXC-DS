# Sept 23, 2022 - AN (PLSQL)

#### _(Continuation of Sept 16, '22 class)_

## Syntax of `if` statement:
- If condition then
- ...
- End if
## Syntax of `for` loop:
- For i in n1, ...n2
- Loop
- ...
- End Loop;
## Syntex of `while` loop:
- While condition
- Loop
- ...
- End loop;
## Syntax of `do-while` loop:
- Loop statement
- Loop
- ...
- Exit when condition;
- End loop;
## To display `output` on screen:
- Dbms_output.put_line(var1||var2...);
- Dbms_output.put(var1||var2...);                   (_to get the output in same line_)

## To `comment`:
- use `--` or `/*...*/`
## Problem 1
Write a program in PL/SQL to input 2 number s say a, b; then print the largest number.
_Run `@d:Prob1.sql` in console if the file 'Prob1.sql' is in d-drive._
## Problem 2
Write a program in PL/SQL to input 3 number s say a, b, c; then print the largest number.
## Problem 3
Write a program in PL/SQL to input 2 numbers say a, b. Calculate and print (i) HCF, (ii) LCM of 2 numbers.
## Problem 4
Input n(2~2000), display all prime numbers <= n.
