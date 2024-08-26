DROP TABLE managers;
CREATE TABLE managers
    (manager_id     NUMBER CONSTRAINT mgr_mid_uk UNIQUE,
     first_name     VARCHAR2(50),
     last_name      VARCHAR2(50),
     department_id  NUMBER NOT NULL,
     phone_number   VARCHAR2(11) UNIQUE NOT NULL,
     email          VARCHAR2(100),
     UNIQUE(email),
     CONSTRAINT mgr_composite_uq UNIQUE(department_id, first_name, last_name)
);

SELECT * FROM employees;
SELECT * FROM employees_copy;

CREATE TABLE managers
    (manager_id   NUMBER CONSTRAINT mgr_mid_pk PRIMARY KEY,
     first_name    VARCHAR2(50),
     last_name     VARCHAR2(50),
     department_id NUMBER NOT NULL,
     phone_number  VARCHAR2(11) UNIQUE NOT NULL,
     email VARCHAR2(100),
     UNIQUE (email),
     CONSTRAINT mgr_emp_fk FOREIGN KEY (manager_id) REFERENCES employees_copy (employee_id)
);
DROP TABLE employees_copy;
CREATE TABLE employees_copy 
(
employee_id 	NUMBER(6) CONSTRAINT emp_cpy_eid_pk PRIMARY KEY,
       first_name 	VARCHAR2(20),
       last_name 	VARCHAR2(20),
       department_id 	NUMBER(4)
);
INSERT INTO employees_copy 
SELECT employee_id, first_name, last_name, department_id
        FROM employees;

SELECT * FROM employees_copy;
INSERT INTO managers VALUES (80, 'John', 'King', 90, '123-456-789','jking');
INSERT INTO managers VALUES (100, 'John', 'King', 90, '123-456-789','jking');
UPDATE managers 
SET manager_id = 70 
WHERE manager_id = 100;

DELETE FROM employees_copy 
WHERE employee_id = 100;

UPDATE employees_copy 
SET employee_id = 80 
WHERE employee_id = 100;

UPDATE managers 
SET manager_id = 101 
WHERE manager_id = 100;

UPDATE managers 
SET manager_id = NULL;

CREATE TABLE managers
    (manager_id    	NUMBER CONSTRAINT mgr_mid_uq UNIQUE,
     first_name    	VARCHAR2(50),
     last_name     	VARCHAR2(50),
     department_id 	NUMBER NOT NULL,
     phone_number  	VARCHAR2(11) UNIQUE NOT NULL,
     email 		VARCHAR2(100),
     UNIQUE (email),
     CONSTRAINT mgr_emp_fk FOREIGN KEY (manager_id) REFERENCES employees_copy (employee_id));

INSERT INTO managers values (103, 'John', 'King', 90, '123-456-789','jking');

CREATE TABLE managers
    (manager_id    	NUMBER CONSTRAINT mgr_mid_uq UNIQUE,
     first_name    	VARCHAR2(50),
     last_name     	VARCHAR2(50),
     department_id 	NUMBER NOT NULL,
     phone_number  	VARCHAR2(11) UNIQUE NOT NULL,
     email 		VARCHAR2(100),
     UNIQUE (email),
     CONSTRAINT mgr_emp_fk FOREIGN KEY (manager_id) REFERENCES employees_copy (employee_id),
     CONSTRAINT mgr_names_fk FOREIGN KEY (first_name, last_name) REFERENCES employees_copy(first_name, last_name)
     );

CREATE TABLE employees_copy (employee_id NUMBER(6) CONSTRAINT emp_cpy_eid_pk PRIMARY KEY,
                             first_name VARCHAR(20),
                             last_name VARCHAR(20),
                             department_id NUMBER(4),
                             CONSTRAINT emp_cpy_names_uk UNIQUE (first_name, last_name));