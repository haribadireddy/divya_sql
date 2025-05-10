create table marks
(
    id int,
    city varchar(225),
    marks int
);

insert into marks
values(1, 'A', 50),
    (2, 'B', 80),
    (3, 'C', 90),
    (4, 'D', 80),
    (5, 'E', 70),
    (6, 'F', 100);
insert into marks
values(7, 'G', 0),
    (8, 'H', 80);
insert into marks
values(9, 'I', 70),
    (10, 'J', 90);

SELECT ID, MARKS, RANK() OVER(ORDER BY MARKS DESC)
FROM MARKS;
SELECT ID, MARKS, DENSE_RANK() OVER(ORDER BY MARKS DESC)
FROM MARKS;
SELECT ID, MARKS, ROW_NUMBER() OVER(ORDER BY MARKS DESC)
FROM MARKS;
SELECT ID, MARKS, NTILE(6) OVER(ORDER BY MARKS DESC)
FROM MARKS;

CREATE TABLE custransaction
(
    customer_id INT,
    customer_name VARCHAR(255),
    transaction_value int
);


INSERT INTO custransaction
VALUES
    (1, 'Alice Johnson', 345);

INSERT INTO custransaction
VALUES
    (2, 'Bob Williams', 120);

INSERT INTO custransaction
VALUES
    (3, 'Charlie Brown', 567);

INSERT INTO custransaction
VALUES
    (4, 'Diana Lee', 88);

INSERT INTO custransaction
VALUES
    (5, 'Ethan Davis', 410);
INSERT INTO custransaction
VALUES
    (6, 'jane', 345);

INSERT INTO custransaction
VALUES
    (7, 'bran', 160);

INSERT INTO custransaction
VALUES
    (8, 'Char', 557);

INSERT INTO custransaction
VALUES
    (9, ' Lee', 88);

INSERT INTO custransaction
VALUES
    (10, 'jake', 410);

select *
from custransaction;

--write a query to rank customers by their total transaction amounts in descending order
select *, rank() over(order by total_transaction_value desc) as rank
from Custransaction;

--order by total_transaction_value desc;


select transaction_value, sum(transaction_value) as total, rank() over(order by sum(transaction_value) desc)
from Custransaction
group by transaction_value;

select customer_id, sum(transaction_value) as total, rank() over(order by sum(transaction_value) desc)
from Custransaction
group by customer_id;


