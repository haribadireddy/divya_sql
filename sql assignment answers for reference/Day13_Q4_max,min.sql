use sales_db;
-- For each order number count the number of products and then find the min and max of the 
-- values among count of orders. 
-- Table: Orderdetails

select * from orderdetails;

select max(No_of_Products) as 'Max(Total)', Min(No_of_Products) as 'Min(Total)'
from
(select ordernumber,count(productcode) as No_of_Products from orderdetails
group by ordernumber) as x;