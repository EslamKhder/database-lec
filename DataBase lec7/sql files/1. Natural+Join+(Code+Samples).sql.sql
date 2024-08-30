SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM employees NATURAL JOIN departments;
SELECT * FROM departments NATURAL JOIN employees;
SELECT first_name, last_name, department_name FROM departments NATURAL JOIN employees;
