
CREATE TABLE Employee_Info
(
    Nmae VARCHAR(255),
    Department CHAR(10),
    Salary INT,
    JoiningDate Date,
    City VARCHAR(255) 
)

INSERT into Employee_Info VALUES ('Ramya', 'IT', 60000, '2020-05-05', 'Bangalore');

CREATE TABLE student_info
(
    Name VARCHAR(255),
    ID int,
    Gender Char(5),
    Age INT,
    Marks Int
)
Insert into student_info
VALUES('surya',1,'M',48,68),
('Ramya',2,'F',24,88),
('Divya',3,'F',29,89);
select * FROM student_info;

CREATE TABLE Emp_Dteails
(
    EMPID INT,
    EMPName VARCHAR(255),
    Gender CHAR(10),
    DeptID INT,
    DOJ Date
)
INSERT INTO Emp_Dteails VALUES (1,'Ravi','M',2,'2020-05-05'),
(2,'Hari','M',2,'2025-06-01'),
(3,'Sailaja','F',3,'2024-04-08');

SELECT EMPID,Gender,DOJ from Emp_Dteails;

SP_RENAME 'Emp_Dteails','emp_Details';

ALTER table emp_Details
ALTER COLUMN Gender char(5);