SET serveroutput on;
SET verify off;
SET feedback off;


DECLARE
    C NUMBER;
    F NUMBER(10, 2);
BEGIN
    C := 10;
    WHILE C <= 100 LOOP
        F :=9*C/5+32;
        DBMS_OUTPUT.PUT_LINE('c = '
            ||C
            || ', f = '
            ||F);
        C := C+10;
    END LOOP;
END;
/