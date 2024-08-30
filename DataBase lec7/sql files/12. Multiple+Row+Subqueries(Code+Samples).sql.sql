SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE salary IN (14000,15000,10000);

SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE salary IN (SELECT min(salary) 
                    FROM employees
                    GROUP BY department_id);

SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE salary > ANY (SELECT salary 
                    FROM employees
                    WHERE job_id = 'SA_MAN');

SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE salary = ANY (SELECT salary 
                    FROM employees
                    WHERE job_id = 'SA_MAN');

SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE salary < ANY (SELECT salary 
                    FROM employees
                    WHERE job_id = 'SA_MAN');

SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE salary > ALL (SELECT salary 
                    FROM employees
                    WHERE job_id = 'SA_MAN');

SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE salary = ALL (SELECT salary 
                    FROM employees
                    WHERE job_id = 'SA_MAN');

SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE salary < ALL (SELECT salary 
                    FROM employees
                    WHERE job_id = 'SA_MAN');

SELECT first_name, last_name, department_id, salary 
FROM employees
WHERE department_id IN (SELECT department_id 
                        FROM departments
                        WHERE location_id IN (SELECT location_id 
                                              FROM locations
                                              WHERE country_id =  (SELECT country_id
                                                                   FROM countries
                                                                   WHERE country_name = 'United Kingdom')));