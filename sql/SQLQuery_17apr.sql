SELECT * FROM EMP;

SELECT * FROM DEPTS;


   
--CROSS JOIN
select empid,deptname,A.deptid
from emp as A cross join depts as B 

--LEFTJOIN
select empid,deptname,A.deptid
from emp as A LEFT join depts AS B
on A.deptid = B.deptid

--RIGHTJOIN
select empid,deptname,A.deptid
from emp as A RIGHT join depts AS B
on A.deptid = B.deptid
 
 --FULL OUTER JOIN
select empid,deptname,B.deptid
from emp as A FULL OUTER join depts AS B
on A.deptid = B.deptid


create table employeedata
(
    empid int,
    empname varchar(255),
    salary int,
    managerid int
);

insert into employeedata values(1,'joe',70000,3),(2,'Henry',80000,4),(3,'sam',60000,NULL),(4,'Max',90000,NULL);

SELECT * FROM employeedata;

--EARNING MORE THAN THERE MANAGERS
SELECT A.EMPID,A.EMPNAME ,A.SALARY ,B.SALARY 
FROM employeedata AS A INNER JOIN employeedata AS B ON 
B.EMPID = A.MANAGERID
WHERE A.SALARY > B.SALARY;


CREATE TABLE CUSTOMERS
(
    ID INT,
    NAME VARCHAR(255),
    REFERENCE_ID INT
);

INSERT INTO CUSTOMERS VALUES(1,'WILL',NULL),(2,'JANE',NULL),(3,'ALEX',2),(4,'BILL',NULL),(5,'ZACK',1),(6,'MARK',2);

SELECT * FROM CUSTOMERS;

SELECT NAME FROM CUSTOMERS 
WHERE REFERENCE_ID IS NULL OR  REFERENCE_ID = 1;

