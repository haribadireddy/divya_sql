create table empdetails
(
    empid int,
    Firstname varchar(50),
    Lastname VARCHAR(50),
    Position VARCHAR(50),
    Salary int
);

insert into empdetails
values(101, 'John', 'Doe', 'Manager', 60000),
    (102, 'Jane', 'Smith', 'Sales_Associate', 40000),
    (103, 'Micheal', 'Johnson', 'Developer', 70000),
    (104, 'Emily', 'Brown', 'HR_Coordinator', 45000);

select *
from empdetails;

-- create procedure updatesalaries1
--     @empid int,
--     @Newsalary int
-- as
-- BEGIN
--     update empdetails set salary = @Newsalary
-- where empid = @empid
-- end;

-- exec updatesalaries1 @empid = 101,@newsalary = 60000;

-- create procedure updateposition1
--     @empid int,
--     @Newposition varchar(50)
-- as
-- BEGIN
--     update empdetails set position = @Newposition
-- where empid = @empid
-- end;

-- exec updateposition1 @empid = 101,@newposition = 'Senior_Manager';


create table product
(
    productid int,
    product_name varchar(50),
    Description varchar(50),
    price int,
    stockquantity int
);

insert into product
values(1, 'watch', 'titan', 15000, 20),
    (2, 'Bracelet', 'Malabar', 25000, 5),
    (3, 'Perfume', 'Bodyshop', 5000, 50),
    (4, 'shoes', 'puma', 8500, 80),
    (5, 'spects', 'vogue', 7000, 10);
    select * from product

drop PROCEDURE get_first_row;

-- create procedure get_one_row
--     @id int
-- as
-- BEGIN
-- select * from product where productid =@id 
-- end;

-- EXEC get_one_row @id=1;

-- create procedure update_stockquantity
--     @id int,
--     @Newstockquantity int
-- as
-- BEGIN
-- update product set stockquantity = @Newstockquantity
-- where productid = @id
-- end;

-- EXEC  update_stockquantity @id=1 , @Newstockquantity = 40;

-- select * from product;

--
create table users
(
    user_id int,
    user_type char(10),
    is_active char(5),
    signup_cityid int
);

insert into users values(1,'Rider','true',1),(2,'Driver','true',2),(3,'Driver','true',1),(4,'Rider','false',33);

select * from users;

--how many active drivers and riders do we have in the platform
select user_type,count(*) as no_Of_activeusers from users
where is_active ='true'
group by user_type;
