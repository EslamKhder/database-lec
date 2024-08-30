SELECT e.first_name, e.last_name, d.manager_id, d.department_name 
FROM employees e JOIN departments d
ON(e.department_id = d.department_id AND e.manager_id = d.manager_id);

SELECT e.first_name, e.last_name, d.manager_id, d.department_name 
FROM employees e INNER JOIN departments d
ON(e.department_id = d.department_id AND e.manager_id = d.manager_id);