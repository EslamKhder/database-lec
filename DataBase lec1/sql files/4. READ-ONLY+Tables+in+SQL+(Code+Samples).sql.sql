CREATE TABLE emp_temp AS SELECT * FROM employees;

SELECT * FROM emp_temp;

ALTER TABLE emp_temp READ ONLY;

DELETE emp_temp;

ALTER TABLE emp_temp ADD gender VARCHAR2(1);

ALTER TABLE emp_temp DROP (gender);

DROP TABLE emp_temp;

ALTER TABLE emp_temp READ WRITE;