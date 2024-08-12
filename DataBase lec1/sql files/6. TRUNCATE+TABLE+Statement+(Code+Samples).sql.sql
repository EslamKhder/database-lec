
SELECT * FROM employees_copy;
DELETE FROM employees_copy;
TRUNCATE TABLE employees_copy;
DROP TABLE employees_copy;

CREATE TABLE employees_test AS SELECT * FROM employees;

SELECT COUNT(*) FROM employees_test;

DELETE FROM employees_test;

TRUNCATE TABLE employees_test;

DROP TABLE employees_test;