--function_sine.sql: Write a function to calculate sin(x) using Taylor series expansion.

CREATE OR REPLACE FUNCTION SINE(
    X IN NUMBER
) RETURN NUMBER AS
    CSIN NUMBER;
    FACT NUMBER;
    N    NUMBER;
    TERM NUMBER;
    EPS  NUMBER;
    XRAD NUMBER;
    I    NUMBER;
    SF   NUMBER;
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