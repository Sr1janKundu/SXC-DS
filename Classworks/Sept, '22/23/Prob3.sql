DECLARE
    A  NUMBER :=&A;
    B  NUMBER :=&B;
    R  NUMBER; /*r = mod(a,b) */
    H  NUMBER; /*the hcf of a & b*/
    LC NUMBER; /*the lcm of a & b*/
    X  NUMBER;
    Y  NUMBER;
BEGIN
 --to calculate hcf of 2 numbers
    X :=A;
    Y :=B;
    R :=MOD(X /*N2*/, Y /*N1*/ );
    WHILE R!=0 LOOP
        X :=Y;
        Y :=R;
        R := MOD(X /*N2*/, Y /*N1*/ );
    END LOOP;
    H := Y;
 --to calculate lcm of 2 numbers
    LC :=A*B/H;
    DBMS_OUTPUT.PUT_LINE('Enter value of a = '
        ||A
        || ', Enter value of b = '
        ||B
        || '; hcf of a and b = '
        ||H
        || ', lcm of a and b = '
        ||LC);
END;
/