CREATE TABLE employees_copy AS SELECT * FROM employees;

ALTER TABLE employees_copy RENAME CONSTRAINT SYS_C008743 TO email_nn;