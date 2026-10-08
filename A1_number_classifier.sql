DECLARE
    num NUMBER := 10;
BEGIN
    IF num > 0 THEN
        GOTO positive_number;
    ELSIF num < 0 THEN
        GOTO negative_number;
    ELSE
        GOTO zero_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is positive.');
    GOTO finish;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('The number is negative.');
    GOTO finish;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('The number is zero.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Classification finished.');

END;
/