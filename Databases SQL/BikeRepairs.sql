CREATE TABLE Customers(
	CustomerID int  PRIMARY KEY
	,Name nvarchar(255)
	,Phone nvarchar(255)
);
CREATE TABLE Bikes(
	BikeID int  PRIMARY KEY
	,CustomerID int FOREIGN KEY REFERENCES Customers(CustomerID)
	,Model nvarchar(255)
	,Color varchar(255)
);
CREATE TABLE Repairs(
	RepairID int  PRIMARY KEY
	,BikeID int FOREIGN KEY REFERENCES Bikes(BikeID)
	,DropOffDate DATE
	,Status nvarchar(255)
	,CostEstimate nvarchar(255)
);

INSERT INTO Customers (CustomerID,Name,Phone)
VALUES
('1','Ethan Walker', '(555) 010-4832')
,('2','Lucas Bennett','(555) 012-9471')
,('3','Maya Collins','(555) 013-6029')
,('4','Priya Shah','(555) 014-7718')
,('5','Oliver Grant','(555) 015-3394')
,('6','Sofia Ramirez','(555) 016-8205')
,('7','Tom Wilkerson','(555) 079-9913')

INSERT INTO Bikes (BikeID,CustomerID,Model,Color)
VALUES
('1','1','Mountain Bike','Forest green')
,('2','2','Hybrid Bike','Teal')
,('3','3','City Bike','Gray')
,('4','4','Electric Bike','White')
,('5','5','Gravel Bike','Burnt orange')
,('6','6','Cruiser Bike','Yellow')
,('7','7','tester Bike','Blue')

INSERT INTO Repairs(RepairID, BikeID, DropOffDate, Status, CostEstimate)
VALUES
('1','1','01/14/2026','Ready for Pickup','$12')
,('2','2','03/27/2026','Checked In','$65')
,('3','3','05/09/2026','On Hold','$70')
,('4','4','06/18/2026','In Progress','$15')
,('5','5','08/02/2026','In Queue','$48')
,('6','6','10/21/2026','Test Ride','$22')
,('7','7','12/07/2026','In Progress','$88')--This is going to be deleted

select * from Customers
select * from Bikes
SELECT * FROM Repairs
DROP TABLE Customers
DROP TABLE Bikes
DROP TABLE Repairs
DELETE Bikes
DELETE Customers
delete Repairs

SELECT Repairs.RepairID, Customers.Name, Bikes.Model, Repairs.Status
FROM ((Bikes
INNER JOIN 
Customers ON Bikes.CustomerID = Customers.CustomerID)
INNER JOIN
Repairs ON Bikes.BikeID = Repairs.BikeID);

UPDATE Repairs
SET Status = 'Ready for Pickup', CostEstimate = '$27'
WHERE RepairID = 3

DELETE FROM Repairs
WHERE
RepairID = 7