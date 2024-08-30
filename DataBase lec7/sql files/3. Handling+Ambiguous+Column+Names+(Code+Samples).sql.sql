SELECT * FROM employees JOIN departments
USING(department_id);

SELECT first_name, last_name, department_name, manager_id FROM employees JOIN departments
USING(department_id);

SELECT first_name, last_name, department_name FROM employees JOIN departments
USING(department_id);

SELECT first_name, last_name, department_name, manager_id FROM employees JOIN departments
USING(department_id);

SELECT first_name, last_name, department_name, e.manager_id FROM employees e JOIN departments d
USING(department_id);

SELECT first_name, last_name, department_name, d.manager_id FROM employees e JOIN departments d
USING(department_id);

SELECT e.first_name, last_name, department_name, d.manager_id FROM employees e JOIN departments d
USING(department_id);

SELECT first_name, last_name, department_name, departments.manager_id FROM employees e JOIN departments d
USING(department_id);

SELECT first_name, last_name, department_name, departments.manager_id FROM employees e JOIN departments
USING(department_id);

SELECT first_name, last_name, department_name, departments.manager_id FROM employees e JOIN departments
USING(manager_id);

SELECT first_name, last_name, department_name, manager_id FROM employees e JOIN departments
USING(manager_id);

SELECT first_name, last_name, department_name, manager_id FROM employees e JOIN departments
USING(e.manager_id);