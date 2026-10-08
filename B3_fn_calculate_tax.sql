CREATE OR REPLACE FUNCTION calculate_tax (
    salary NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN salary * 0.20;
END;
/