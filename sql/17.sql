--q1as2.sql: Write a program in PL/SQL to define 1-dim array to store 5 integers.
-- Calculate and print (i) sum of all elements, (ii) average of all elements, (iii) standard deviation.

DECLARE
    TYPE NUMARRAY IS
        VARRAY(5) OF NUMBER;
    A  NUMARRAY; --A is 1-dim array and the lowest index of A = 1
    S  NUMBER;
    AV NUMBER;
    SD NUMBER(15, 5);
    I  INTEGER;
    N  NUMBER;
    N1 NUMBER := &N1;
    N2 NUMBER := &N2;
    N3 NUMBER := &N3;
    N4 NUMBER := &N4;
    N5 NUMBER := &N5;
BEGIN
    A := NUMARRAY(N1, N2, N3, N4, N5);
    N := A.COUNT;
    S := 0;
    FOR I IN 1..N LOOP
        S := S + A(I);
    END LOOP;
    AV := S/N;
 --to calculate standard deviation
    SD := 0;
    FOR I IN 1..N LOOP
        SD := SD+(A(I) - AV)**2;
    END LOOP;
    SD := SQRT(SD/N);
    DBMS_OUTPUT.PUT_LINE('Sum = '
        ||S
        ||', Average = '
        ||AV
        ||', Sdev = '
        ||SD);
END;
/