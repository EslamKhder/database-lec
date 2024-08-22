SELECT DECODE (1, 1,'One', 2,'Two') result FROM dual;

SELECT DECODE (25, 1,'One', 2,'Two',3,'Three','Not Found') result FROM dual;

SELECT first_name, last_name, job_id, salary,
       DECODE(job_id,'ST_CLERK',salary*1.20,
                     'SA_REP'  ,salary*1.30,
                     'IT_PROG' ,salary*1.50 ) as updated_salary
FROM EMPLOYEES;

SELECT first_name, last_name, job_id, salary,
       DECODE(job_id,'ST_CLERK', salary*1.20,
                     'SA_REP'  , salary*1.30,
                     'IT_PROG' , salary*1.50,
                      salary) as updated_salary
FROM EMPLOYEES;

