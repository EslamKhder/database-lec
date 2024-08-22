SELECT job_id, department_id, avg(salary) FROM employees
GROUP BY job_id;

SELECT job_id, department_id, avg(salary) FROM employees
GROUP BY job_id, department_id;

SELECT job_id, avg(salary) FROM employees
GROUP BY job_id;

SELECT avg(salary) FROM employees
GROUP BY job_id;

SELECT job_id, avg(salary) FROM employees
GROUP BY job_id, department_id;

SELECT job_id, sum(salary), max(hire_date), count(*) FROM employees
GROUP BY job_id, department_id;

SELECT job_id, sum(salary), max(hire_date), count(*) FROM employees
GROUP BY job_id;

SELECT job_id, sum(salary), max(hire_date), count(*) FROM employees
WHERE job_id IN ('IT_PROG','ST_MAN','AC_ACCOUNT')
GROUP BY job_id;