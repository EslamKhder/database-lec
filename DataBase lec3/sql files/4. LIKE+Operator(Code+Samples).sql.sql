SELECT * FROM employees;
SELECT * FROM employees WHERE job_id = 'SA_REP';
SELECT * FROM employees WHERE job_id LIKE 'SA_REP';
SELECT * FROM employees WHERE job_id LIKE 'SA%';
SELECT * FROM employees WHERE first_name LIKE 'A%';
SELECT * FROM employees WHERE first_name LIKE '%A';
SELECT * FROM employees WHERE first_name LIKE '%a';
SELECT * FROM employees WHERE first_name LIKE '%a%';
SELECT * FROM employees WHERE first_name LIKE '_r%';