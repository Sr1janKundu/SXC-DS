--function_cos.sql: Write a function to calculate cos(x) using Taylor series expansion.

CREATE OR REPLACE FUNCTION COSINE(
    X IN NUMBER
) RETURN NUMBER AS
    CCOS NUMBER;
    FACT NUMBER;
    N    NUMBER;
    TERM NUMBER;
    EPS  NUMBER;
    XRAD NUMBER;
    I    NUMBER;
    SF   NUMBER;
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