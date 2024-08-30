SELECT * FROM employees;
SELECT first_name, last_name, department_id, department_name 
FROM employees JOIN departments 
USING(department_id);

SELECT first_name, last_name, department_id, department_name 
FROM employees LEFT OUTER JOIN departments 
USING(department_id);

SELECT e.first_name, e.last_name, d.department_id, d.department_name 
FROM employees e LEFT OUTER JOIN departments d
ON(e.department_id = d.department_id);

SELECT d.department_id, d.department_name, e.first_name, e.last_name
FROM departments d JOIN employees e
ON(e.department_id = d.department_id);

SELECT d.department_id, d.department_name, e.first_name, e.last_name
FROM departments d LEFT JOIN employees e
ON(e.department_id = d.department_id);
