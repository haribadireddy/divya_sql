create table order_info
(
    userid int primary key,
    username varchar(255),
    email varchar(255)
);
 
insert into order_info values(1,'div','div@gmail.com'),(2,'sai','sai@gmail.com'),(3,'ram','ram@gmail.com');

select * from order_info;


create table user_info
(
    orderid int primary key,
    userid int,
    orderdate date,
    foreign key (userid) REFERENCES order_info(userid)
);

drop table user_info;

insert into user_info values(1,1,'1-1-2000'),(2,2,'3-6-2000'),(3,3,'4-5-2000');


select * from user_info;

create table order_information
(
    userid int not null unique,
    username varchar(255),
    email varchar(255)
);
 
 insert into order_information values(1,'div','div@gmail.com');


insert into order_information values(1,'sai','sai@gmail.com');

insert into order_information values(null,'ram','ram@gmail.com'); 

drop table order_information;


