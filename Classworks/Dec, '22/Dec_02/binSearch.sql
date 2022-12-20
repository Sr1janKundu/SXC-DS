DECLARE
    TYPE NUMARRAY IS
        VARRAY(5) OF NUMBER;
    ROLL_NO NUMARRAY;
    TOT_NO  NUMARRAY;
    I       NUMBER;
    RESULT  NUMBER;
    TOT     NUMBER :=&TOT; --number to search
 --bin_search_function
    FUNCTION BIN_SEARCH(
        A IN NUMARRAY,
        LOW IN NUMBER,
        HIGH IN NUMBER,
        KEY IN NUMBER
    ) RETURN NUMBER AS
        MID NUMBER;
    BEGIN
        IF HIGH < LOW THEN
            RETURN -1;
        END IF;
        MID := FLOOR((HIGH + LOW)/2);
        IF KEY = A(MID) THEN
            RETURN MID;
        ELSIF KEY < A(MID) THEN
            RETURN BIN_SEARCH(A, LOW, MID-1, KEY);
        ELSIF KEY > A(MID) THEN
            RETURN BIN_SEARCH(A, MID+1, HIGH, KEY);
        END IF;
    END;
 --main_function
BEGIN
    ROLL_NO := NUMARRAY(401, 402, 403, 404, 405);
    TOT_NO := NUMARRAY(863, 887, 892, 883, 879);
    RESULT := BIN_SEARCH(TOT_NO, 1, 5, TOT);
    IF RESULT = -1 THEN
        DBMS_OUTPUT.PUT_LINE(TOT
            ||' not found in array of total numbers.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(TOT
            ||' found in array of total numbers, at roll number: '
            ||ROLL_NO(RESULT)
            ||'.');
    END IF;
END;
/