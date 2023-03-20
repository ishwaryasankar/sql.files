CREATE TABLE tablename(
column1 column1_database(size)constraints,
column1 column1_database(size)constraints,
);

CREATE DATABASE IF NOT EXISTS medlife;

USE medlife;

create table doctor(
username  VARCHAR(50)PRIMARY KEY,
PASSWORD VARCHAR(50),
DOB DATE,
PHONE VARCHAR(20),
EMAIL VARCHAR(100),
FIRST_NAME varchar(20));

ALTER table doctor
add whatsapp_no INT;

ALTER table doctor
modify column whatsapp_no varchar(20);

alter table doctor
drop column whatsapp_no ;



alter table doctor
rename column dob to date_of_birth;

describe doctor;

INSERT INTO doctor (username,EMAIL,PHONE,Date_of_birth)
VAlUES ("Bhirahateesvaran","bhirahatees.periyasamy@fssa.freshworks.com",9150415595,"2005-04-25"),
 ("Vinit","vinit.gore@fssa.freshworks.com",915041524,"1997-03-12"),
 ("Gowtham","gowtham.krishna@fssa.freshworks.com",9150415234,"2005-04-25"),
 ("Arun","arun.dhanraj@fssa.freshworks.com",915055524,"2001-04-21");
 
 SELECT *
 FROM DOCTOR;






