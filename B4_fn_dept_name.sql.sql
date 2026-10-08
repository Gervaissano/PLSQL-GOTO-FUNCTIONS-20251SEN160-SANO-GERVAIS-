CREATE OR REPLACE FUNCTION get_department_name(
    p_department_id NUMBER
)
RETURN VARCHAR2
IS
    v_department_name VARCHAR2(100);
BEGIN
    SELECT department_name
    INTO v_department_name
    FROM departments
    WHERE department_id = p_department_id;

    RETURN v_department_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Department Not Found';
END;
/