USE sales_db;

-- Create table project with below fields. 
-- ● EmployeeID 
-- ● FullName 
-- ● Gender 
-- ● ManagerID

create table project
(
   EmployeeID int,
   FullName char(10),
   Gender char(10),
   ManagerID int
);

INSERT INTO Project VALUES(1, 'Pranaya', 'Male', 3); 
INSERT INTO Project VALUES(2, 'Priyanka', 'Female', 1); 
INSERT INTO Project VALUES(3, 'Preety', 'Female', NULL); 
INSERT INTO Project VALUES(4, 'Anurag', 'Male', 1); 
INSERT INTO Project VALUES(5, 'Sambit', 'Male', 1); 
INSERT INTO Project VALUES(6, 'Rajesh', 'Male', 3); 
INSERT INTO Project VALUES(7, 'Hina', 'Female', 3);

--select * from project;
--Find out the names of employees and their related managers.

select M.FULLNAME AS MANAGER_NAME,E.FULLNAME AS EMP_NAME from project as E inner join project as M
ON E.ManagerID = M.EmployeeID
ORDER BY M.FULLNAME ASC;