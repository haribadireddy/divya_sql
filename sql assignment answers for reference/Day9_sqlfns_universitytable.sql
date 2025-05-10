-- Create table university with below fields. 
-- ● ID 
-- ● Name

create table university
(
    ID int,
    Name varchar(255)
);

INSERT INTO University 
VALUES (1, ' Pune University '), 
 (2, ' Mumbai University '), 
 (3, ' Delhi University '), 
 (4, 'Madras University'), 
 (5, 'Nagpur University'); 

 select * from university;

 --Remove the spaces from everywhere and update the column like Pune University etc

UPDATE university
SET name = LTRIM(name);

UPDATE university
SET name = RTRIM(name);

UPDATE university
SET name = REPLACE(name, ' ', '');


