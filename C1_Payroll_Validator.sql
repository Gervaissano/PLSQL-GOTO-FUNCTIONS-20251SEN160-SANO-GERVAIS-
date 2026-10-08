SET SERVEROUTPUT ON;

DECLARE
    monthly_salary NUMBER := 500000;
    yearly_salary NUMBER;
    tax_amount NUMBER;
    net_salary NUMBER;
BEGIN
    IF monthly_salary <= 0 THEN
        DBMS_OUTPUT.PUT_LINE('Invalid salary.');
    ELSE
        yearly_salary := annual_salary(monthly_salary);
        tax_amount := calculate_tax(monthly_salary);
        net_salary := monthly_salary - tax_amount;

        DBMS_OUTPUT.PUT_LINE('Payroll Information');
        DBMS_OUTPUT.PUT_LINE('-------------------');
        DBMS_OUTPUT.PUT_LINE('Monthly Salary: ' || monthly_salary || ' RWF');
        DBMS_OUTPUT.PUT_LINE('Annual Salary: ' || yearly_salary || ' RWF');
        DBMS_OUTPUT.PUT_LINE('Tax: ' || tax_amount || ' RWF');
        DBMS_OUTPUT.PUT_LINE('Net Monthly Salary: ' || net_salary || ' RWF');
    END IF;
END;
/