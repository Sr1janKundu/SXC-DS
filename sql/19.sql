---Define 1-dimensional array a() to store 5 arbitrary numbers. 
--Apply Bubble Sort algorithm to sort numbers in ascending order. 
--Display Unsorted List after that display partially sorted list after every pass 
--and then finally Display the sorted list.

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
    --Bubble sort starts
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