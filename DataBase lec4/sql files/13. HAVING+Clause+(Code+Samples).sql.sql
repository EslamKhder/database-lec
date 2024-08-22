
SELECT job_id, avg(salary) FROM employees
GROUP BY job_id;

SELECT job_id, avg(salary) FROM employees
WHERE avg(salary) > 10000
GROUP BY job_id;

SELECT job_id, avg(salary) FROM employees
GROUP BY job_id
HAVING avg(salary) > 10000;

SELECT job_id, avg(salary) FROM employees
HAVING avg(salary) > 10000
GROUP BY job_id;

SELECT job_id, avg(salary) FROM employees
WHERE hire_date > '28-MAY-05'
GROUP BY job_id
HAVING avg(salary) > 10000;

SELECT job_id, avg(salary) FROM employees
WHERE manager_id = 101
GROUP BY job_id
HAVING avg(salary) > 10000;

SELECT job_id, avg(salary) FROM employees
WHERE salary > 5000
GROUP BY job_id
--HAVING avg(salary) > 10000;
/
SELECT job_id, avg(salary) FROM employees
--WHERE salary > 10000
GROUP BY job_id
HAVING avg(salary) > 5000;