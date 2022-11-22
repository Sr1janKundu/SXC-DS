DECLARE
    N     NUMBER(2) := &N;
    ROLL  NUMBER(2) := &ROLL;
    NAME  VARCHAR(30) := &NAME;
    CIA   NUMBER(5) := &CIA;
    FINAL NUMBER(5) := &FINAL;
    TOTAL NUMBER(5);
    GRADE VARCHAR(1);
BEGIN
    TOTAL := 0.3*CIA + 0.7*FINAL;
    IF TOTAL >= 70 THEN
        GRADE := 'A';
    ELSIF (TOTAL >= 60) THEN
        GRADE := 'B';
    ELSIF (TOTAL >= 50) THEN
        GRADE := 'C';
    ELSIF (TOTAL >= 40) THEN
        GRADE := 'D';
    ELSE
        GRADE := 'E';
    END IF;
    DBMS_OUTPUT.PUT_LINE('Roll Number: '
        ||ROLL
        ||', Name: '
        ||NAME
        ||', CIA marks: '
        ||CIA
        ||', Final marks: '
        ||FINAL
        ||', Grade: '
        ||GRADE);
END;
/