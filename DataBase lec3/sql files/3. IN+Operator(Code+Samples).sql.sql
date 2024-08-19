SELECT * FROM employees 
    WHERE employee_id IN (50, 100, 65, 210)
SELECT * FROM employees 
    WHERE employee_id IN (50, 100, 65, 210, 150);
SELECT * FROM employees 
    WHERE first_name IN ('Steven', 'Peter', 'Adam');
SELECT * FROM employees 
    WHERE first_name IN ('Steven', 'Peter', 'Adam', 'aa');
SELECT * FROM employees 
    WHERE hire_date IN ('08-MAR-08', '30-JAN-05');