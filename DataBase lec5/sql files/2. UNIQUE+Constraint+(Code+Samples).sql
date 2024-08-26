CREATE TABLE managers
    (manager_id    NUMBER CONSTRAINT mgr_mid_uk UNIQUE,
     first_name    VARCHAR2(50),
     last_name     VARCHAR2(50),
     department_id NUMBER NOT NULL
);
INSERT INTO managers VALUES (100,'Alex','Brown',80);
INSERT INTO managers VALUES (101,'Alex','Brown',80);

CREATE TABLE managers
    (manager_id    NUMBER CONSTRAINT mgr_mid_uk UNIQUE,
     first_name    VARCHAR2(50),
     last_name     VARCHAR2(50),
     department_id NUMBER NOT NULL,
     phone_number  VARCHAR2(11) UNIQUE NOT NULL,
     email VARCHAR2(100),
     UNIQUE (email),
     CONSTRAINT mgr_composite_uk UNIQUE(first_name, last_name, department_id)
);
INSERT INTO managers VALUES (100,'Alex','Brown',80,'123-456-789','abrown');
INSERT INTO managers VALUES (101,'Alex','Brown',80,'123-456-789','abrown');
INSERT INTO managers VALUES (101,'Alex','Brown',80,'123-456-780','abrown');
INSERT INTO managers VALUES (101,'Alex','Brown',80,'123-456-780','abrown2');
INSERT INTO managers VALUES (101,'Alex','Brown',90,'123-456-780','abrown2');
INSERT INTO managers VALUES (null,null,null,null,null,null);
INSERT INTO managers VALUES (null,null,null,90,null,null);
INSERT INTO managers VALUES (null,null,null,90,'123-456-781',null);
INSERT INTO managers VALUES (null,null,null,90,'123-456-782',null);
INSERT INTO managers VALUES (null,null,null,100,'123-456-782',null);

SELECT * FROM managers;
UPDATE managers SET department_id = 90 WHERE manager_id = 100;
