PL/SQL Functions Assignment
Individual Assignment III — PL/SQL GOTO Statements and Functions

Student: Sano Gervais

ID:20251SEN160

Course: PL/SQL

Database: Oracle 21c

Language: PL/SQL

1. Introduction

This assignment focuses on important PL/SQL programming concepts using Oracle Database 21c.

The main topics covered are:

GOTO statements,
User-defined functions,
Functions in SQL statements,
Testing PL/SQL functions,
Payroll-related calculations,
Error handling and validation,

The purpose of the assignment is to understand how PL/SQL programs can process data, return values, and work together with SQL queries.

2. Assignment Objectives

The objectives of this assignment are to:

1. Understand how the GOTO statement works in PL/SQL.
2. Understand how to create and use functions.
3. Create functions that return calculated values.
4. Use functions inside SQL SELECT statements.
5. Test functions with different inputs.
6. Handle errors such as missing departments.
7. Understand the difference between using PL/SQL logic and SQL queries.

Part A — GOTO

Part A focuses on the PL/SQL GOTO statement.

The tasks include:

[A1 — Number Classifier](A1_number_classifier.sql)

A PL/SQL program was created to classify a number based on its value.

[A2 — Salary Review](A2_salary_review.sql)

A salary was evaluated using PL/SQL conditions and GOTO.

[A3 — Illegal](A3_illegal_goto.sql) GOTO [and Fix](A3_fixl_goto.sql)

An example of an invalid GOTO statement was studied and corrected.

This helped demonstrate that a GOTO statement must follow PL/SQL rules.

A4 — Rewrite Without GOTO

The program was rewritten without using GOTO.

This shows that normal PL/SQL structures such as:

IF
ELSIF
ELSE

can often make programs easier to understand and maintain.

[4. Part B — Functions](A4_rewrite_no_goto.sql)

Part B focuses on creating user-defined functions.

[B1 — Annual Salary](B1_fn_annual_salary.sql)

The annual_salary function receives a monthly salary and calculates the yearly salary.

Annual Salary = Monthly Salary × 12

[B2 — Years of Service](B2_fn_years_of_service.sql)

The years_of_service function receives an employee's hire date and calculates the completed years of service.

[B3 — Tax Calculator](B3_fn_calculate_tax.sql)

The calculate_tax function calculates tax according to the defined salary ranges.

[B4 — Department Name](B4_fn_dept_name.sql.sql)

The get_department_name function receives a department ID and returns the department name.

It also handles the situation where the department does not exist.

[B5 — Functions in SQL](B5_functions_in_select.sql)

The created functions were used directly inside SQL SELECT statements.

Example:

SELECT annual_salary(500000)
FROM dual;

Functions can also be used with table data when the required columns exist.

5. Testing

The assignment contains separate test files for checking the functions.

03_tests/
[B5_functions_in_select.sql](B5_functions_in_select.sql)

[test_functions.sql](Test_of_B2_fn_years_of_service.sql)

[test_validate_payroll.sql](test_validate_payroll.sql)

**B5_functions_in_select.sq**

This file demonstrates how functions can be used inside SELECT statements.

**test_functions.sql**

This file tests the individual functions with different values.

**test_validate_payroll.sql**

This file combines payroll-related calculations such as:

Monthly salary

Annual salary

Tax

Salary after tax

The tests help confirm that the functions return the expected results.

**6. Error Encountered and Fix
**
During testing, the following Oracle error was encountered:

[ORA-00904](A3_error.PNG): "SALARY": invalid identifier

The error happened because the SQL query referenced a column called salary that was not available in the employees table.

The table structure was checked using:

DESC employees;

The query was then corrected to use the actual salary column available in the database.

This helped me understand that column names in SQL must exactly match the columns defined in the table.

7. Reflection

Through this assignment, I improved my understanding of PL/SQL functions and how they work with SQL.

I learned that a function is useful when I need to perform an operation and return one value. For example, the annual_salary function can receive a monthly salary and return the yearly salary.

I also learned how functions can be called directly inside SQL SELECT statements. This makes it possible to combine PL/SQL logic with database queries.

The GOTO section helped me understand how program execution can be moved to another labeled section. However, I also learned that using normal structures such as IF, ELSIF, and ELSE can make the code easier to read and maintain.

The testing part was also important. When I received the ORA-00904 error, I learned that SQL queries must use the correct column names from the database table. Using DESC employees; helped me check the table structure and identify the problem.

Overall, this assignment improved my ability to create, test, and troubleshoot PL/SQL programs in Oracle Database 21c.

8. Conclusion

This assignment provided practical experience with Oracle PL/SQL.

I practiced:

Creating PL/SQL programs

Using GOTO

Creating user-defined functions

Returning values from functions

Using functions in SQL

Testing functions

Handling errors

Debugging SQL errors

The knowledge gained from this assignment will help me build more reliable and reusable PL/SQL programs in future database projects.

9. Technologies Used
    
Oracle Database 21c

SQL

PL/SQL

SQL Developer / SQL*Plus

GitHub

**10. Project Structure**

├── README.md

├── .gitignore

├── 00_setup/

│ └── create_tables.sql

├── 01_goto/

│ ├── A1_number_classifier.sql

│ ├── A2_salary_review.sql

│ ├── A3_illegal_goto.sql

│ └── A4_rewrite_no_goto.sql

├── 02_functions/

│ ├── B1_fn_annual_salary.sql

│ ├── B2_fn_years_of_service.sql

│ ├── B3_fn_calculate_tax.sql

│ ├── B4_fn_dept_name.sql

│ └── C1_fn_validate_payroll.sql

├── 03_tests/

│ ├── B5_functions_in_select.sql

│ ├── test_functions.sql

│ └── test_validate_payroll.sql

├── screenshots/

│ ├── [A1_output.png](A1_output.PNG)

│ ├── [A2_output.png](A2_output.PNG)

│ ├── [A3_error.png](A3_error.PNG)_[and_fix.png](3_fix.PNG)

│ ├── [A4_output.png](A4_output.PNG)

│ ├── [B5_select_output.png](B5_select_output.PNG)

│ └── [C1_output.png](C1_output.PNG)

└── docs/

 └── REFLECTION.md
