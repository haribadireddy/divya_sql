USE sales_db;

--select * from employees;

--select * from customers;

--1) Show employee number, Sales Person (combination of first and last names of employees), 
--unique customers for each employee number and sort the data by highest to lowest unique customers. 

SELECT employeenumber, CONCAT(firstName,' ',lastName) as Salesperson , COUNT(customerName) as unique_customers
from employees as EMP INNER JOIN customers AS CUS
    on EMP.EMPLOYEENUMBER = CUS.SALESREPEMPLOYEENUMBER
GROUP BY employeenumber,CONCAT(firstName,' ',lastName)
ORDER BY COUNT(customerName) DESC;

