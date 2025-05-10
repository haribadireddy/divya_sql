create table emp
(
    empid INT,
    firstname varchar(50),
    lastname varchar(50),
    deptid int
);

insert into emp values (1,'sai','B',1),(2,'bhai','A',2),(3,'hai','R',1);

create table depts
(
    deptid int,
    deptname varchar(50),
    
);

insert into depts values (1,'hr'),(2,'finanace'),(3,'IT');

select empid,deptname,emp.deptid
from emp inner join depts
on emp.deptid = depts.deptid

select empid,deptname,A.deptid
from emp as A inner join depts AS B
on A.deptid = B.deptid

select *
from emp AS A inner join depts AS B
on A.deptid = B.deptid

--LEFTJOIN
select empid,deptname,A.deptid
from emp as A LEFT join depts AS B
on A.deptid = B.deptid

--RIGHTJOIN
select empid,deptname,A.deptid
from emp as A RIGHT join depts AS B
on A.deptid = B.deptid

select empid,deptname,B.deptid
from emp as A RIGHT join depts AS B
on A.deptid = B.deptid
 
 --FULL OUTER JOIN
select empid,deptname,B.deptid
from emp as A FULL OUTER join depts AS B
on A.deptid = B.deptid

SELECT * FROM EMP;
SELECT* FROM DEPTS;

--JOINS
CREATE TABLE LOAN
(
    LOAN_NO INT,
    LOAN_STATUS VARCHAR(50),
    STAE VARCHAR(255),
    LOAN_AMOUNT INT

);

INSERT INTO LOAN  VALUES
(101, 'Approved', 'Processing', 10000),
(102, 'Pending', 'Review', 5000),
(103, 'Approved', 'Funded', 15000),
(104, 'Rejected', 'Denied', 2000),
(105, 'Approved', 'Processing', 7500),
(106, 'Pending', 'Initial Check', 12000),
(107, 'Approved', 'Funded', 25000),
(108, 'Rejected', 'Denied', 3000),
(109, 'Approved', 'Processing', 9000),
(110, 'Pending', 'Review', 6000);


CREATE TABLE BORROWER
(
LOAN_NO INT,
BORROWER_NAME VARCHAR(50),
BANK_ID INT
);


INSERT INTO BORROWER  VALUES
(101, 'Alice Smith', 201),
(102, 'Bob Johnson', 202),
(101, 'Charlie Brown', 203),
(103, 'Diana Lee', 201),
(105, 'Ethan Davis', 204),
(107, 'Fiona Green', 202),
(109, 'George Harris', 203),
(104, 'Hannah Clark', 205),
(106, 'Ian White', 201),
(108, 'Judy Miller', 202);

SELECT * FROM LOAN;

SELECT * FROM BORROWER;

--LEFT JOIN
SELECT LOAN_STATUS,A.LOAN_NO,BORROWER_NAME
FROM LOAN AS A LEFT JOIN BORROWER AS B
ON A.LOAN_NO = B.LOAN_NO;


--RIGHT JOIN
SELECT LOAN_STATUS,A.LOAN_NO,BORROWER_NAME
FROM LOAN AS A RIGHT JOIN BORROWER AS B
ON A.LOAN_NO = B.LOAN_NO;

--FULL OUTER JOIN
SELECT LOAN_STATUS,A.LOAN_NO,BORROWER_NAME
FROM LOAN AS A FULL OUTER JOIN BORROWER AS B
ON A.LOAN_NO = B.LOAN_NO;

