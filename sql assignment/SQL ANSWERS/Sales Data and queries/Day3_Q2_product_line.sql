USE sales_db;

--select * from products;

--Show the unique productline values containing the word cars at the end from products table.

select DISTINCT(productline) from products
where productline like '%cars';