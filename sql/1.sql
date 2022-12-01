DECLARE
    A    NUMBER :=&A;
    B    NUMBER :=&B;
    S    NUMBER := 0;
    DIFF NUMBER := 0;
    PROD NUMBER := 0;
    DIVN NUMBER(10, 5) := 0;
BEGIN
    S := A+B;
    DIFF :=A-B;
    PROD := A*B;
    DIVN := A/B;
    DBMS_OUTPUT.PUT_LINE('a ='
        ||A
        || ' b='
        ||B
        || ' sum='
        ||S
        || ' prod='
        ||PROD
        || ' div='
        ||DIVN);
END;
/