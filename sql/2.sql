DECLARE
    C NUMBER :=&C;
    F NUMBER := 0;
BEGIN
    F := 9*C/5 + 32;
    DBMS_OUTPUT.PUT_LINE('Temperature in fahrenheit is = '
        ||F);
END;
/