CREATE TABLE schema_name.table_name 
(column_name_1 datatype [DEFAULT default_value] [NULL NOT NULL], 
column_name_2 datatype [DEFAULT default_value] [NULL NOT NULL]
.....
);

CREATE TABLE employees(id   NUMBER(3)       NOT NULL,
                       first_name    VARCHAR2(50)    DEFAULT 'No Name',
                       last_name     VARCHAR2(50),
                       hire_date     DATE DEFAULT    sysdate NOT NULL);

SELECT * FROM employees;


CREATE TABLE employees(id   NUMBER(3)       NOT NULL,
                       first_name    VARCHAR2(50)    DEFAULT 'No Name',
                       last_name     VARCHAR2(50),
                       hire_date     DATE DEFAULT    sysdate NOT NULL,
                       email VARCHAR2(20));
					   
					   
