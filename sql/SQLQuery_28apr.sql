create table emp2
(
    empid int,
    firstname varchar(255),
    lastname varchar(255)
);
 insert into emp2 values(1,'Alice','Smith'),(2,'Bob','Johnson'),(3,'Charlie','Williams'),
 (4,'David','Brown');

 create table orders2
 (
    orderid int,
    empid int,
    customerid int,
    orderamount int,
    orderdate date
 );

 insert into orders2 values(101,1,201,500,'2024-01-15'),(102,1,102,500,'2024-02-20'),(103,2,203,1600,'2024-03-20'),
 (104,2,204,1800,'2024-06-20'),(105,3,205,1200,'2024-05-20'),(106,3,206,1100,'2024-01-20'),(107,4,207,1000,'2024-03-01');

select e.empid,e.firstname,e.lastname,(
    select count(*) from orders2 o
    where o.empid =e.empid) as totalorders
    from emp2 e;
 
select e.empid,e.firstname,e.lastname, x.countoforders from emp2 e inner join
(select empid ,count(orderid) as countoforders from orders2 group by empid) x
on e.empid = x.empid
where x.countoforders > 1;





 
 