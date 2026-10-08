SELECT
    employee_name,
    monthly_salary,
    annual_salary(monthly_salary) AS yearly_salary,
    years_of_service(hire_date) AS years_worked,
    calculate_tax(monthly_salary) AS tax,
    department_name(department_id) AS department
FROM employees;