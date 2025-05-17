-- one to one
DROP TABLE USER1;
DROP TABLE USER_DETAILS1;



-- one to one 
CREATE TABLE USER1 (
	id NUMBER PRIMARY KEY,
	user_name varchar(255) NOT NULL,
	password varchar(255) NOT NULL
);

CREATE TABLE emails (
id NUMBER PRIMARY KEY,
email varchar(55),
user_id NUMBER NOT NULL unique,
CONSTRAINT userFK1 FOREIGN KEY (user_id) REFERENCES USER1(id)
);

-- one to many
CREATE TABLE USER1 (
	id NUMBER PRIMARY KEY,
	user_name varchar(255) NOT NULL,
	password varchar(255) NOT NULL
);

CREATE TABLE emails (
id NUMBER PRIMARY KEY,
email varchar(55),
user_id NUMBER NOT NULL,
CONSTRAINT userFK1 FOREIGN KEY (user_id) REFERENCES USER1(id)
);












DROP TABLE USER_DETAILS1;
CREATE TABLE USER_DETAILS1 (
	id NUMBER PRIMARY KEY,
	address varchar(255),
	age NUMBER,
	phone_number varchar(11),
	user_id NUMBER NOT NULL,
	CONSTRAINT personFK FOREIGN KEY (user_id) REFERENCES USER1(id)
);
--------------------------------------------


DROP TABLE USER2;

CREATE TABLE USER2 (
	id NUMBER PRIMARY KEY,
	user_name varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	user_deatils_id NUMBER NOT NULL,
	CONSTRAINT user_deatilsFK FOREIGN KEY (user_deatils_id) REFERENCES USER_DETAILS2(id)
);

DROP TABLE USER_DETAILS2;
CREATE TABLE USER_DETAILS2 (
	id NUMBER PRIMARY KEY,
	address varchar(255),
	age NUMBER,
	phone_number varchar(11)
);


DROP TABLE Student1;
DROP TABLE COURSE1;
DROP TABLE Student_COURSE1;

CREATE TABLE Student1 (
	id NUMBER PRIMARY KEY,
	user_name varchar(255) NOT NULL,
	password varchar(255) NOT NULL
);

CREATE TABLE COURSE1 (
	id NUMBER PRIMARY KEY,
	COURSE_NAME varchar(255) NOT NULL,
	PRICE NUMBER
);

CREATE TABLE Student_COURSE1 (
	Student_id NUMBER NOT NULL,
	COURSE_id NUMBER NOT NULL,
	CONSTRAINT Student1FK FOREIGN KEY (Student_id) REFERENCES Student1(id),
	CONSTRAINT COURSE1FK FOREIGN KEY (COURSE_id) REFERENCES COURSE1(id),
	CONSTRAINT COURSE_STUDENT_UN UNIQUE (Student_id, COURSE_id)
);



















