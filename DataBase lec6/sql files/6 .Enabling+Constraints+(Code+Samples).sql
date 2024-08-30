INSERT INTO departments_copy VALUES (10,'TempDept',100,1700);

ALTER TABLE departments_copy ENABLE CONSTRAINT dept_cpy_id_pk;

SELECT * FROM departments_copy ORDER BY department_id;

DELETE FROM departments_copy WHERE department_name = 'TempDept';
