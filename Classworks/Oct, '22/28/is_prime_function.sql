--is_prime_1.sql Write a function to test whether a number is prime or not.

CREATE OR REPLACE FUNCTION IS_PRIME(
    N IN NUMBER
) RETURN NUMBER AS
    N1   NUMBER;
    M    NUMBER;
    I    NUMBER;
    R    NUMBER;
    FLAG NUMBER;
BEGIN
    M := N;
    N1 := FLOOR(M/2);
    FLAG := 1;
    FOR I IN 2..N1 LOOP
        R := MOD(N, I);
        IF(R=0) THEN
            FLAG := 0;
            EXIT;
        END IF;
    END LOOP;
    RETURN FLAG;
END;
/