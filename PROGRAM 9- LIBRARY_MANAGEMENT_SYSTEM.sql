
SET SERVEROUTPUT ON;

CREATE TABLE library (
    bid NUMBER,
    bname VARCHAR2(30),
    status VARCHAR2(20)
);

INSERT INTO library VALUES (101, 'Java', 'Available');
INSERT INTO library VALUES (102, 'Python', 'Issued');
INSERT INTO library VALUES (103, 'DBMS', 'Available');

DECLARE
    b VARCHAR2(30);
    s VARCHAR2(20);
BEGIN
    SELECT bname, status INTO b, s
    FROM library
    WHERE bid = &id;

    IF s = 'Available' THEN
        DBMS_OUTPUT.PUT_LINE(b || ' is Available');
    ELSE
        DBMS_OUTPUT.PUT_LINE(b || ' is Issued');
    END IF;
END;
/
