DECLARE
    n NUMBER := &n;
    temp NUMBER;
    digit NUMBER;
    rev NUMBER := 0;
BEGIN
    temp := n;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        rev := (rev * 10) + digit;
        temp := TRUNC(temp / 10);
    END LOOP;

    IF rev = n THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is a Palindrome');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not a Palindrome');
    END IF;
END;
/
