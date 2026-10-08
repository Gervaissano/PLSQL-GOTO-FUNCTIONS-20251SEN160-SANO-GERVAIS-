-- Validate payroll calculations
SELECT employee_id,
       monthly_salary,
       annual_salary(monthly_salary) AS annual_salary,
       calculate_tax(monthly_salary) AS tax,
       annual_salary(monthly_salary) - calculate_tax(monthly_salary)
           AS salary_after_tax
FROM employees;