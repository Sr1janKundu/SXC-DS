### Question 1: Write functions sine(x), cosine(x), tagent(x). Write also a main program wchich will call functions to get sin(x), cos(x) and tan(x). Use the Taylor series expansion of sin(x), cos(x).
1. function_sine.sql
2. function_cos.sql
3. function_tangent.sql
4. sin_cos_tan_main.sql
$$sin(x) = x - \frac{x^3}{3!} + \frac{x^5}{5!} - ...$$
$$cos(x) = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - ...$$
$$tan(x) = \frac{sin(x)}{cos(x)}$$
The sine function is:
```plsql
--function_sine.sql: Write a function to calculate sin(x) using Taylor series expansion.

  

CREATE OR REPLACE FUNCTION SINE(

    X IN NUMBER

) RETURN NUMBER AS

    CSIN NUMBER;

    FACT NUMBER;

    N    NUMBER;

    TERM NUMBER;

    EPS  NUMBER;

    XRAD NUMBER;

    I    NUMBER;

    SF   NUMBER;

BEGIN

    XRAD := X*3.141592653589793/180;

    CSIN := XRAD;

    EPS := CSIN;

    IF(EPS < 0) THEN

        EPS := -EPS;

    END IF;

    N := 3;

    SF := -1;

    WHILE(EPS > 1e-12) LOOP

        FACT := 1;

        FOR I IN 1..N LOOP

            FACT := FACT*I;

        END LOOP;

        TERM := SF*XRAD**N/FACT;

        CSIN := CSIN + TERM;

        EPS := TERM;

        IF(EPS<0) THEN

            EPS := -EPS;

        END IF;

        N := N+2;

        SF := -SF;

    END LOOP;

    RETURN CSIN;

END;

/
```

The cos function is:
```plsql
--function_cos.sql: Write a function to calculate cos(x) using Taylor series expansion.

  

CREATE OR REPLACE FUNCTION COSINE(

    X IN NUMBER

) RETURN NUMBER AS

    CCOS NUMBER;

    FACT NUMBER;

    N    NUMBER;

    TERM NUMBER;

    EPS  NUMBER;

    XRAD NUMBER;

    I    NUMBER;

    SF   NUMBER;

BEGIN

    XRAD := X*3.141592653589793/180;

    CCOS := 1;

    EPS := CCOS;

    IF(EPS < 0) THEN

        EPS := -EPS;

    END IF;

    N := 2;

    SF := -1;

    WHILE(EPS > 1e-12) LOOP

        FACT := 1;

        FOR I IN 1..N LOOP

            FACT := FACT*I;

        END LOOP;

        TERM := SF*XRAD**N/FACT;

        CCOS := CCOS + TERM;

        EPS := TERM;

        IF(EPS<0) THEN

            EPS := -EPS;

        END IF;

        N := N+2;

        SF := -SF;

    END LOOP;

    RETURN CCOS;

END;

/
```

The tan function is:
```plsql
--function_tangent.sql: Write a function to calculate tan(x) sung sin(x)/cos(x).

  

CREATE OR REPLACE FUNCTION TANGENT(

    X IN NUMBER

) RETURN NUMBER AS

    Y NUMBER;

BEGIN

    Y := SINE(X)/COSINE(X);

    RETURN Y;

END;

/
```

The main function is:
```sql
--sin_cos_tan_main.sql: Write main program to call sin(x), cosine(x), tangent(x) to calculate sin(x), cos(x), tan(x).

  

DECLARE

    X  NUMBER;

    Y1 NUMBER(15, 13);

    Y2 NUMBER(15, 13);

    Y3 NUMBER(18, 3);

BEGIN

    X := 0;

    WHILE(X <= 180) LOOP

        Y1 := SINE(X);

        Y2 := COSINE(X);

        Y3 := TANGENT(X);

        DBMS_OUTPUT.PUT_LINE('sin('

            ||X

            ||') = '

            ||Y1

            || '  cos('

            ||X

            ||') = '

            ||Y2

            || '  tan('

            ||X

            ||') = '

            ||Y3);

        X := X+5;

    END LOOP;

END;

/
```