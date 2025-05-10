-- Create a stored procedure Get_country_payments which takes in year and country as inputs 
-- and gives year wise, country wise total amount as an output. Format the total amount to 
-- nearest thousand unit (K) 
-- Tables: Customers, Payments

select * from customers;
select * from Payments;

Drop procedure Get_country_payments;

create procedure Get_country_payments
(
    @year int,
    @country varchar(255)
)
AS
BEGIN
select year(p.paymentdate) as Year,c.country,concat(ceiling(sum(p.amount)/1000),'K') as TotalAmount from customers c inner join payments p 
on c.customernumber = p.customernumber
Where year(p.paymentdate) =@year AND c.country = @country
group by  year(p.paymentdate),c.country
end;

EXEC Get_country_payments @year= 2003,@COUNTRY = Australia;

