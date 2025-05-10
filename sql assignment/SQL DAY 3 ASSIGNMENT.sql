create database ASSIGNMENT;

--CREATE CUSTOMER TABLE

CREATE TABLE CUSTOMERS
(
    CUSTOMER_NO INT,
    CUSTOMER_NAME VARCHAR(255),
    STATE VARCHAR(50),
    CREDIT_LIMIT DECIMAL(10,2)
);

--INSERT VALUES

INSERT INTO CUSTOMERS VALUES(1, 'Priya Sharma', 'Telangana', 15000.00),
(2, 'Amit', 'Maharashtra', 28000.50),
(3, 'Sneha', 'Uttar Pradesh', 65000.75),
(4, 'Rahul', 'Punjab', 19000.00),
(5, 'Deepika', 'Andhra Pradesh', 32000.25),
(6, 'Vikram', 'Rajasthan', 80000.50),
(7, 'Anjali', 'Bihar', 22000.00),
(8, 'Suresh', 'Delhi', 140050.75),
(9, 'Kiran', 'West Bengal', 20000.00),
(10, 'Meena', 'Kerala', 11000.25),
(11, 'Sharma', NULL, 58000.00);

SELECT * FROM CUSTOMERS;

--Show customer number, customer name, state and credit limit from customers table for below 
--conditions. Sort the results by highest to lowest values of creditLimit. 
-- State should not contain null values
-- credit limit should be between 50000 and 100000

SELECT CUSTOMER_NO,CUSTOMER_NAME,STATE,CREDIT_LIMIT
FROM CUSTOMERS
WHERE STATE IS NOT NULL
AND CREDIT_LIMIT BETWEEN 50000 AND 100000;

