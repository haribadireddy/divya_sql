--Create the following tables. Use auto increment wherever applicable 
--(a). Product 
--✔ product_id - primary key 
--✔ product_name - cannot be null and only unique values are allowed 
--✔ description 
--✔ supplier_id - foreign key of supplier table

CREATE TABLE PRODUCT
(
    PRODUCT_ID INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(50) UNIQUE NOT NULL,
    DESCRIPTION TEXT,
    SUPPLIER_ID INT,
    FOREIGN KEY (SUPPLIER_ID) REFERENCES Suppliers(SUPPLIER_ID)
);


--(b). Suppliers 
--✔ supplier_id - primary key 
--✔ supplier_name 
--✔ location

CREATE TABLE SUPPLIERS
(
    SUPPLIER_ID INT PRIMARY KEY ,
    SUPPLIER_NAME VARCHAR(50),
    LOCATION CHAR(10)
);


--(C). Stock 
--✔ id - primary key 
--✔ product_id - foreign key of product table 
--✔ balance_stock

CREATE TABLE STOCK
(
    ID INT PRIMARY KEY,
    PRODUCT_ID INT,
    BALANCE_STOCK INT,
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);