CREATE TABLE Items(
ItemID int identity(1,1) PRIMARY KEY
,Name nvarchar(255)
,Category varchar(255)
,Units varchar(255)
);

CREATE TABLE Inventory(
	ItemID int identity(1,1) FOREIGN KEY REFERENCES Items(ItemID)
	,QuantityOnHand int
	,ReorderLevel int
);
CREATE TABLE Donations(
	DonationID int identity(1,1) PRIMARY KEY
	,ItemID int fOREIGN KEY REFERENCES Items(ItemID)
	,Quantity int
	,DonationDate DATE
);

INSERT INTO Items(Name,Category,Units)
VALUES
('Beans','Canned','10lb')
,('Ham','Frozen','20T')
,('Yams','Canned','4lb')
,('Turkey','Frozen','10lb')
,('Potatoes','Canned','67lb')

INSERT INTO Inventory(QuantityOnHand,ReorderLevel)
VALUES
('22','1')
,('2','1')
,('6','1')
,('9','93')
,('67','1')

INSERT INTO Donations(ItemID,Quantity,DonationDate)
VALUES
('1','4','01/09/2026')
,('2','1','01/09/2026')
,('3','3','01/09/2026')
,('4','6','01/09/2026')
,('5','5','01/09/2026')

DELETE Items
DELETE Inventory
DELETE Donations
DROP TABLE Items
DROP TABLE Inventory
DROP TABLE Donations

SELECT * FROM Inventory
WHERE QuantityOnHand < ReorderLevel

SELECT SUM(Quantity) AS Quantity, Name
FROM Donations
LEFT JOIN Items
ON Donations.ItemID = Items.ItemID
GROUP BY Name

UPDATE Donations
SET Quantity = '14', DonationDate = '01/09/2048'
WHERE ItemID = 2

SELECT * FROM Donations