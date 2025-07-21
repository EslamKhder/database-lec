SELECT employee_id, first_name, last_name, salary,  rownum from employees;
SELECT employee_id, first_name, last_name, salary,  rownum from employees where department_id = 60;
SELECT employee_id, first_name, last_name, salary,  rownum from employees where department_id = 80;
SELECT employee_id, first_name, last_name, salary,  rownum from employees 
       WHERE department_id = 80 and rownum <= 5 order by salary desc;



-- search
SELECT employee_id, first_name, last_name, salary from employees WHERE rownum = 1;
SELECT employee_id, first_name, last_name, salary from employees WHERE rownum = 2;
SELECT employee_id, first_name, last_name, salary from employees WHERE rownum = 3;
SELECT employee_id, first_name, last_name, salary from employees WHERE rownum = 4;