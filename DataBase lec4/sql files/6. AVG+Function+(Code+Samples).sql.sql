SELECT avg(salary) FROM employees;

SELECT avg(salary), avg(salary)
FROM employees WHERE job_id = 'IT_PROG';

SELECT avg(salary)
FROM employees WHERE job_id = 'IT_PROG';

SELECT avg(commission_pct) FROM employees;

SELECT avg(commission_pct), avg(nvl(commission_pct,0)) FROM employees;