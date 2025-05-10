CREATE TABLE Vehiclesdata (
    VehicleName VARCHAR(255),
    Color VARCHAR(50),
    Quantity INT,
    Price int
);



INSERT INTO Vehiclesdata VALUES
('Sedan', 'Blue', 5, 25000),
('SUV', 'Black', 3, 40000),
('Hatchback', 'Red', 8, 18000),
('Truck', 'White', 2, 55000),
('Motorcycle', 'Silver', 10, 8000),
('Van', 'Green', 4, 32000),
('Convertible', 'Yellow', 1, 60000),
('Coupe', 'Gray', 6, 30000),
('Minivan', 'Brown', 2, 38000),
('Electric Car', 'Purple', 7, 45000),
('Sedan', 'Red', 3, 26000),
('SUV', 'White', 5, 42000),
('Hatchback', 'Blue', 6, 19000),
('Truck', 'Black', 1, 58000),
('Motorcycle', 'Green', 9, 8500),
('Van', 'Silver', 3, 33000),
('Convertible', 'Orange', 2, 62000),
('Coupe', 'Yellow', 4, 31000),
('Minivan', 'Gray', 3, 39000),
('Electric Car', 'Brown', 8, 47000.00),
('Sedan', 'Black', 7, 27000.00),
('SUV', 'Red', 2, 43000.00),
('Hatchback', 'White', 4, 20000.00),
('Truck', 'Blue', 3, 60000.00),
('Motorcycle', 'Purple', 8, 9000.00),
('Van', 'Orange', 5, 34000.00),
('Convertible', 'Green', 1, 64000.00),
('Coupe', 'Silver', 7, 32000.00),
('Minivan', 'Yellow', 2, 40000.00),
('Electric Car', 'Gray', 6, 49000.00),
('Sedan', 'Brown', 4, 28000.00),
('SUV', 'Purple', 6, 44000.00),
('Hatchback', 'Orange', 2, 21000.00),
('Truck', 'Silver', 5, 62000.00),
('Motorcycle', 'Black', 10, 9500.00),
('Van', 'Red', 3, 35000.00),
('Convertible', 'Blue', 2, 66000.00),
('Coupe', 'Green', 8, 33000.00),
('Minivan', 'White', 4, 41000.00),
('Electric Car', 'Yellow', 7, 51000.00),
('Sedan', 'Gray', 5, 29000.00),
('SUV', 'Brown', 3, 45000.00),
('Hatchback', 'Purple', 7, 22000.00),
('Truck', 'Orange', 1, 64000.00),
('Motorcycle', 'Silver', 9, 10000.00),
('Van', 'Black', 4, 36000.00),
('Convertible', 'Red', 3, 68000.00),
('Coupe', 'Blue', 6, 34000.00),
('Minivan', 'Green', 2, 42000.00),
('Electric Car', 'White', 8, 53000.00),
('Sedan', 'Yellow', 6, 30000.00),
('SUV', 'Gray', 4, 46000.00),
('Hatchback', 'Brown', 3, 23000.00),
('Truck', 'Purple', 2, 66000.00),
('Motorcycle', 'Orange', 8, 10500.00),
('Van', 'Silver', 5, 37000.00),
('Convertible', 'Black', 1, 70000.00),
('Coupe', 'Red', 7, 35000.00),
('Minivan', 'Blue', 3, 43000.00),
('Electric Car', 'Green', 6, 55000.00),
('Sedan', 'White', 8, 31000.00),
('SUV', 'Yellow', 5, 47000.00),
('Hatchback', 'Gray', 4, 24000.00),
('Truck', 'Brown', 3, 68000.00),
('Motorcycle', 'Purple', 7, 11000.00),
('Van', 'Orange', 2, 38000.00),
('Convertible', 'Silver', 4, 72000.00),
('Coupe', 'Black', 9, 36000.00),
('Minivan', 'Red', 1, 44000.00),
('Electric Car', 'Blue', 5, 57000.00),
('Sedan', 'Green', 3, 32000.00),
('SUV', 'White', 6, 48000.00),
('Hatchback', 'Yellow', 2, 25000.00),
('Truck', 'Gray', 8, 70000.00),
('Motorcycle', 'Brown', 6, 11500.00),
('Van', 'Purple', 3, 39000.00),
('Convertible', 'Orange', 5, 74000.00),
('Coupe', 'Silver', 2, 37000.00),
('Minivan', 'Black', 7, 45000.00),
('Electric Car', 'Red', 4, 59000.00),
('Sedan', 'Blue', 1, 33000.00),
('SUV', 'Green', 8, 49000.00),
('Hatchback', 'White', 5, 26000.00),
('Truck', 'Yellow', 4, 72000.00),
('Motorcycle', 'Gray', 3, 12000.00),
('Van', 'Brown', 6, 40000.00),
('Convertible', 'Purple', 2, 76000.00),
('Coupe', 'Orange', 8, 38000.00),
('Minivan', 'Silver', 5, 46000.00),
('Electric Car', 'Black', 1, 61000.00),
('Sedan', 'Red', 7, 34000.00),
('SUV', 'Blue', 3, 50000.00),
('Hatchback', 'Green', 6, 27000.00);

select * from vehiclesdata;


--write a sql query to count the no of vehicles having the same color and quantity greater than 40?

select * 
from vehiclesdata

select color,sum(quantity)
from vehiclesdata
group by color
Having sum(quantity) >40;

----write a sql query to get the total price of each vehicle wrt to the color?

select vehiclename,color,sum(price*quantity)
from vehiclesdata
group by vehiclename,color;
