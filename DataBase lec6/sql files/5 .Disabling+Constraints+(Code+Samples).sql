/DROP TABLE employees_copy;
DROP TABLE departments_copy;
CREATE TABLE departments_copy AS SELECT * FROM departments;
CREATE TABLE employees_copy AS SELECT * FROM employees;

ALTER TABLE departments_copy 
ADD CONSTRAINT dept_cpy_id_pk PRIMARY KEY(department_id);

ALTER TABLE employees_copy 
ADD CONSTRAINT emp_dept_copy_fk FOREIGN KEY(department_id) REFERENCES departments_copy (department_id);

UPDATE departments_copy 
SET department_name = null 
WHERE department_id = 10;

ALTER TABLE departments_copy 
DISABLE CONSTRAINT SYS_C008762;

UPDATE departments_copy 
SET department_id = 5 
WHERE department_id = 80;

ALTER TABLE departments_copy 
DISABLE CONSTRAINT dept_cpy_id_pk;

ALTER TABLE departments_copy 
ADD CONSTRAINT dept_cpy_id_pk PRIMARY KEY (department_id) DISABLE;