-- mysql installion
check version
mysql -V

-- Access MYSQL cmd gui editors;
mysql -u root -p

--crud operations
--show Database

show Databases;
SHOW DATABASES;

--Create Database
Create DATABASE prodapt_database;

--use database

USE prodapt_database;

--show tables/LIST TABLES
SHOW TABLES:

--create table

CREATE TABLE course_list(
    cousre_id INT NOT NULL AUTO_INCREMENT,
    course_title VARCHAR(50) NOT NULL,
    course_author VARCHAR(40) NOT NULL,
    course_date Date,
    PRIMARY KEY(coure_id)
)



CREATE TABLE employee_list(
    employee_id  INT NOT NULL AUTO_INCREMENT
   employee_name VARCHAR(50) NOT NULL
   employee_designation VARCHAR(40) NOT NULL
   employee_salary INT
    PRIMARY KEY(employee_id)
);

--drop table
DROP TABLE course_list;

--insert data into table

INSERT INTO course_list(course_title, course_author, course_date) VALUES("Java","Rohan", NOW());
--insert multiple records into table

INSERT INTO employee_list(employee_name, employee_designation, employee_salary) 
VALUES
("Rohan","CEO","10000000000000", NOW()),
("Mohan","DEO","1", NOW())

--select
select * from course_list;
select course_author from course_list;

--update records in the table

UPDATE course_list SET course_title = "Java Testing" WHERE coure_id=1;

--Delete query

DELETE FROM course_list WHERE coure_id=1;

--rename table
RENAME TABLE course_list TO tech_stack;
--alter tables
--drop columns
--addcolumns

--ALTER TABLE table_name
--ADD 
--  new_column_name_column_defination
  
  ALTER TABLE table_name
  ADD 
     course_score VARCHAR(100) NOT NULL;


--describe table
describe table_name;

--Modify column name
ALTER TABLE course_list
MODIFY course_score_two VARCHAR(50) NOT NULL,
MODIFY course_title VARCHAR(100) NOT NULL,

ALTER TABLE table_name
  ADD 
     employee_project VARCHAR(100) NOT NULL;

     ALTER TABLE course_list
MODIFY employee_project_two VARCHAR(50) NOT NULL,
MODIFY employee_name VARCHAR(100) NOT NULL,

--Rename column name 
ALTER TABLE course_list
CHANGE COLUMN old_column_name new_column_name INT NOT NULL;

ALTER TABLE course_list
CHANGE COLUMN course_score_two course_status INT NOT NULL;

--delete column
ALTER TABLE course_list
DROP COLUMN coulmn_name 

--RelationShips--
--FOREIGN KEY RelationShips

CREATE TABLE Orders (
   OrderID INT NOT NULL,
   OrderNumber INT NOT NULL,
   PersonID int,
   PRIMARY KEY(OrderID),
   CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonID) REFERENCES Persons(PersonID)
);

--ALTER FOREIGN KEY
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder FOREIGN KEY(PersonID) REFERENCES PERSONS(PersonID)

--Drop FOREIGN KEY
ALTER TABLE Orders DROP CONSTRAINT FK_PersonOrder;

--Import existing database
--inside mysql terminal

source path/mysql_file_name

source I:\Training\KValuent\Podcast\tech_stack\MYSQL\mysqlsampledatabase.sql

-- Query data 
--       select
--       filter
--       sort
--       joining 
--       group
--       subquery
--       set operatiom
--       modify

-- SELECT field_name from tablename;
SELECT person_name from personS;

SELECT * from persons

--sort quries

SELECT 
    filled_name
FROM
    table_name
ORDER BY
    column1 [asc|desc],
    column2 [asc|desc];

--user customer table to practice sort

---order by lastname

SELECT
     person_name
FROM
     persons
ORDER BY
     person_name DESC;
     --person_name ASSc

SELECT
    jobTitle
FROM 
    employees
ORDER by
    jobTitle 

--orderdetails

SELECT
    orderNumber,
    orderLineNumber,
    quantityOrdered * priceEach
FROM
    orderdetails
ORDER BY 
    quantityOrdered * priceEach Desc;

    --by alias
    SELECT
    orderNumber,
    orderLineNumber,
    quantityOrdered * priceEach AS subtotals
FROM
    orderdetails
ORDER BY 
    subtotals Desc;

-- status 
--     In Progress
--     On Hold
--        Cancelled
--        Resolved
--        Disputed
--        Shipped

SELECT
    orderNumber,status
FROM
    orders
ORDER BY FIELD(status,
"In Process",
"On Hold",
"Cancelled",
"Resolved"
"Disputed",
"Shipped");

SELECT
   firstName,
   lastName,
   reportsTo
FROM
   employees
ORDER by
   reportsTo;

   --FROM ->WHERE ->SELECT ->ORDER BY

   SELECT
      firstName
      lastName
      jobTitle
   FROM
      employees
   WHERE
      jobTitle="Sales Rep"; AND  --OR
      officeCode =1;

   SELECT
      firstName
      lastName
      jobTitle
   FROM
      employees
   WHERE
      jobTitle="Sales Rep";OR
      officeCode =1;
   ORDER BY
      officeCode,
      jobTitle;

   
SELECT
      firstName
      lastName
      officeCode
   FROM
      employees
   WHERE
      officeCode BETWEEN 1 AND 3;
   ORDER BY officeCode;

--Like Clause

SELECT
    firstName,
    lastName
FROM
    employees
WHERE
    lastName LIKE '%son'  --'Thom%'  --'%att%' --"_r%"second char --"a_%"
ORDER BY
    firstName;

    ---

"Tho%"
'%son'
'%att%'
"_r%"
"a_%"
't%n'


--IN operator

SELECT
firstName
lastName
officeCode

FROM
employees

WHERE officeCode IN (1,2,3)

ORDER BY
officeCode;

