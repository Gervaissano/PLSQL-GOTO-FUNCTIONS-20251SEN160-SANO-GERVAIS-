SET SERVEROUTPUT ON;

DECLARE
    salary NUMBER := 500000;
BEGIN
    IF salary < 300000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary is low.');

    ELSIF salary <= 700000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary is normal.');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary is high.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

END;
/