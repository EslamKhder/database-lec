DROP TABLE managers;
CREATE TABLE managers
    (manager_id    NUMBER CONSTRAINT mgr_mid_uk UNIQUE,
     first_name    VARCHAR2(50),
     last_name     VARCHAR2(50),
     department_id NUMBER NOT NULL,
     phone_number  VARCHAR2(11) UNIQUE NOT NULL,
     email 	     VARCHAR2(100),
     UNIQUE (email),
     CONSTRAINT mgr_composite_uq UNIQUE(department_id, first_name, last_name)
);

CREATE TABLE directors
    (director_id   NUMBER CONSTRAINT dir_did_pk PRIMARY KEY,
     first_name    VARCHAR2(50),
     last_name     VARCHAR2(50)
);

CREATE TABLE executives
    (executive_id  NUMBER,
     first_name    VARCHAR2(50),
     last_name     VARCHAR2(50),
     CONSTRAINT dir_did_pk PRIMARY KEY (executive_id, last_name)
);

CREATE TABLE executives
    (executive_id NUMBER,
     first_name   VARCHAR2(50),
     last_name    VARCHAR2(50),
     CONSTRAINT exec_eid_pk PRIMARY KEY (executive_id, last_name)
);

INSERT INTO directors VALUES(100,'John','Goodman');
INSERT INTO directors VALUES(null,'John','Goodman');
INSERT INTO executives VALUES(100,'John',null);

DROP TABLE executives;
DROP TABLE directors;