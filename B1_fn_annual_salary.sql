CREATE OR REPLACE FUNCTION annual_salary (
    monthly_salary NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN monthly_salary * 12;
END;
/