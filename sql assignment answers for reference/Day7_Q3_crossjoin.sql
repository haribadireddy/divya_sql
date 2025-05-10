USE sales_db;

--Create below tables and fields. (You can add the data as per your wish) 
--● Laptop: (Laptop_Name) 
--● Colours: (Colour_Name) 
--Perform cross join between the two tables and find number of rows.

--create laptop table
create table Laptop
(
    Laptop_Name varchar(50)
);

insert into laptop values('Dell'),('Hp'),('Mac'),('Lenovo');

--create colours table
create table Colours
(
    Colour_Name char(10)
);

insert into colours values('Grey'),('white'),('Silver'),('Blue'),('RoseGold');

--select * from laptop;
--select * from colours;

select * from laptop cross JOIN colours;

select count(*) as Total from laptop cross JOIN colours;
