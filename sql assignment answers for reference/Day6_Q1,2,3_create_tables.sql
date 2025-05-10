--Create a journey table with following fields and constraints. 
--● Bus_ID (No null values) 
--● Bus_Name (No null values) 
--● Source_Station (No null values) 
--● Destination (No null values) 
--● Email (must not contain any duplicates)

CREATE TABLE journey
(
    BUS_ID INT NOT NULL,
    BUS_NAME VARCHAR(50) NOT NULL,
    SOURCE_STATION VARCHAR(255) NOT NULL,
    DESTINATION VARCHAR(255) NOT NULL,
    EMAIL VARCHAR(255) UNIQUE
    );

--Create vendor table with following fields and constraints. 
--● Vendor_ID (Should not contain any duplicates and should not be null) 
--● Name (No null values) 
--● Email (must not contain any duplicates) 
--● Country (If no data is available then it should be shown as “N/A”)

CREATE TABLE Vendor_ID
(
    VENDOR_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    EMAIL varchar(255) Unique,
    country varchar(50) DEFAULT 'N/A'
);


--Create movies table with following fields and constraints. 
--● Movie_ID (Should not contain any duplicates and should not be null) 
--● Name (No null values) 
--● Release_Year (If no data is available then it should be shown as “-”) 
--● Cast (No null values) 
--● Gender (Either Male/Female) 
--● No_of_shows (Must be a positive number

CREATE TABLE MOVIES
(
    MOVIE_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    RELEASE_YEAR DATE DEFAULT '-',
    CAST VARCHAR(50) NOT NULL,
    GENDER CHAR(10) NOT NULL,
    NO_OF_SHOWS INT CONSTRAINT CHK_A CHECK(NO_OF_SHOWS > 0)
);







