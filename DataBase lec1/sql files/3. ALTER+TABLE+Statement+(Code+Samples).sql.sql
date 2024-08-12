
CREATE TABLE my_employees (employee_id NUMBER(3), first_name VARCHAR2(50), hire_date DATE DEFAULT sysdate);

CREATE TABLE my_employees (employee_id NUMBER(3), first_name VARCHAR2(50), hire_date DATE DEFAULT sysdate, phone VARCHAR2(20));


ALTER TABLE employees_copy ADD ssn varchar2(11);

SELECT * FROM employees_copy;

ALTER TABLE employees_copy
ADD (fax_number VARCHAR2(11), birth_date DATE, password VARCHAR2(10) DEFAULT 'abc1234');

ALTER TABLE employees_copy MODIFY passwordd VARCHAR2(50);

ALTER TABLE employees_copy MODIFY (fax_number VARCHAR2(11) DEFAULT '-', password VARCHAR2(10));

ALTER TABLE employees_copy MODIFY (fax_number VARCHAR2(11) DEFAULT NULL, password VARCHAR2(10) NOT NULL);

ALTER TABLE employees_copy MODIFY (fax_number VARCHAR2(11) DEFAULT NULL, password VARCHAR2(10) DEFAULT '0000');

ALTER TABLE employees_copy DROP COLUMN ssn;

ALTER TABLE employees_copy DROP (fax_number, password);

ALTER TABLE employees_copy DROP (birth_date);