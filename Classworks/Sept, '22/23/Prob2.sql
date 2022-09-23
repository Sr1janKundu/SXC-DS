--Write a program in PL/SQL to input 3 number s say a, b, c.
--Then print the largest number.


DECLARE
    A     NUMBER :=&A;
    B     NUMBER :=&B;
    C     NUMBER :=&C;
    LARGE NUMBER;
BEGIN
    LARGE :=A;
    IF B>LARGE THEN
        LARGE :=B;
    END IF;
    IF C>LARGE THEN
        LARGE :=C;
    END IF;
    DBMS_OUTPUT.PUT_LINE('a = '
        ||A
        || ', b = '
        ||B
        || ', c = '
        ||C
        || '; Largest Value = '
        ||LARGE);
END;
/