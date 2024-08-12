DESC employees_copy;
ALTER TABLE employees_copy RENAME COLUMN hire_date TO start_date;

RENAME employees_copy TO employees_backup;

SELECT * FROM employees_copy;
SELECT * FROM employees_backup;

ALTER TABLE employees_backup RENAME TO employees_copy;
SELECT * FROM employees_copy;