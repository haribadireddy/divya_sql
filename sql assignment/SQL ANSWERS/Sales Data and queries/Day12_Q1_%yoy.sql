use database sales_db;

-- Calculate year wise, month name wise count of orders and year over year (YoY) percentage 
-- change. Format the YoY values in no decimals and show in % sign. 
-- Table: Orders 

select *
from orders;



select yearwise,Month,Total_Orders,concat(CEILING(((Total_Orders-prev_year_orders*1.0)/prev_year_orders*1.0) *100),'%') as '%yoy change' from
(select year(orderdate) as yearwise, DATENAME(month, orderDate) AS Month, count(ordernumber) as Total_Orders,
lag(count(ordernumber),1) over( partition by year(orderdate) order by year(orderdate)) as prev_year_orders
from orders
group by  year(orderdate),month(orderdate),DATENAME(month, orderDate)) t;




 