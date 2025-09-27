SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM employees NATURAL JOIN departments;
SELECT * FROM departments NATURAL JOIN employees;
SELECT first_name, last_name, department_name FROM departments NATURAL JOIN employees;
(HR.JHIST_EMP_ID_ST_DATE_PK) 


SELECT * FROM employees;
SELECT * FROM departments;

SELECT * FROM employees NATURAL JOIN departments;

DROP TABLE user_907;
CREATE TABLE user_907 (
    user_id       NUMBER PRIMARY KEY,
    username      VARCHAR2(100) NOT NULL UNIQUE,
    password      VARCHAR2(200) NOT NULL
);

DROP TABLE user_details_907;
CREATE TABLE user_details_907 (
    user_id       NUMBER PRIMARY KEY,
    first_name    VARCHAR2(100),
    last_name     VARCHAR2(100),
    CONSTRAINT fk_user_details_907 FOREIGN KEY (user_id) REFERENCES user_907(user_id)
);


SELECT * FROM user_907 NATURAL JOIN user_details_907;
