SELECT first_name, last_name, department_name, city, postal_code, street_address
FROM employees e JOIN departments d
ON(e.department_id = d.department_id)
AND e.job_id = 'IT_PROG';
