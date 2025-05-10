create table class
(
    student int,
    class char(10)
);

insert into class values(1,'Maths'),(2,'English'),(3,'Maths'),(4,'Biology'),(5,'Maths'),
(6,'Computer'),(7,'Maths'),(8,'Maths'),(9,'Maths');

select * from class;

select  class
from class
group by class
having count(student) >5;

--DATE FUNCTIONS

select DATENAME(year,getdate());
select DATENAME(month,getdate());
select DATENAME(quarter,getdate());
select DATENAME(weekday,getdate());
select DATENAME(day,getdate());

select DATEPART(year,getdate());
select DATEPART(month,getdate());
select DATEPART(quarter,getdate());
select DATEPART(weekday,getdate());
select DATEPART(day,getdate());

SELECT DATEADD(day,-1,getdate());

----PRACTICE

create table emps
(
    Empid int,
    Name char(10),
    Supervisor int,
    Salary int
);

insert into emps values(1,'John',3,1000),(2,'Dan',3,2000),(3,'Brad',NULL,3000),(4,'Thomas',3,4000);

create table Bonus
(
    Empid int,
    Bonusid int
);

insert into Bonus values (2,500),(4,2000);

select * from emps;
select * from bonus;

select emps.name,bonus.bonusid from emps left join bonus 
on emps.empid = bonus.empid
where emps.salary < 4000;
--OR
select emps.name,bonus.bonusid from emps left join bonus 
on emps.empid = bonus.empid
where bonusid IS NULL OR bonusid = 500;

