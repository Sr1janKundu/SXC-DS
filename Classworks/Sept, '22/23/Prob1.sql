--Write a program in PL/SQL to input 2 number s say a, b.
--Then print the largest number.

--SET SERVEROUTPUT ON

--SET VERIFY OFF

--SET FEEDBACK OFF

DECLARE
    A     NUMBER :=&A;
    B     NUMBER :=&B;
    LARGE NUMBER;
BEGIN
    IF A>B THEN
        LARGE :=A;
    ELSE
        LARGE :=B;
    END IF;
    DBMS_OUTPUT.PUT_LINE('a = '
        ||A
        || ', b = '
        ||B
        || '; Largest Value = '
        ||LARGE);
END;
/