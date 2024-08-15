
SELECT 'My Name is Alex' FROM employees;
SELECT 'My Name is ' || first_name FROM employees;
SELECT 'The commission percentage is ' || commission_pct AS concatenation,commission_pct FROM employees;
SELECT first_name || ' ' || last_name AS "full name" FROM employees;
SELECT * FROM employees;
SELECT * FROM locations;
SELECT street_address || ',' || city || ',' || postal_code || ',' || state_province || ',' || country_id AS "full address" 
FROM locations;