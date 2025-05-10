use sales_db;

-- 1) Create a stored procedure GetCustomerLevel which takes input as customer number and 
-- gives the output as either Platinum, Gold or Silver as per below criteria. 
-- Table: Customers 
-- ● Platinum: creditLimit > 100000
-- ● Gold: creditLimit is between 25000 to 100000
-- ● Silver: creditLimit < 25000

select * from customers;

drop procedure GetCustomerLevel2

create procedure GetCustomerLevel2 (
    @customernumber int
)
AS
BEGIN
select customernumber,creditlimit,
CASE 
when creditLimit > 100000 then 'Platinum'
when creditLimit between 25000 AND 100000 then 'Gold'
when creditLimit < 25000 then 'Silver'
else 'None'
END AS customerlevel
from customers
where customernumber = @customernumber;
end;

EXEC  GetCustomerLevel2 @customernumber = 112;












-- create procedure GetCustomerLevel (
--     @creditlimit1 float,
--     @creditlimit2 float
-- )
-- AS
-- BEGIN
-- select customernumber,creditlimit,
-- CASE 
-- when creditLimit > @creditlimit1 then 'Platinum'
-- when creditLimit between @creditlimit2 AND @creditlimit1 then 'Gold'
-- when creditLimit < @creditlimit2  then 'Silver'
-- else 'None'
-- END AS customerlevel
-- from customers;
-- end;

-- EXEC  GetCustomerLevel @creditlimit1=300000 , @creditlimit2 = 20000;

drop procedure GetCustomerLevel;

-- CREATE PROCEDURE GetCustomerLevel
--     @customerNumber INT,
--     @customerLevel VARCHAR(20) OUTPUT

-- AS
-- BEGIN

--     DECLARE @creditLimit DECIMAL(10, 2);

--     SELECT @creditLimit = creditLimit
--     FROM Customers
--     WHERE customerNumber = @customerNumber;

--     IF @creditLimit > 100000
--         SET @customerLevel = 'Platinum';
--     ELSE IF @creditLimit >= 25000 AND @creditLimit <= 100000
--         SET @customerLevel = 'Gold';
--     ELSE
--         SET @customerLevel = 'Silver';
-- END;

-- DECLARE @Result VARCHAR(20);


-- EXEC GetCustomerLevel @customerNumber =101, @customerLevel = @Result OUTPUT;




