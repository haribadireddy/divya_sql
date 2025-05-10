USE sales_db;

--select * from orders;

--Show the orderNumber, status and comments from orders table for shipped status only. If some 
--comments are having null values then show them as “-“.

SELECT orderNumber, STATUS, ISNULL(COMMENTS,'-') AS COMMENTS
FROM ORDERS
WHERE STATUS = 'SHIPPED' ;
