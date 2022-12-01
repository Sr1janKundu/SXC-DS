--Input n(2~2000), display all prime numbers <= n.

DECLARE
    N   NUMBER :=&N;
    N1  NUMBER;
    CTR NUMBER :=0; /*counter*/
    I   NUMBER;
    J   NUMBER;
    R   NUMBER;
    FLG NUMBER; /*1 for prime, 0 for composite*/
BEGIN
    DBMS_OUTPUT.PUT_LINE('Prime numbers <= '
        ||N
        ||'--->');
    FOR I IN 2..N LOOP
        N1 := FLOOR(I/2 /*N*/ );
        FLG := 1;
        FOR J IN 2..N1 LOOP
            R := MOD(I, J);
            IF R=0 THEN
                FLG :=0;
                EXIT;
            END IF;
        END LOOP;
        IF FLG = 1 THEN
            CTR :=CTR+1;
            DBMS_OUTPUT.PUT_LINE(I);
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total prime numbers <= '
        ||N
        || ' is '
        ||CTR
        ||'.');
END;
/