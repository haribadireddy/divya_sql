CREATE TABLE PlayerRuns
(
    PlayerName VARCHAR(255) ,
    RunsScored INT
);

INSERT INTO PlayerRuns
VALUES
    ('Babar Azam', 9000),
    ('Joe Root', 11000),
    ('David Warner', 8500),
    ('KL Rahul', 6000),
    ('Ross Taylor', 7500),
    ('Quinton de Kock', 5500);

SELECT *
from PlayerRuns;

select max(RunsScored)
from PlayerRuns;

select count(distinct PlayerName)
from PlayerRuns;

INSERT INTO PlayerRuns
VALUES
    ('Babar Azam', 9000),
    ('Joe Root', 11000);


CREATE TABLE Countries
(
    ID INT,
    CountryName VARCHAR(100)
);


INSERT INTO Countries
    (ID, CountryName)
VALUES
    (1, 'United States'),
    (2, 'Canada'),
    (3, 'India'),
    (4, 'United Kingdom'),
    (5, 'France'),
    (6, 'Germany'),
    (7, 'Japan'),
    (8, 'Japan'),
    (9, 'India'),
    (10, 'Brazil');

SELECT *
FROM Countries;

select countryname , count(*)
from countries
group by countryname;

select countryname , count(distinct id)
from countries
group by countryname;

SELECT *
from countries;

SELECT distinct(countryname)
from countries;

create table orders
(
    orderid int,
    cudtomerid int,
    productid int,
    orderdate date
)

INSERT INTO Orders
VALUES
    (101, 1, 10, '2024-01-15'),
    (102, 2, 20, '2024-01-15'),
    (103, 1, 10, '2024-01-20'),
    (104, 3, 30, '2024-01-25'),
    (105, 2, 20, '2024-01-30'),
    (106, 1, 40, '2024-02-05'),
    (107, 4, 10, '2024-02-10'),
    (108, 2, 30, '2024-02-15'),
    (109, 3, 20, '2024-02-20'),
    (111, 4, 40, '2024-03-01'),
    (110, 1, 10, '2024-02-25'),
    (112, 2, 10, '2024-03-05'),
    (113, 3, 30, '2024-03-10'),
    (114, 4, 20, '2024-03-15'),
    (115, 1, 20, '2024-03-20');

select cudtomerid, count(orderid) as totalorders
from orders
group by cudtomerid


select cudtomerid, count(orderid) as totalorders
from orders
group by cudtomerid
having count(orderid) >3;

select *
from (select cudtomerid, count(orderid) as totalorders
    from orders
    group by cudtomerid) as xx
where totalorders >3;

create table emplyeesdata
(
    employeeid int,
    departmentid int,
    salary int,
    joiningdate date
)

INSERT INTO EmplyeesData
VALUES
    (101, 1, 50000, '2023-08-15'),
    (102, 2, 60000, '2022-11-20'),
    (103, 1, 52000, '2024-01-10'),
    (104, 3, 75000, '2023-05-01'),
    (105, 2, 63000, '2024-03-01'),
    (106, 1, 55000, '2024-02-15'),
    (107, 4, 80000, '2023-09-01'),
    (108, 2, 61000, '2024-04-01'),
    (109, 3, 78000, '2024-01-25'),
    (110, 1, 53000, '2024-03-10'),
    (111, 4, 82000, '2024-02-20'),
    (112, 2, 65000, '2024-04-05'),
    (113, 3, 76000, '2024-03-15'),
    (114, 4, 81000, '2024-04-10'),
    (115, 1, 56000, '2024-04-15');

select *
from emplyeesdata;

select departmentid, avg(salary) as avgsalary
from emplyeesdata
group by departmentid
having avg(salary)>60000;

select departmentid, salary
from emplyeesdata
WHERE departmentid >3;

select departmentid, count(employeeid)
from emplyeesdata
group by departmentid
having count(employeeid) >3;

sp_rename 'emplyeesdata','employeedata';

select *
from employeedata;

sp_rename 'employeedata','emplyeesdata';


select cudtomerid, count(orderid) as totalorders
from orders
group by cudtomerid
having count(orderid) >1;


--give me all customers with more than one order in 2024

select cudtomerid, month(orderdate) as order_month,count(orderid) as nooforders
from orders
where orderdate >= '2024-01-01' and orderdate <= '2024-12-31'
group by cudtomerid,order_month
having count(orderid) > 1
order by count(orderid) desc;

SELECT EXTRACT(MONTH FROM "2017-06-15");

SELECT MONTH('2017-08-25') AS Month;

select orderdate,month(orderdate) as order_month from orders;




select cudtomerid, order_month,count(orderid) as nooforders
from 
(
    select *,month(orderdate) as order_month from orders
) as oo
where orderdate >= '2024-01-01' and orderdate <= '2024-12-31'
group by cudtomerid,order_month
having count(orderid) > 1
order by count(orderid) desc;