SELECT * FROM employees;

SELECT first_name, last_name, department_name 
FROM employees JOIN departments
USING(department_id);

SELECT * FROM departments;

SELECT d.department_id, d.department_name, e.first_name, e.last_name 
FROM departments d JOIN employees e
ON (d.manager_id = e.employee_id);
