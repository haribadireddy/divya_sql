create table mobiles
(
    Name varchar(255),
    price int default 1000
);

insert into mobiles values('htc',45000)
insert into mobiles(name) values('apple');

select * from mobiles;

create table student_details
(
    firstname varchar(50),
    secondname varchar(50),
    age int,
    gender char(5),
    CONSTRAINT chk_A check(age>=18 and age<=60)
);

alter table student_details
alter column gender char(10);

INSERT INTO student_details  VALUES
('John', 'Doe', 20, 'Male'),
('Jane', 'Smith', 22, 'Female'),
('Peter', 'Jones', 21, 'Male'),
('Mary', 'Brown', 19, 'Female'),
('David', 'Wilson', 23, 'Male'),
('Sarah', 'Miller', 27, 'Female'),
('Michael', 'Davis', 22, 'Male'),
('Jessica', 'Garcia', 21, 'Female'),
('Kevin', 'Rodriguez', 19, 'Male'),
('Ashley', 'Williams', 23, 'Female');

select * from student_details;

create table