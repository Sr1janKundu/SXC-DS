```PLSQL
SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF
```

## Question 1:

Write a program in PL/SQL to define 1-dim array to store 5 integers. 
Calculate and print: 
1. sum of all elements, 
2. average of all elements, 
3. standard deviation.
```PLSQL
DECLARE
    TYPE NUMARRAY IS
        VARRAY(5) OF NUMBER;
    A  NUMARRAY; --A is 1-dim array and the lowest index of A = 1
    S  NUMBER;
    AV NUMBER;
    SD NUMBER(15, 5);
    I  INTEGER;
    N NUMBER;
BEGIN
    A := NUMARRAY(1, 2, 3, 4, 5);
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
```

With user input of numbers:
```PLSQL
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
```

## Question 2:

Define 1-dimensional array `a()` to store 5 elements. Calculate and print frequency of each
number.
Display Frequency of each element in the list.
```PLSQL

```

## Question 3:

Define 1-dimensional array a() to store 5 arbitrary numbers. Apply Bubble Sort algorithm
to sort numbers in ascending order. Display Unsorted List after that display partially sorted
list after every pass and then finally Display the sorted list.
```PLSQL
DECLARE
    TYPE AARRAY IS
        VARRAY(5) OF NUMBER;
    A    AARRAY;
    N    NUMBER;
    I    NUMBER;
    T    NUMBER;
    M    NUMBER;
    FLAG NUMBER;
    PASS NUMBER;
BEGIN
    A := AARRAY(50, 40, 30, 20, 10);
    N := A.COUNT; --to get size of array of a()
    DBMS_OUTPUT.PUT_LINE('Unsorted List:');
    FOR I IN 1..N LOOP
        DBMS_OUTPUT.PUT_LINE('a('
            ||I
            ||') = '
            ||A(I));
    END LOOP;
    FLAG := 0;
    PASS := 0;
    M := N;
    WHILE (FLAG = 0) LOOP
        FLAG := 1;
        PASS := PASS+1;
        M := M-1;
        FOR I IN 1..M LOOP
            IF(A(I) > A(I+1)) THEN
                T := A(I);
                A(I) := A(I+1);
                A(I+1) := T;
                FLAG := 0;
            END IF;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Pass = '
            ||PASS);
        FOR I IN 1..N LOOP
            DBMS_OUTPUT.PUT_LINE('a('
                ||I
                ||') = '
                ||A(I));
        END LOOP;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sorted List:');
    FOR I IN 1..N LOOP
        DBMS_OUTPUT.PUT_LINE('a('
            ||I
            ||') = '
            ||A(I));
    END LOOP;
END;
```

## Question 4:

Define 1-dimensional array `a()` and store 5 arbitrary numbers in it. Input a number(num)
to be searched in that list. 
Apply:
1. Linear search method to search whether the number found or not in the list.
2. Modify the program to implement Binary Search method to search a number in the sorted list.

```PLSQL

```