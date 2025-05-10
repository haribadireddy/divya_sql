use database sales_db;

-- Calculate year wise, month name wise count of orders and year over year (YoY) percentage 
-- change. Format the YoY values in no decimals and show in % sign. 
-- Table: Orders 

select *
from orders;

select yearwise,Month,Total_Orders,prev_year_orders,concat(CEILING(((Total_Orders-prev_year_orders*1.0)/prev_year_orders*1.0) *100),'%') as '%yoy change' from
(select year(orderdate) as yearwise, DATENAME(month, orderDate) AS Month, count(ordernumber) as Total_Orders,
lag(count(ordernumber),1) over( partition by year(orderdate) order by year(orderdate)) as prev_year_orders
from orders
group by  year(orderdate),month(orderdate),DATENAME(month, orderDate)) t;







with ordersdata as
(select year(orderdate) as yearwise,DATENAME(month, orderDate) AS Monthwise,count(ordernumber) as count_of_orders,
lag(count(ordernumber),1) over( order by DATENAME(month, orderDate)) as prev_year_orders
from orders 
group by  year(orderdate),DATENAME(month, orderDate))
select yearwise,Monthwise,count_of_orders, prev_year_orders,
((count_of_orders- prev_year_orders *1.0)/(prev_year_orders *1.0)) *100 as yoy from ordersdata;

-- select *,((count_of_orders-prev_year_orders*1.0)/prev_year_orders*1.0) *100 as yoy from
-- (select year(orderdate) as yearwise,DATENAME(month, orderDate) AS Monthwise,count(ordernumber) as count_of_orders,
-- lag(count(ordernumber),1) over( order by year(orderdate) ) as prev_year_orders
-- from orders 
-- group by  year(orderdate),DATENAME(month, orderDate)) t;




-- select year(orderdate) as yearwise, DATENAME(month, orderDate) AS MonthName, count(ordernumber) as count_of_orders,
-- ((COUNT(ordernumber) - (LAG(COUNT(ordernumber)) OVER (PARTITION BY YEAR(ORDERDATE) ORDER BY MONTH(ORDERDATE)))*1.0)/((LAG(COUNT(ordernumber)) OVER (PARTITION BY YEAR(ORDERDATE) ORDER BY MONTH(ORDERDATE)))*1.0)) * 100 AS YOYCHANGE
--      from orders
-- group by  year
-- (orderdate),DATENAME
-- (month, orderDate);











select year(orderdate) as yearwise, DATENAME(month, orderDate) AS MonthName, count(ordernumber) as 'Total orders',
(count(ordernumber) - (lag(count(ordernumber),1) over( partition by year(orderdate) order by year(orderdate))*1.0)/(lag(count(ordernumber),1) over( partition by year(orderdate) order by year(orderdate))*1.0)) as '%yoy change'
from orders
group by  year(orderdate),month(orderdate),DATENAME(month, orderDate);


-- select year(orderdate) as yearwise, DATENAME(month, orderDate) AS MonthName, count(ordernumber) as count_of_orders,
--     CONCAT(
--         FORMAT(
--             (COUNT(ordernumber) - LAG(COUNT(ordernumber)) OVER (PARTITION BY YEAR(ORDERDATE) ORDER BY MONTH(ORDERDATE))) / LAG(COUNT(ordernumber)) OVER (PARTITION BY YEAR(ORDERDATE) ORDER BY MONTH(ORDERDATE)) * 100, 0),
--             '%')
--      AS YOYCHANGE
--      from orders
-- group by  year
-- (orderdate),month
-- (orderdate),DATENAME
-- (month, orderDate);

mmmmmm
SELECT
    YEAR(orderdate) AS order_year,
    MONTH(orderdate) AS order_month,
   DATENAME
(month, orderDate) AS order_month_name,
    COUNT(*) AS order_count,
    CONCAT(ROUND
            (((COUNT(*) - LAG(COUNT(*)) OVER (PARTITION BY YEAR(ORDERDATE) ORDER BY MONTH(ORDERDATE)))*1.0) / (LAG(COUNT(*)) OVER (PARTITION BY YEAR(ORDERDATE) ORDER BY MONTH(ORDERDATE))*1.0) * 100,1),
            '%')
     AS YOYCHANGE
FROM
    Orders
GROUP BY
    YEAR(orderdate),
    MONTH(orderdate),
   DATENAME
(month, orderDate)
ORDER BY
    YEAR(orderdate),
    MONTH(orderdate);

SELECT
    YEAR(orderdate) AS order_year,
   DATENAME
(month, orderDate) AS order_month_name,
    COUNT(*) AS order_count,
    CONCAT(CEILING
            ((COUNT(*) - LAG(COUNT(*)) OVER (PARTITION BY YEAR(ORDERDATE) ORDER BY    DATENAME
(month, orderDate) ))*1.0) / (LAG(COUNT(*)) OVER (PARTITION BY YEAR(ORDERDATE) ORDER BY    DATENAME
(month, orderDate) )*1.0) * 100,
            '%')
     AS YOYCHANGE
FROM
    Orders
GROUP BY
    YEAR(orderdate),
    MONTH(orderdate),
   DATENAME
(month, orderDate);
