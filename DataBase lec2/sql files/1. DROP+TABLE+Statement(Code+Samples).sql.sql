SELECT * FROM employees_copy6;

DROP TABLE employees_copy6;

DROP TABLE employees_copy5;

DROP TABLE employees_copy3, employees_copy4;

DROP employees_copy3, employees_copy4;

DROP TABLES employees_copy3, employees_copy4;

SELECT * FROM employees_copy4;

DROP TABLE employees_copy4;

FLASHBACK TABLE employees_copy4 TO BEFORE DROP;

DROP TABLE employees_copy4 PURGE;
