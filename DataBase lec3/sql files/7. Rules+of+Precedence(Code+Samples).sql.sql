SELECT first_name, last_name, job_id, salary FROM employees 
WHERE (job_id = 'IT_PROG' or job_id = 'ST_CLERK') and salary > 5000;

SELECT first_name, last_name, job_id, salary FROM employees 
WHERE job_id = 'IT_PROG' or (job_id = 'ST_CLERK' and salary > 5000);

SELECT first_name, last_name, job_id, salary FROM employees 
WHERE job_id = 'IT_PROG' or job_id = 'ST_CLERK' and salary > 5000;

SELECT first_name, last_name, department_id, salary
FROM employees
WHERE salary > 10000 AND department_id = 20 OR department_id = 30;

SELECT first_name, last_name, department_id, salary
FROM employees
WHERE salary > 10000 AND (department_id = 20 OR department_id = 30);