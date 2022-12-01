--sin_cos_tan_main.sql: Write main program to call sin(x), cosine(x), tangent(x) to calculate sin(x), cos(x), tan(x).

DECLARE
    X  NUMBER;
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
            || '  cos('
            ||X
            ||') = '
            ||Y2
            || '  tan('
            ||X
            ||') = '
            ||Y3);
        X := X+5;
    END LOOP;
END;
/