DROP TABLE employees_copy;
CREATE TABLE employees_copy AS SELECT * FROM employees;

SELECT * FROM employees_copy;

UPDATE employees_copy 
SET salary = 500;

SELECT * FROM employees_copy WHERE job_id = 'IT_PROG';

UPDATE employees_copy 
SET salary = 50000
WHERE job_id = 'IT_PROG';

UPDATE employees_copy 
SET salary = 5, department_id = null
WHERE job_id = 'IT_PROG';

