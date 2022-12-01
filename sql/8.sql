CREATE OR REPLACE FUNCTION HCF(
    A IN NUMBER,
    B IN NUMBER
) RETURN NUMBER AS
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
/