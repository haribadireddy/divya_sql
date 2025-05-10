use sales_db;

-- Find out how many product lines are there for which the buy price value is greater than the 
-- average of buy price value. Show the output as product line and its count.



select productline ,count(productline) as Count_products FROM
products 
where buyprice > (select avg(buyprice) from products)
Group By productline;

