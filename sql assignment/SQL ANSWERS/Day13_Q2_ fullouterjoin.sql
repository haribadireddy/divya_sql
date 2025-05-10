use sales_db;

-- Write a full outer join between customers and orders using union and get the customer 
-- number, customer name, count of orders for every customer. 
-- Table: Customers, Orders
-- select * from Customers;
-- select * from Orders;

select c.customernumber,c.customername,count(o.ordernumber) as 'Total Orders' from Customers c FULL OUTER JOIN orders o
on c.customernumber = o. customernumber
group by c.customernumber,c.customername;




