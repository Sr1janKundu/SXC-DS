---As a DBA, you have been tasked with segregating the empluee details department-wse. This will enable department heads to manage their personner better. The master table, containing details of all employees from all departments, is provided to you.

DROP TABLE EMPLOYEE;

CREATE TABLE EMPLOYEE(
    EID INTEGER PRIMARY KEY,
    ENAME VARCHAR(100) NOT NULL,
    SALARY INTEGER NOT NULL,
    DNAME VARCHAR(20) NOT NULL
);

INSERT INTO EMPLOYEE VALUES(
    1,
    'ABC',
    4500,
    'Marketing'
);

INSERT INTO EMPLOYEE VALUES(
    2,
    'ABC',
    3500,
    'Marketing'
);

INSERT INTO EMPLOYEE VALUES(
    3,
    'XYZ',
    7500,
    'Analytics'
);

INSERT INTO EMPLOYEE VALUES(
    4,
    'DEF',
    2500,
    'Finance'
);

INSERT INTO EMPLOYEE VALUES(
    5,
    'PQR',
    5000,
    'Marketing'
);

INSERT INTO EMPLOYEE VALUES(
    6,
    'GHI',
    8000,
    'Analytics'
);

INSERT INTO EMPLOYEE VALUES(
    7,
    'FFF',
    6000,
    'Finance'
);

INSERT INTO EMPLOYEE VALUES(
    8,
    'DWT',
    5200,
    'Finance'
);

INSERT INTO EMPLOYEE VALUES(
    9,
    'FFT',
    2000,
    'Operations'
);

INSERT INTO EMPLOYEE VALUES(
    10,
    'DCT',
    3700,
    'Analytics'
);

DROP TABLE MARKETING;

DROP TABLE FINANCE;

DROP TABLE ANALYTICS;

DROP TABLE OPERATIONS;

CREATE TABLE MARKETING(
    EID INTEGER PRIMARY KEY,
    ENAME VARCHAR(100) NOT NULL,
    SALARY INTEGER NOT NULL
);

CREATE TABLE FINANCE(
    EID INTEGER PRIMARY KEY,
    ENAME VARCHAR(100) NOT NULL,
    SALARY INTEGER NOT NULL
);

CREATE TABLE ANALYTICS(
    EID INTEGER PRIMARY KEY,
    ENAME VARCHAR(100) NOT NULL,
    SALARY INTEGER NOT NULL
);

CREATE TABLE OPERATIONS(
    EID INTEGER PRIMARY KEY,
    ENAME VARCHAR(100) NOT NULL,
    SALARY INTEGER NOT NULL
);

DECLARE
    NOOFROWS INTEGER;
    DEPTNAME VARCHAR(20);
    LOOPVAR  INTEGER := 1;
    EMPNAME  VARCHAR(100);
    SAL      INTEGER;
BEGIN
    SELECT
        COUNT(*) INTO NOOFROWS
    FROM
        EMPLOYEE;
    WHILE LOOPVAR <= NOOFROWS LOOP
        SELECT
            DNAME INTO DEPTNAME
        FROM
            EMPLOYEE
        WHERE
            EID = LOOPVAR;
        SELECT
            ENAME INTO EMPNAME
        FROM
            EMPLOYEE
        WHERE
            EID = LOOPVAR;
        SELECT
            SALARY INTO SAL
        FROM
            EMPLOYEE
        WHERE
            EID = LOOPVAR;
        IF DEPTNAME = 'Marketing' THEN
            INSERT INTO MARKETING VALUES(
                LOOPVAR,
                EMPNAME,
                SAL
            );
        ELSIF DEPTNAME = 'Finance' THEN
            INSERT INTO FINANCE VALUES(
                LOOPVAR,
                EMPNAME,
                SAL
            );
        ELSIF DEPTNAME = 'Analytics' THEN
            INSERT INTO ANALYTICS VALUES(
                LOOPVAR,
                EMPNAME,
                SAL
            );
        ELSIF DEPTNAME = 'Operations' THEN
            INSERT INTO OPERATIONS VALUES(
                LOOPVAR,
                EMPNAME,
                SAL
            );
        END IF;
        LOOPVAR := LOOPVAR + 1;
    END LOOP;
END;
/