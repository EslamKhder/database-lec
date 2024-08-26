DROP TABLE employees_copy;
DROP TABLE departments_copy;
CREATE TABLE employees_copy AS SELECT * FROM employees;
CREATE TABLE departments_copy AS SELECT * FROM departments;

ALTER TABLE departments_copy ADD CONSTRAINT dept_id_pk PRIMARY KEY (department_id); 
ALTER TABLE departments_copy ADD CONSTRAINT dept_cpy_id_pk PRIMARY KEY (department_id);
ALTER TABLE employees_copy 
ADD CONSTRAINT emp_dept_cpy_fk FOREIGN KEY (department_id) REFERENCES departments_copy (department_id);

ALTER TABLE departments_copy DROP COLUMN department_id; 
ALTER TABLE departments_copy DROP COLUMN department_id CASCADE CONSTRAINTS;
ALTER TABLE employees_copy ADD UNIQUE (first_name, last_name);
ALTER TABLE employees_copy DROP COLUMN last_name;
ALTER TABLE employees_copy DROP COLUMN last_name CASCADE CONSTRAINTS;