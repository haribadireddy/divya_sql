select *
from employees
create index ix_name on employees(lastname)
select *
from employees
where lastname ='A';

alter table employees
ADD deptid varchar(255);

update employees 
set deptid = 'IT';

update employees 
set deptid = 'HR'
where employeeid IN(1,2,3);

create index ix_deptid on employees(deptid)

select *
from employees
where deptid ='HR';

---------TRIGGERS-------------
create table ordersdetails
(
    orderid INT,
    orderdate date,
    totalamount int
);

create table orderupdates
(
    orderid int,
    lastupdated datetime
);

create trigger lastupdateorder
on ordersdetails
after insert
as BEGIN
declare @orderid int
select @orderid = orderid from inserted
update orderupdates
set lastupdated = getdate()
where orderid = @orderid
end 

insert into orderupdates values (1,'2025-4-25'),(2,'2024-9-10');
insert into orderupdates values (1,'2025-4-25'),(2,'2025-9-10');

insert into ordersdetails values (1,'2024-06-04',100),(2,'2024-6-5',150),(3,'2024-6-6',200);

insert into ordersdetails values (1,'2024-06-04',100);
select * from orderupdates;

--------INTERVIEW QUES----------
create table city
(
    city_id int,
    city_name varchar(50),
    state char(15),
    Timezone char(15)
);
create table Trips
(
    user_id int,
    trip_id varchar(255),
    city_id int,
    Timestamp DATETIME,
    Trip_status char(10),
    Fare decimal
);

insert into city
values(1, 'sanfrancisco', 'CA', 'America'),
    (2, 'Los Angles', 'CA', 'America'),
    (3, 'New York', 'NY', 'IST');


insert into Trips
values(1, 'T1', 1, '2018-08-13 12:09:09', 'Complete', 5.65),
    (3, 'T1', 1, '2018-08-13 12:09:09', 'Complete', 7.99),
    (2, 'T2', 3, '2018-08-13 12:09:09', 'Cancel', 6.98);

select *
from city;
select *
from trips;

--How many cancelled tripsin Newyork in the year 2021?

select count(trips.trip_status)
from city inner join
Trips
on city.city_id = trips.city_id
where city.city_name = 'new york' and 
trips.trip_status = 'cancel' and year(trips.timestamp = 2018;






