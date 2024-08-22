SELECT first_name, last_name, job_id, salary, CASE job_id 
                             		  WHEN 'ST_CLERK' THEN salary * 1.2
       					  WHEN 'SA_REP'   THEN salary * 1.3
       					  WHEN 'IT_PROG'  THEN salary * 1.4
       				       	  ELSE 0 
    				         END "UPDATED SALARY"
FROM employees;

--Example 2:
SELECT first_name, last_name, job_id, salary, 
    CASE job_id 
       WHEN 'ST_CLERK' THEN salary * 1.2
       WHEN 'SA_REP'   THEN salary * 1.3
       WHEN 'IT_PROG'  THEN salary * 1.4
       ELSE salary 
    END "UPDATED SALARY"
FROM employees;

--Example 3:
SELECT first_name, last_name, job_id, salary, 
    CASE
       WHEN job_id = 'ST_CLERK' THEN salary*1.2
       WHEN job_id = 'SA_REP'   THEN salary*1.3
       WHEN job_id = 'IT_PROG'  THEN salary*1.4
       ELSE salary 
    END "UPDATED SALARY"
FROM employees;

--Example 4:
SELECT first_name, last_name, job_id, salary, 
    CASE    WHEN job_id = 'ST_CLERK' THEN salary*1.2
            WHEN job_id = 'SA_REP'   THEN salary*1.3
            WHEN job_id = 'IT_PROG'  THEN salary*1.4
            WHEN last_name = 'King'  THEN 2*salary
            ELSE salary END "UPDATED SALARY"
FROM employees;

--Example 5:
SELECT first_name, last_name, job_id, salary, 
    CASE    
       WHEN job_id = 'AD_PRES'  THEN salary*1.2
       WHEN job_id = 'SA_REP'   THEN salary*1.3
       WHEN job_id = 'IT_PROG'  THEN salary*1.4
       WHEN last_name = 'King'  THEN 2*salary
       ELSE salary 
    END "UPDATED SALARY"
FROM employees;
--Example 6:

SELECT first_name, last_name, job_id, salary 
FROM employees 
WHERE (CASE 
          WHEN job_id = 'IT_PROG' AND salary > 5000 THEN 1
          WHEN job_id = 'SA_MAN' AND salary > 10000 THEN 1
          ELSE 0 
       END) = 1;