use sales_db;
-- Create before insert trigger to make sure any new value of Working_hours, if it is negative, then it 
-- should be inserted as positive.

CREATE TABLE Emp_BIT (
    Name VARCHAR(255),
    Occupation VARCHAR(255),
    Working_date DATE,
    Working_hours INT
);

INSERT INTO Emp_BIT VALUES
    ('Robin', 'Scientist', '2020-10-04', 12),
    ('Warner', 'Engineer', '2020-10-04', 10),
    ('Peter', 'Actor', '2020-10-04', 13),
    ('Marco', 'Doctor', '2020-10-04', 14),
    ('Brayden', 'Teacher', '2020-10-04', 12),
    ('Antonio', 'Business', '2020-10-04', 11);


CREATE TRIGGER positiveWorkingHours
BEFORE INSERT ON Emp_BIT
FOR EACH ROW
BEGIN
    IF NEW.Working_hours < 0 THEN
        SET NEW.Working_hours = ABS(NEW.Working_hours);
    END IF;
END;


