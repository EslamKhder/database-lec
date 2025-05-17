SELECT first_name, SUBSTR(first_name,3,6), SUBSTR(first_name,3),
    last_name, LENGTH(last_name)
    FROM employees;
	
SELECT CONCAT(first_name,last_name)
    FROM employees;
	
SELECT CONCAT(CONCAT(first_name,last_name),employee_id)
    FROM employees;
SELECT first_name || last_name || employee_id
    FROM employees;
SELECT INSTR('I am learning how to use functions in Oracle', 'o', 17, 3) FROM dual; 
SELECT INSTR('I am learning how to use functions in Oracle', 'o', 1, 3) FROM dual;
SELECT INSTR('I am learning how to use functions in Oracle', 'o', -1, 3) FROM dual;
SELECT INSTR('I am learning how to use functions in Oracle', 'o', -1, 1) FROM dual;
SELECT INSTR('I am learning how to use functions in Oracle', 'in', -1, 1) FROM dual;
SELECT INSTR('I am learning how to use functions in Oracle', 'in', 1, 1) FROM dual;
SELECT first_name,INSTR(first_name,'a') from employees;

SELECT TRIM ('     My Name is Adam   ') trm from dual;
SELECT TRIM (' ' FROM '     My Name is Adam   ') trm from dual;
SELECT TRIM (BOTH ' ' FROM '     My Name is Adam   ') trm from dual;
SELECT TRIM (LEADING ' ' FROM '     My Name is Adam   ') trm from dual;
SELECT TRIM (TRAILING ' ' FROM '     My Name is Adam   ') trm from dual;
SELECT TRIM (TRAILING 'm' FROM '     my Name is Adam   ') trm from dual;
SELECT TRIM (TRAILING 'm' FROM 'my Name is Adam') trm from dual;
SELECT TRIM (TRAILING 'm' FROM 'my Name is Adammmmm') trm from dual;
SELECT TRIM (LEADING 'm' FROM 'my Name is Adam') trm from dual;
SELECT TRIM (BOTH 'm' FROM 'my Name is Adam') trm from dual;
SELECT TRIM ('m' FROM 'my Name is Adam') trm from dual;
SELECT TRIM ('m' FROM 'my Name is Ada') trm from dual;
SELECT TRIM (TRAILING 'm' FROM 'my Name is Ada') trm from dual;
SELECT TRIM (TRAILING 'my' FROM 'my Name is Ada') trm from dual;

SELECT RTRIM ('  my Name is Adam  ') trm from dual;
SELECT LTRIM ('  my Name is Adam  ') trm from dual;
SELECT LTRIM ('  my Name is Adam  ', 'my') trm from dual;
SELECT LTRIM ('my Name is Adam', 'my') trm from dual;
SELECT RTRIM ('my Name is Adam', 'my') trm from dual;
SELECT RTRIM ('my Name is Adammmm', 'my') trm from dual;
SELECT LTRIM ('www.mywebsite.com', 'w.') trm from dual;
SELECT LTRIM ('234234217www.mywebsite.com', '0123456789') trm from dual;

select first_name, replace(first_name,'a') rpl from employees;
select first_name, replace(first_name,'a','-') rpl from employees;
select first_name, replace(first_name,'le','-') rpl from employees;
select first_name, replace(first_name,'und','-') rpl from employees;

select first_name, LPAD(first_name,10,'*') pad from employees;
select first_name, RPAD(first_name,10,'*') pad from employees;
select first_name, RPAD(first_name,6,'*') pad from employees;
select first_name, LPAD(first_name,6,'*') pad from employees;
select first_name, LPAD('My name is ',20,'-') pad from employees;
select first_name, LPAD('My name is '||last_name ,20,'-') pad from employees;