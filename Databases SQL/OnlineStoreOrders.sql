CREATE TABLE Customers(
	CustomerID int identity(1,1) PRIMARY KEY
	,Name varchar(255)
	,City varchar(255)
);

CREATE TABLE Products(
	ProductID int identity(1,1) PRIMARY KEY
	,ProductName nvarchar(255)
	,Category nvarchar(255)
	,UnitPrice float
);

CREATE TABLE Orders(
	OrderID int identity(1,1) PRIMARY KEY
	,CustomerID int FOREIGN KEY REFERENCES Customers(CustomerID)
	,OrderDate DATE
);

CREATE TABLE OrderLines(
	OrderLineID int identity(1,1) PRIMARY KEY 
	,OrderID int FOREIGN KEY REFERENCES Orders(OrderID)
	,ProductID int FOREIGN KEY REFERENCES Products(ProductID)
	,Quantity int
);


INSERT INTO Customers(Name,City)
VALUES
('Stuart Little','New York City')
,('Bob Ross','Los Angeles')
,('Jeremy Wlkerson','Chicago')
,('John Smith','Oklahoma City')
,('Jane Doe','Texas City')

INSERT INTO Products(ProductName,Category,UnitPrice)
VALUES
('Equate Baby Oil','Health & Beauty','3.98')
,('Hostess Twinkies','Food & Beverages','3.48')
,('Meow Mix Original Choice Dry Cat Food','Pet Care','29.97')
,('LEGO Star Wars Imperial Star Destroyer 75394','Toys & Hobbies','159.99')
,('IT: Stephen King','Media & Entertainment','18.25')

INSERT INTO Orders(CustomerID,OrderDate)
VALUES
(1,'1/12/2026')
,(2,'1/13/2026')
,(3,'1/14/2026')
,(4,'1/15/2026')
,(5,'1/16/2026')

INSERT INTO OrderLines(OrderID,ProductID,Quantity)
VALUES
(1,1,1)
,(2,2,2)
,(3,3,3)
,(4,4,4)
,(5,5,5)




DROP TABLE Customers
DROP TABLE Products
DROP TABLE Orders
DROP TABLE OrderLines
DELETE Customers
DELETE Products
DELETE Orders
DELETE OrderLines