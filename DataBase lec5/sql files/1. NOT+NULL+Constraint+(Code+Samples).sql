INSERT INTO jobs VALUES (100,null,1,10000);
INSERT INTO jobs VALUES (100,'My_Job',1,10000);
INSERT INTO jobs(job_id,min_salary,max_salary) VALUES (100,1,10000);
CREATE TABLE managers (manager_id    NUMBER NOT NULL,
                       first_name    VARCHAR2(50),
                       last_name     VARCHAR2(50) CONSTRAINT lname_not_null NOT NULL,
                       department_id NUMBER NOT NULL);
