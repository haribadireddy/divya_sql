-- Create table facility. Add the below fields into it. 
-- ● Facility_ID 
-- ● Name 
-- ● State 
-- ● Country 
drop table facility;
create table facility
(
    facility_id int ,
    Name varchar(50),
    state varchar(50),
    country varchar(50)
);

--1) Alter the table by adding the primary key and auto increment to Facility_ID column. 

ALTER table facility ALTER column facility_id INT primary key;


--2) Add a new column city after name with data type as varchar which should not accept any null 
-- values

ALTER TABLE FACILITY ADD CITY varchar(255) NOT NULL;

