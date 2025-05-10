use sales_db;

-- Create the view products status. Show year wise total products sold. Also find the percentage of total 
-- value for each year. The output should look as shown in below figure.
--/////////////////////////////////////////////////////////////////////////////
select * from orders;
select * from orderdetails;
-- --/////////////////////////////////////////////////////////////////////////////
-- select year(o.orderdate) as Year,count(o.orderNumber) as value 
-- from orders O join Orderdetails OD
-- on o.ordernumber = od.ordernumber
-- group by year(orderdate);
--/////////////////////////////////////////////////////////////////////////////
select year(order from orders
group by year(orderdate) ;

--///////////////////////////////////////////////////////////////////////////////////////////
create view product_status as
with yearlycount as (
    select year(o.orderdate) as Year,count(o.orderNumber) as value
    from orders O join Orderdetails OD
    on o.ordernumber = od.ordernumber
    group by year(orderdate)
),
totalsum as (
    select sum(value) as total_sum from yearlycount
)
select yc.year, concat(yc.value,' (',((yc.value * 100)/ts.total_sum),'%)') as Value from yearlycount yc, totalsum ts;

select * from product_status;























--/////////////////////////////////////////////////////////////////////////////
-- with yearlycount as (
--     select year(o.orderdate) as Year,sum(OD.quantityOrdered) as value
--     from orders O join Orderdetails OD
--     on o.ordernumber = od.ordernumber
--     group by year(orderdate)
-- ),
-- totalsum as (
--     select sum(value) as total_sum from yearlycount
-- )
-- select yc.year, yc.value,((yc.value * 100)/ts.total_sum) as percent_no from yearlycount yc, totalsum ts;
--/////////////////////////////////////////////////////////////////////////////
-- select sum(value) as total_sum from (select year(o.orderdate) as Year,count(o.orderNumber) as value
--     from orders O join Orderdetails OD
--     on o.ordernumber = od.ordernumber
--     group by year(orderdate)) as p

--/////////////////////////////////////////////////////////////////////////////
-- select * from product_status;
-- --/////////////////////////////////////////////////////////////////////////////
-- select 
-- year(orderdate) as year,
-- CONCAT(count(orderNumber), '(', ROUND((count(orderNumber) * 100) / (select count(orderNumber) from orderdetails),0),'%)') as VALUE
-- from orderdetails group by year(orderdate);
-- --/////////////////////////////////////////////////////////////////////////////
-- ALTER TABLE orderdetails ADD orderDate date;
-- --/////////////////////////////////////////////////////////////////////////////
--select * from orderdetails
-- --/////////////////////////////////////////////////////////////////////////////
-- update orderdetails set orderDate = (select orderDate from orders
--     where orders.ordernumber = orderdetails.ordernumber)
-- --/////////////////////////////////////////////////////////////////////////////
