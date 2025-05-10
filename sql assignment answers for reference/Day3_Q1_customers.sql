USE sales_db;

--select * from CUSTOMERS;

--1) Show customer number, customer name, state and credit limit from customers table for below 
--conditions. Sort the results by highest to lowest values of creditLimit. 
--● State should not contain null values
--● credit limit should be between 50000 and 100000

select customernumber,customername,state,creditlimit
from CUSTOMERS
where state IS NOT NULL AND creditlimit BETWEEN 50000 and 100000
order by creditlimit desc;
