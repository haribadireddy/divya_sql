use sales_db;

-- Display the customer numbers and customer names from customers table who have not 
-- placed any orders using subquery 
-- Table: Customers, Orders

select * from customers;
select * from Orders;


select c.customernumber,c.customername from customers C
where c.customernumber not in  
(
select o.customernumber from customers c inner join Orders o
on c.customernumber = o.customernumber);

