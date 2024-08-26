CREATE TABLE managers2
(  
   manager_id NUMBER,
   first_name VARCHAR2(50),
   salary     NUMBER, 
   CONSTRAINT salary_check CHECK (salary > 100 AND salary < 50000)
);

INSERT INTO managers2 VALUES(1, 'Steven', 50);
INSERT INTO managers2 VALUES(1, 'Steven', 500);
UPDATE managers2 
SET salary = 20
WHERE manager_id = 1;

DROP TABLE managers2;
CREATE TABLE managers2 (
    manager_id NUMBER,
    first_name VARCHAR2(50),
    salary NUMBER,
    email VARCHAR2(100),
    CONSTRAINT demo_check CHECK (salary > 100 AND salary < 50000 AND upper(email) LIKE '%.COM')
);
INSERT INTO managers2 VALUES (1, 'Steven', 500,'thisisademoemail.xyz);
INSERT INTO managers2 VALUES (1, 'Steven', 500,'thisisademoemail.com');