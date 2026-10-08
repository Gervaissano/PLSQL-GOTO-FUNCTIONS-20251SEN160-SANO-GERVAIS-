SET SERVEROUTPUT ON;

DECLARE
    num NUMBER := 10;
BEGIN
    IF num > 0 THEN
        GOTO positive;
    END IF;

    GOTO finish;

    <<positive>>
    DBMS_OUTPUT.PUT_LINE('Positive number');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Program finished.');

END;
/