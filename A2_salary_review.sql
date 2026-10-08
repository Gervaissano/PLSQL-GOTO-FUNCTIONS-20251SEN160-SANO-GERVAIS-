DECLARE
    salary NUMBER := 500000;
BEGIN
    IF salary < 300000 THEN
        GOTO low_salary;
    ELSIF salary <= 700000 THEN
        GOTO normal_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is low.');
    GOTO finish;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is normal.');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is high.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

END;
/