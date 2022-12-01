--lcm_function_1.sql: Write a function to calculate lcm of 2 numbers.

CREATE OR REPLACE FUNCTION LCM(
    A IN NUMBER,
    B IN NUMBER
) RETURN NUMBER AS
    LC NUMBER;
BEGIN
    LC := A*B/HCF(A, B);
    RETURN LC;
END;
/