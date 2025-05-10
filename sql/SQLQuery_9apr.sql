CREATE TABLE students
(
    Name VARCHAR(255),
    ID int,
    Gender Char(5),
    Marks INT,
    Section char(5),
    DOB Date
);

Insert into students
VALUES('surya',1,'Male',48,'A','1995-09-07','kkd'),
('Ramya',2,'Female',78,'A','1995-06-04','rjy'),
('Divya',3,'Female',89,'A','1995-05-03','hyd'),
('Hari',4,'Male',76,'A','1995-03-01','hyd'),
('Aadya',5,'Female',92,'A','1995-09-09','hyd');


select * FROM students;

ALTER TABLE students
ALTER COLUMN Gender char(10);

ALTER TABLE students
ADD City varchar(255);

ALTER TABLE students
ALTER COLUMN City varchar(255); 

DELETE from students where city is not NULL;

ALTER TABLE students
DROP column city;

update students SET
city = 'hyd';

--ALTER TABLE students
exec SP_RENAME 'students.DOB', 'Dateofbirth';

update students SET
city ='pune'
where name = 'surya';

select * FROM students
where marks >=70 AND marks<=85;

select * FROM students
where marks BETWEEN 70 AND 85;

select * FROM students
where marks = 56 or marks = 89;

select * FROM students
where marks <> 78;

select * FROM students
where marks not in(78);

select * FROM students
where name is not null;


select * FROM students
where name is null;

update students SET
city ='kkd'
where id in(1,2,4);