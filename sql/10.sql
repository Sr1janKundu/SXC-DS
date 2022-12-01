--hcf_lcm_main_1.sql: Write a program in PL/SQL
--to call 2 user defined functions to calculate HCF, LCM of 2 numbers.

DECLARE
    A  NUMBER := &A;
    B  NUMBER := &B;
    H  NUMBER;
    LC NUMBER;
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
        ||')= '
        ||LC);
END;
/