select first_name, salary, commission_pct from employees order by commission_pct;
select first_name, salary, commission_pct from employees order by commission_pct NULLS FIRST;
select first_name, salary, commission_pct from employees order by commission_pct ASC NULLS FIRST;
select first_name, salary, commission_pct from employees order by commission_pct DESC;
select first_name, salary, commission_pct from employees order by commission_pct DESC NULLS LAST;