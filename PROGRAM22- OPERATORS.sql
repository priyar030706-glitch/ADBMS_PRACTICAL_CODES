DECLARE
    a NUMBER := &a;
    b NUMBER := &b;
    c NUMBER;
BEGIN
    -- Arithmetic Operators
    DBMS_OUTPUT.PUT_LINE('Addition = ' || (a + b));
    DBMS_OUTPUT.PUT_LINE('Subtraction = ' || (a - b));
    DBMS_OUTPUT.PUT_LINE('Multiplication = ' || (a * b));
    DBMS_OUTPUT.PUT_LINE('Division = ' || (a / b));
    DBMS_OUTPUT.PUT_LINE('Remainder = ' || MOD(a, b));

    -- Relational Operators
    IF a > b THEN
        DBMS_OUTPUT.PUT_LINE('a is greater than b');
    END IF;

    IF a = b THEN
        DBMS_OUTPUT.PUT_LINE('a is equal to b');
    END IF;

    -- Logical Operator
    IF a > 0 AND b > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Both numbers are positive');
    END IF;

    -- Assignment Operator
    c := a + b;
    DBMS_OUTPUT.PUT_LINE('Assigned value = ' || c);
END;
/
