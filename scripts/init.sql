CREATE SCHEMA myScheme;
DROP TABLE IF EXISTS myScheme.EMPLOYEE;
DROP TABLE IF EXISTS myScheme.DEPARTMENT;
CREATE TABLE myScheme.EMPLOYEE
(
  EMP_ID   SERIAL PRIMARY KEY,
  EMP_NAME VARCHAR(50),
  EMP_AGE  INT
);

CREATE TABLE myScheme.DEPARTMENT
(
  DEP_ID      SERIAL PRIMARY KEY,
  EMP_ID      INT         NOT NULL,
  DEP_NAME    VARCHAR(50) NOT NULL,
  DESIGNATION VARCHAR(50),
  CONSTRAINT FK_EMP FOREIGN KEY (EMP_ID) REFERENCES myScheme.EMPLOYEE (EMP_ID)
);
