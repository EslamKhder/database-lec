SELECT * FROM employees;
SELECT employee_id, salary, salary*12 as annual_salary FROM employees;
SELECT employee_id, salary, salary+100*12 as annual_salary FROM employees;
SELECT employee_id, salary, (salary+100)*12 as annual_salary FROM employees;
SELECT sysdate FROM dual; -- dual is table jsut run this query
SELECT sysdate + 4 FROM dual;
SELECT employee_id, hire_date, hire_date+5 FROM employees;
SELECT salary, salary*commission_pct, commission_pct FROM employees;