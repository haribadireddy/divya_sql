USE sales_db;

--Show total quantities, total quantities in stock, left over quantities for each product and each 
--customer. Sort the data by customer number. 


SELECT O.customernumber, C.customername, OD.productcode, P.productname,
    sum(OD.quantityordered) as ordered_qty, p.quantityinstock,(p.quantityinstock-sum(OD.quantityordered)) as left_qty
FROM orderdetails  as OD INNER JOIN orders as O
    on OD.orderNumber = O.orderNumber
    inner join products as P on P.productcode = OD.productcode
    inner join customers as C on C.customernumber = O.customernumber
group by O.customernumber,C.customername, OD.productcode,P.productname,p.quantityinstock
order by O.customernumber ASC;


