SELECT * FROM employees;
SELECT first_name, last_name, salary FROM employees ORDER BY first_name;
SELECT first_name, last_name, salary FROM employees ORDER BY last_name;
SELECT first_name, last_name, salary, (10*(salary/5) + 3000) - 100 NEW_SALARY
FROM employees ORDER BY NEW_SALARY;
SELECT first_name, last_name, salary, (10*(salary/5) + 3000) - 100 NEW_SALARY
FROM employees ORDER BY 1;
SELECT first_name, last_name, salary, (10*(salary/5) + 3000) - 100 NEW_SALARY
FROM employees ORDER BY 2;
SELECT *
FROM employees ORDER BY 2;
SELECT *
FROM employees ORDER BY 5;
SELECT *
FROM employees ORDER BY first_name, last_name;
SELECT *
FROM employees ORDER BY first_name, job_id, salary;