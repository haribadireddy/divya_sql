use sales_db;

-- Show the second highest quantity ordered value for each order number. 
-- Table: Orderdetails

select * from orderdetails;



select ordernumber,quantityOrdered from (SELECT ordernumber,quantityOrdered,
 Rank() over (PARTITION by ordernumber order by quantityOrdered desc) as rank_of_order
FROM orderdetails) as x where x.rank_of_order = 2;
