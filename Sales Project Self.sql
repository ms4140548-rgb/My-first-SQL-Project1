
CREATE DATABASE SalesDB
USE SalesDB

CREATE TABLE Customers
(
	CustomerID INT PRIMARY KEY,
	CustomerName VARCHAR(100),
	City VARCHAR(50),
	State VARCHAR(50),
	JoinDate Date
	)
	
CREATE TABLE Products
	(

	ProductID INT PRIMARY KEY,
	ProductName VARCHAR(100),
	Category VARCHAR(50),
	Price DECIMAL(10,2)
	)

CREATE TABLE Sales
(
	SaleID INT PRIMARY KEY,
	CustomerID INT,
	ProductID INT,
	Quantity INT,
	SalesDate DATE,
	SalesPerson VARCHAR(100)
	
)

	-- Insert Customers Data

INSERT INTO Customers VALUES(1,'Madhav','Delhi','Delhi','2025-01-10')
INSERT INTO Customers VALUES(2,'Pankaj','Lucknow','UP','2025-02-15')
INSERT INTO Customers VALUES(3,'Sneha','Siwan','Bihar','2025-03-20')
INSERT INTO Customers VALUES(4,'Harshit','Delhi','Delhi','2025-04-05')
INSERT INTO Customers VALUES(5,'Trisha','Gurgaon','Haryana','2025-05-12')


-- Insert Product Data

INSERT INTO Products VALUES(101,'Laptop','Electronics',55000)
INSERT INTO Products VALUES(102,'Monitor','Electronics',15000)
INSERT INTO Products VALUES(103,'Keyboard','Accessories',2000)
INSERT INTO Products VALUES(104,'Mouse','Accesseries',1000)
INSERT INTO Products VALUES(105,'Printer','Electronics',12000)

-- Insert Sales Data

INSERT INTO Sales VALUES(1,1,101,1,'2025-06-01','Raj')
INSERT INTO Sales VALUES(2,2,102,2,'2025-06-03','Amit')
INSERT INTO Sales VALUES(3,3,103,5,'2025-06-05','Raj')
INSERT INTO Sales VALUES(4,1,104,2,'2025-06-10','Neha')
INSERT INTO Sales VALUES(5,4,105,1,'2025-06-12','Amit')
INSERT INTO Sales VALUES(6,5,101,1,'2025-06-15','Raj')
INSERT INTO Sales VALUES(7,3,104,3,'2025-06-01','Neha')
INSERT INTO Sales VALUES(8,2,103,2,'2025-06-01','Amit')


SELECT CustomerName   -- Display all customers
FROM Customers

SELECT ProductName	-- Display all products
FROM Products

SELECT Price       -- Display price above 10000
FROM Products
WHERE Price >10000
		
SELECT CustomerName  -- Display Customer from Delhi only.
FROM Customers
WHERE City = 'Delhi'







	