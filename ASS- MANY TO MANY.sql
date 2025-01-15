USE CLASS_ASSIGNMENT;

CREATE TABLE DOCTORS(
DOC_ID INT AUTO_INCREMENT UNIQUE,
DOC_NAME VARCHAR(50),
DOC_SPECIALTY VARCHAR(40)  );

CREATE TABLE PATIENTS(
PT_ID INT AUTO_INCREMENT PRIMARY KEY,
PT_NAME VARCHAR(40),
PT_CONTACT BIGINT UNIQUE

);

CREATE TABLE TREATMENTS(

DOC_ID INT,
PT_ID INT,
TRET_ID INT,
PRIMARY KEY (PT_ID,TRET_ID),
FOREIGN KEY (DOC_ID) REFERENCES  DOCTORS(DOC_ID),
FOREIGN KEY (PT_ID) REFERENCES PATIENTS(PT_ID)

);
#TABLE TREATMENTS
INSERT INTO TREATMENTS(DOC_ID,PT_ID,TRET_ID)
 VALUES
(1,1,100),
(2,2,102),
(3,1,104),
(3,4,130),
(4,3,100);


# DOCOTRS TABLE
INSERT INTO DOCTORS(DOC_NAME,DOC_SPECIALTY) VALUES
("MONU","ALL"),
("ANKIT","HEART"),
("VANSHU","BRAIN"),
("VIDHI","HH"),
("ANKITA","SDFG");

#PATIENTS
INSERT INTO PATIENTS(PT_NAME,PT_CONTACT) 
VALUES
("MONU","715406216"),
("ANKIT","715406218"),
("RAHUL","715406223"),
("VANSHU","215406216"),
("LALIT","715406234");


SELECT * FROM DOCTORS;
SELECT * FROM PATIENTS;
SELECT * FROM TREATMENTS;