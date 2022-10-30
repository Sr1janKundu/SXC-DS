--hcf_lcm_1.sql: Write a program in PL/SQL to calculate
--(i) hcf of 2 numbers,
--(ii) Use two functions

DECLARE
    A  NUMBER :=&A;
    B  NUMBER :=&B;
    H  NUMBER; --h = hc of 2 numbers
    LC NUMBER; --lc = lcm of 2 numbers
    FUNCTION HCF(
        A IN NUMBER,
        B IN NUMBER
    ) --'IN' means input-parameter
    RETURN NUMBER IS --`IS`means available in the main function
        R NUMBER;
        X NUMBER;
        Y NUMBER;
        H NUMBER;
    BEGIN
        X :=A;
        Y :=B;
        R := MOD(X, Y);
        WHILE(R != 0) LOOP
            X := Y;
            Y := R;
            R := MOD(X, Y);
        END LOOP;
        H := Y;
        RETURN H;
    END;
    FUNCTION LCM(
        A IN NUMBER,
        B IN NUMBER
    ) RETURN NUMBER IS
        LC NUMBER;
        X  NUMBER;
        Y  NUMBER;
    BEGIN
        X := A;
        Y := B;
        LC := A*B/HCF(A, B);
        RETURN LC;
    END;
 --main program starts
BEGIN
    H := HCF(A, B);
    LC := LCM(A, B);
    DBMS_OUTPUT.PUT_LINE('HCF('
        ||A
        ||','
        ||B
        ||')= '
        ||H);
    DBMS_OUTPUT.PUT_LINE('LCM('
        ||A
        ||','
        ||B
        ||') ='
        ||LC);
END;
/