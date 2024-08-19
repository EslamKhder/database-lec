select employee_id, first_name, last_name, salary from employees order by first_name;
select employee_id, first_name, last_name, salary from employees order by first_name asc;
select employee_id, first_name, last_name, salary from employees order by first_name desc;
select employee_id, first_name, last_name, salary from employees order by first_name desc, last_name;
select employee_id, first_name, last_name, salary from employees order by first_name desc, last_name desc;
select employee_id, first_name, last_name, salary from employees order by first_name desc, salary desc;
select employee_id, first_name, last_name, salary s from employees order by first_name desc, s desc;
select employee_id, first_name, last_name, salary s from employees order by 2 desc, s desc;
select first_name, salary, commission_pct from employees order by commission_pct;