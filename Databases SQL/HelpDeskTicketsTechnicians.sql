Delete Tickets
Delete Technicians
drop table Tickets
drop table Technicians

CREATE TABLE Technicians(
	TechID int identity(1,1) PRIMARY KEY
	,Name varchar(255)
	,SkillLevel varchar(255)
);

CREATE TABLE Tickets(
	TicketID int identity(1,1) PRIMARY KEY
	,OpenDate DATE
	,CloseDate DATE
	,Status varchar(255)
	,TechID int FOREIGN KEY REFERENCES Technicians(TechID)
);

INSERT INTO Technicians(Name, SkillLevel)
VALUES
('Will Turner','Advanced')
,('Bob Ross','Seinor')
,('Duke Weasleton','Intermediate')
,('William Afton','Master')
,('Aragorn Telcontar','Entry')

INSERT INTO Tickets(OpenDate,CloseDate,Status,TechID)
VALUES
('02/05/2026','02/18/2026','Resolved','1')
,('03/14/2026','04/02/2026','In Progress','2')
,('05/09/2026','05/25/2026','New','3')
,('07/21/2026','08/10/2026','Closed','4')
,('09/03/2026','09/22/2026','Pending','5')
,('01/30/2026','12/15/2026','On Hold','2')

--Inner Join--
SELECT Tickets.TicketID, Technicians.Name, Tickets.Status
FROM Tickets
INNER JOIN Technicians ON Tickets.TechID = Technicians.TechID;

--Left join--
SELECT Tickets.TicketID, Technicians.Name, Tickets.Status
FROM Tickets
LEFT JOIN Technicians ON Tickets.TechID = Technicians.TechID;




SELECT DATEDIFF(Day, OpenDate, CloseDate) AS TicketAge from Tickets