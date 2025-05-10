CREATE table employees
(
    Employeeid varchar(255),
    Firstname varchar(255),
    Lastname varchar(255),
    Salary INT
)

insert into employees
values(1, 'john', 'A', 70000),
    (2, 'jane', 'B', 80000),
    (3, 'sai', 'D', 87000),
    (4, 'hari', 'M', 90000),
    (5, 'surya', 'Y', 45000),
    (6, 'Devi', 'B', 15000);

select *
from employees;

select Employeeid, Firstname, Lastname, Salary,
    case
when salary < 20000 then 'low'
when salary >=20000 and salary <50000 then 'medium'
when salary >=50000 and salary <80000 then 'high'
else 'veryhigh'
end as salarybracket
from employees;

CREATE table products
(
    productid varchar(255),
    productname varchar(255),
    category varchar(255),
    price INT
)

select *
from products;

INSERT INTO Products
VALUES(1, 'charger', 'Electronics', 1200),
    (2, 'T-Shirt', 'Apparel', 450),
    (3, 'whisker', 'Appliances', 800),
    (4, 'harrypotter', 'Book', 300),
    (5, 'Shoes', 'Footwear', 900),
    (6, 'hairclips', 'Accessories', 80),
    (7, 'socks', 'Apparel', 70),
    (8, 'pens', 'Stationary', 30);

select productid, productname, category, Price,
    CASE
when price < 100 then 'Cheap'
when price >=100 and price<500 then 'Affordable'
when price >=500 and price<1000 then 'Moderate'
ELSE 'Costly'
END as budget
from products;

select *
from products
order by price
;

select *
from products
order by price DESC
;


create table bankacc
(
    AccountNumber varchar(255),
    AccountHolderName varchar(255),
    Balance int,
    AccountType char(10)
)

INSERT INTO BankAcc
VALUES('1234567890', 'Sai', 5000, 'Savings'),
    ('9876543210', 'Bablu', 12500, 'Checking'),
    ('5555666677', 'Charan', 250, 'Savings'),
    ('1122334455', 'Diana', 100000, 'Investment'),
    ('9988776655', 'hema', 875, 'Checking'),
    ('2233445566', 'divya', 3200, 'Savings'),
    ('7788990011', 'Giri', 50000, 'Investment'),
    ('3344556677', 'hari', 1500, 'Checking'),
    ('6677889900', 'Aadya', 7800, 'Savings'),
    ('4455667788', 'surya', 20000, 'Investment');

select accountnumber, balance
from bankacc
order by balance;

select accountnumber, balance
from bankacc
order by balance desc;

select productid, productname, category, Price,
    CASE
when price < 100 then 'Cheap'
when price >=100 and price<500 then 'Affordable'
when price >=500 and price<1000 then 'Moderate'
ELSE 'Costly'
END as budget
from products;
