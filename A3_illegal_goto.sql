DECLARE
    num NUMBER := 10;
BEGIN
    GOTO inside_if;

    IF num > 0 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Positive number');
    END IF;
END;
/