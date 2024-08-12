SELECT * FROM employees WHERE 1=2;

CREATE TABLE employees_copy AS SELECT * FROM employees;
CREATE TABLE employees_copy2 AS SELECT * FROM employees;
SELECT * FROM employees;
SELECT * FROM employees_copy2;

CREATE TABLE employees_copy3 AS 
    SELECT * FROM employees WHERE 1=2;
SELECT * FROM employees_copy3;

CREATE TABLE employees_copy4 AS 
    SELECT * FROM employees WHERE job_id = 'IT_PROG';
SELECT * FROM employees_copy4;

CREATE TABLE employees_copy5 AS 
    SELECT first_name, last_name, salary FROM employees;
SELECT * FROM employees_copy5;

CREATE TABLE employees_copy6 AS 
    SELECT first_name, last_name l_name, salary FROM employees;
SELECT * FROM employees_copy6;

CREATE TABLE employees_copy7 (name, surname) AS 
    SELECT first_name, last_name l_name FROM employees;
	
CREATE TABLE employees_copy7 (name, surname, annual_salary) AS 
    SELECT first_name, last_name l_name, salary*12 FROM employees;
	
SELECT * FROM employees_copy7;