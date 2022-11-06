--function_tangent.sql: Write a function to calculate tan(x) sung sin(x)/cos(x).

CREATE OR REPLACE FUNCTION TANGENT(
    X IN NUMBER
) RETURN NUMBER AS
    Y NUMBER;
BEGIN
    Y := SINE(X)/COSINE(X);
    RETURN Y;
END;
/