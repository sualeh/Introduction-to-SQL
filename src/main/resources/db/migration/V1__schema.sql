-- Products and Purchases, for SELECTs

CREATE TABLE PRODUCTS (
  PRODUCT VARCHAR(50),
  PRICE DECIMAL,
  CATEGORY VARCHAR(50),
  MANUFACTURER VARCHAR(50)
);

CREATE TABLE PURCHASES (
  BUYER VARCHAR(50),
  SELLER VARCHAR(50),
  PRODUCT VARCHAR(50)
);

-- Students and Grades, for JOINs

CREATE TABLE STUDENTS (
  SID VARCHAR(32),
  FIRSTNAME VARCHAR(50),
  LASTNAME VARCHAR(50)
);

CREATE TABLE GRADES (
  SID VARCHAR(32),
  CODE VARCHAR(50),
  GRADE INTEGER
);

-- Jobs and JobsHistory, for UNIONs

CREATE TABLE JOBS (
  EMPLOYEEID VARCHAR(32),
  JOB VARCHAR(50),
  STARTDATE DATE
);

CREATE TABLE JOBSHISTORY (
  EMPLOYEEID VARCHAR(32),
  JOB VARCHAR(50),
  STARTDATE DATE,
  ENDDATE DATE
);

-- Employees, for GROUP BY and functions

CREATE TABLE EMPLOYEES (
  SNO VARCHAR(32),
  FIRSTNAME VARCHAR(50),
  LASTNAME VARCHAR(50),
  SALARY DECIMAL,
  POSITION VARCHAR(50)
);

