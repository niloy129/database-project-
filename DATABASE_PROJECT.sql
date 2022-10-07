CREATE TABLE CUSTOMER(
ID VARCHAR(10),
NAME VARCHAR(30),
ADDRESS VARCHAR(50),
PRIMARY KEY (ID)
);

CREATE TABLE EMPLOYEE(
ID VARCHAR(10),
NAME VARCHAR(30),
AGE INTEGER,
PHONE_NUM VARCHAR(11),
PRIMARY KEY (ID)
);

CREATE TABLE TRAIN_INFORMATION(
TRAIN_NAME VARCHAR(30),
TRAIN_ID VARCHAR(10),
TRAIN_NO INTEGER,
PLATEFROM INTEGER, 
ROUTE VARCHAR(30),
PRIMARY KEY (TRAIN_ID)
);


CREATE TABLE PAYMENT(
PAYMENT_ID VARCHAR(10),
CUSTOMER_ID VARCHAR(10),
PAYMENT_DATE DATE,
TRAIN_ID VARCHAR(10),
PERSON INTEGER,
AMOUNT INTEGER,
PRIMARY KEY (PAYMENT_ID),
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(ID),
FOREIGN KEY (TRAIN_ID) REFERENCES TRAIN_INFORMATION(TRAIN_ID)
);


--INSERT VALUES



INSERT INTO CUSTOMER VALUES ('20221','NILOY RAHMAN', 'SHEMOLI,DHAKA');
INSERT INTO CUSTOMER VALUES ('20222','SADIA NEER', 'KALSHI,DHAKA');
INSERT INTO CUSTOMER VALUES ('20223','OVI PAL', 'GULSHAN,DHAKA');
INSERT INTO CUSTOMER VALUES ('20224','FARHAN ISLAM', 'MIRPUR,DHAKA');


INSERT INTO EMPLOYEE VALUES ('11111','FARHAN HUQ', 21, '01900000001');
INSERT INTO EMPLOYEE VALUES ('11112','SADIA AKTER', 25, '01900000002');
INSERT INTO EMPLOYEE VALUES ('11113','PRAPTIAKTER', 30, '01900000004');
INSERT INTO EMPLOYEE VALUES ('11114','ABDUL RHAMAN',40, '01900000005');


INSERT INTO TRAIN_INFORMATION VALUES ('Parabat Express','01111',101, 01,'Dhaka–Sylhet');
INSERT INTO TRAIN_INFORMATION VALUES ('Tista Express','01112',311, 04,'Dhaka–Dewanganj');
INSERT INTO TRAIN_INFORMATION VALUES ('Suborno Express','01113',701, 02,'Chattogram–Dhaka');
INSERT INTO TRAIN_INFORMATION VALUES ('Titumir Express','01114',133, 03,'Rajshahi–Chilahati');


INSERT INTO PAYMENT VALUES ('20001','20221','12-jun-22','01111', 02, 800);
INSERT INTO PAYMENT VALUES ('20002','20222','12-jun-22','01112', 01, 500);
INSERT INTO PAYMENT VALUES ('20003','20222','12-jun-22','01112', 01, 500);
INSERT INTO PAYMENT VALUES ('20004','20223','12-jun-22','01113', 04, 2000);
INSERT INTO PAYMENT VALUES ('20005','20224','12-jun-22','01114', 03, 1500);

--QUERY

SELECT * FROM CUSTOMER;

SELECT NAME ,PHONE_NUM FROM EMPLOYEE;

SELECT ID, NAME , PHONE_NUM FROM EMPLOYEE WHERE AGE >= 30;

--rename
SELECT TRAIN_NAME AS NAME_OF_TRAIN , TRAIN_NO FROM TRAIN_INFORMATION;

SELECT NAME, AGE-5 FROM EMPLOYEE WHERE AGE <30;

--AGGREGATION FUNCTION
SELECT SUM(AMOUNT) AS TOTAL_AMOUNT FROM PAYMENT;


--TUPLE VARIABLE

SELECT PAY.PAYMENT_ID, PAY.CUSTOMER_ID , PAY.PAYMENT_DATE
FROM PAYMENT PAY 
WHERE AMOUNT > 500;


--VIEW
CREATE VIEW TEST_01 AS
SELECT TRAIN_NAME, PLATEFROM, ROUTE
FROM TRAIN_INFORMATION;


SELECT * FROM TEST_01;
