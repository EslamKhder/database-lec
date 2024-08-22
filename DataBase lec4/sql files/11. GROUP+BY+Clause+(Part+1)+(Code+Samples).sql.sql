SELECT avg(salary) FROM employees;

SELECT avg(salary) FROM employees WHERE job_id = 'IT_PROG';

SELECT avg(salary) FROM employees WHERE job_id = 'IT_PROG' or job_id = 'SA_REP';

SELECT job_id, avg(salary) FROM employees
GROUP BY job_id;

SELECT job_id, avg(salary) FROM employees
GROUP BY job_id
ORDER BY avg(salary);

SELECT job_id, avg(salary) FROM employees
GROUP BY job_id
ORDER BY avg(salary) DESC;

SELECT job_id, department_id, avg(salary) FROM employees
GROUP BY job_id, department_id;

SELECT job_id, department_id, avg(salary), count(*) FROM employees
GROUP BY job_id, department_id
ORDER BY count(*) DESC;

SELECT job_id, department_id, manager_id, avg(salary), count(*) FROM employees
GROUP BY job_id, department_id, manager_id
ORDER BY count(*) DESC;

SELECT job_id, department_id, avg(salary), count(*) FROM employees
GROUP BY department_id, job_id, manager_id;