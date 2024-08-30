DROP TABLE managers;
DROP TABLE employees_copy;
CREATE TABLE employees_copy AS SELECT * FROM employees;

ALTER TABLE employees_copy ADD CONSTRAINT emp_cpy_email_uk UNIQUE (email);
ALTER TABLE employees_copy ADD CONSTRAINT emp_cpy_names_uk UNIQUE (first_name, last_name);
ALTER TABLE employees_copy ADD UNIQUE (phone_number);
ALTER TABLE employees_copy ADD CHECK (salary > 10000);
ALTER TABLE employees_copy ADD CHECK (salary > 1000);
ALTER TABLE employees_copy ADD CONSTRAINT emp_cpy_emp_id_pk PRIMARY KEY (employee_id);
ALTER TABLE employees_copy ADD CONSTRAINT emp_cpy_dept_fk FOREIGN KEY (department_id) REFERENCES departments(department_id);
ALTER TABLE employees_copy MODIFY salary CONSTRAINT emp_cpy_salary_nn NOT NULL;
ALTER TABLE employees_copy MODIFY last_name NOT NULL;
ALTER TABLE employees_copy MODIFY first_name NOT NULL;