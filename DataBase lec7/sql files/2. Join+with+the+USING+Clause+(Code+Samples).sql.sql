SELECT * FROM employees NATURAL JOIN departments;

SELECT * FROM employees JOIN departments
USING(department_id);

SELECT * FROM employees JOIN departments
USING(department_id, manager_id);