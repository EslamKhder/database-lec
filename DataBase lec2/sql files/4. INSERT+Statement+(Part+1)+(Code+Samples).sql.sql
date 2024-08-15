
CREATE TABLE jobs_copy AS SELECT * FROM jobs;

INSERT INTO jobs_copy (job_id, job_title, min_salary, max_salary)
VALUES('GR_LDR', 'Group Leader', 8500, 20000);

SELECT * FROM jobs_copy;

INSERT INTO jobs_copy (job_id, job_title, min_salary, max_salary)
VALUES('PR_MGR', 'Project Manager', 7000, 18000);

INSERT INTO jobs_copy (job_title, min_salary, job_id, max_salary)
VALUES('Architect',6500,'ARCH',15000);

INSERT INTO jobs_copy
VALUES('DATA_ENG','Data Engineer',8000,21000);

INSERT INTO jobs_copy (job_id, job_title, min_salary)
VALUES('DATA_ARCH','Data Architecture',8000);

ALTER TABLE jobs_copy MODIFY max_salary DEFAULT 10000;

INFO jobs;

INSERT INTO jobs_copy (job_id, job_title, min_salary)
VALUES('DATA_ARCH2','Data Architecture2',8000);

INSERT INTO jobs_copy (job_id, min_salary)
VALUES('DATA_ARCH2',8000);