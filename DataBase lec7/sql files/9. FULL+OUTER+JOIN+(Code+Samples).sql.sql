SELECT first_name, last_name, department_name 
FROM employees e FULL OUTER JOIN departments d
ON(e.department_id = d.department_id);

SELECT first_name, last_name, department_name 
FROM employees e FULL JOIN departments d
ON(e.department_id = d.department_id);