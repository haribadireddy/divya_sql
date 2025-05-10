create TABLE emp_
(
    empid int,
    emp_name varchar(100),
    deptid int,
    salary int
);
insert into emp_
values
    (1, 'John', 1, 50000),
    (2, 'Jane', 2, 60000),
    (3, 'Bob', 1, 55000),
    (4, 'Alice', 3, 70000),
    (5, 'Micheal', 2, 62000);
insert into emp_
values
    (6, 'Jakn', 1, 50000);
select *
from emp_;
select empid, emp_name, salary
from emp_
where salary > (select avg(salary)
from emp_);

select avg(salary)
from emp_;

select empid, emp_name, avg(salary)
from emp_
where salary  > avg(salary);
--finding depts with more than 2 employees
select deptid, count(empid)
from emp_
group by deptid
having count(empid)>2;

create table number
(
    num int
);
insert into number
values(8),
    (8),
    (3),
    (3),
    (1),
    (4),
    (5),
    (6);

select num, max(num) as maximum_no
from number
group by num
having maximum_no=6;

select num
from (select num, max(num) as maximum_no
    from number
    group by num) as x
where maximum_no = 6;


select max(num)
from number
where num not in (select max(num)
from number);


create table managers
(
    id INT,
    NAME varchar(10),
    dept char(5),
    managerid int
);

insert into managers
values(101, 'John', 'A', NULL),
    (102, 'Dan', 'A', 101),
    (103, 'james', 'A', 101),
    (104, 'Amy', 'A', 101),
    (105, 'Anne', 'A', 101),
    (106, 'Ron', 'B', 101);


insert into managers
values(201, '2John', 'A', NULL),
    (202, '2Dan', 'A', 201),
    (203, '2james', 'A', 201),
    (204, '2Amy', 'A', 203),
    (205, '2Anne', 'A', 203),
    (206, '2Ron', 'B', 203);
select *
from managers;

select name
from managers
where managerid = (select managerid, count(managerid)
from managers
group by managerid
having count(managerid) is null );

select *
from managers;

select name
from managers
where id in 
(select managerid--count(managerid),count(dept),count(id),count(distinct id),count(distinct managerid),count(distinct dept)
from managers
group by managerid
having count(*) >= 3)
;

select name
from (select *
    from managers
    where managerid IS null) as x;


select name
from managers
where id in (select managerid
from managers
group by managerid
having count(*)>=5);



select managerid,count(*)
from managers
group by managerid
having count(*) >=2;



select 
    *,
    COALESCE(cast (managerid as varchar),'No manager') as corrected_manager_id
from managers;