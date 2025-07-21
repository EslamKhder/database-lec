SELECT first_name, hire_date FROM employees;

SELECT first_name, hire_date, to_char(hire_date,'YYYY') "Formatted Date" FROM employees;

-- 2004   2005   2006
SELECT first_name, hire_date, to_char(hire_date,'YYYY') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'yyyy') "Formatted Date" FROM employees;

SELECT first_name, hire_date, to_char(hire_date,'YEAR') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'year') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Year') "Formatted Date" FROM employees;

SELECT first_name, hire_date, to_char(hire_date,'MM') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'MONTH') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'MON') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'mon') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Mon') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'month') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Month') "Formatted Date" FROM employees;

SELECT first_name, hire_date, to_char(hire_date,'DD') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'DAY') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'DY') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'dy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Dy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'day') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Day') "Formatted Date" FROM employees;


-- YYYY MON DY
SELECT first_name, hire_date, to_char(hire_date,'Day, Month DD') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'MM-YYYY') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'MON YYYY') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'MON-yyyy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'mon-yyyy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Mon-yyyy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'MONTH-yyyy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Month-yyyy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'DD-Month-yyyy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'DY-Month-yyyy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Dy-Month-yyyy') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Day-Month-yyyy') "Formatted Date" FROM employees;



SELECT first_name, hire_date FROM employees;
-- 2003-06-17 01:25:40.000
SELECT first_name, hire_date, to_char(hire_date,'Dy-Month-yyyy HH12') "Formatted Date" FROM employees;
SELECT first_name, hire_date, to_char(hire_date,'Dy-Month-yyyy HH24') "Formatted Date" FROM employees;

-- 12
-- 24



