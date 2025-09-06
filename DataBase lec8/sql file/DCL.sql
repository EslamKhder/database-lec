sqlplus / as sysdba;
alter session set container=orclpdb;
SELECT USER FROM DUAL;

CREATE USER SCHOOL_USER IDENTIFIED BY 123;

ALTER USER SCHOOL_USER IDENTIFIED BY abc123;

DROP USER SCHOOL_USER cascade;
GRANT CREATE SESSION TO SCHOOL_USER;

CREATE TABLE TEST (
	id NUMBER,
	name varchar(255)
);

GRANT CREATE TABLE to SCHOOL_USER;

INSERT INTO SCHOOL_USER.TEST (id, name) VALUES (1,'eslam');

🧱 What is a Tablespace in Oracle?
A tablespace is a logical storage unit in an Oracle database. It acts like a container that holds data for tables, indexes, and other database objects.

In Oracle Database, a quota is the amount of space a user is allowed to use within a specific tablespace.


ALTER USER SCHOOL_USER QUOTA UNLIMITED ON USERS;


/*
This command is generally used by a database administrator (DBA) 
to allow a user to create and store objects (like tables, etc.) \ 
Without sufficient quota, a user would encounter errors like ORA-01950: 
no privileges on tablespace 'USERS' when trying to create or insert data 
into database objects.
*/


INSERT INTO SCHOOL_USER.TEST (id, name) VALUES (1,'eslam');
DELETE FROM SCHOOL_USER.TEST;
UPDATE SCHOOL_USER.TEST SET id = 1 WHERE id =1;
SELECT * FROM SCHOOL_USER.TEST;


--on SCHOOL_USER
GRANT INSERT ON SCHOOL_USER.TEST to hr;
GRANT DELETE ON SCHOOL_USER.TEST to hr;
GRANT SELECT  ON SCHOOL_USER.TEST to hr;
GRANT UPDATE ON SCHOOL_USER.TEST to hr;
GRANT ALL ON SCHOOL_USER.TEST TO HR;

REVOKE INSERT ON SCHOOL_USER.TEST FROM hr;
REVOKE SELECT ON SCHOOL_USER.TEST FROM hr;
REVOKE UPDATE ON SCHOOL_USER.TEST FROM hr;
REVOKE DELETE ON SCHOOL_USER.TEST FROM hr;
REVOKE ALL ON SCHOOL_USER.TEST FROM HR;


--on admin
REVOKE CREATE Table FROM SCHOOL_USER;
REVOKE  CREATE SESSION FROM  SCHOOL_USER;



DROP USER SCHOOL_USER cascade;
CASCADE: Ensures that all schema objects (like tables, views, procedures, etc.) owned by SCHOOL_USER are also deleted. Without CASCADE, the command would fail if the user owns any objects.