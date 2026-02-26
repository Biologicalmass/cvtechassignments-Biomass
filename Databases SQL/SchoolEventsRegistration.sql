CREATE TABLE Events(
	EventID int identity(1,1) PRIMARY KEY
	,EventName varchar(255)
	,EventDate DATE
);

CREATE TABLE Students(
	StudentID int Identity(1,1) PRIMARY KEY
	,Name nvarchar(255)
);

CREATE TABLE Registrations(
	RegID int identity(1,1) PRIMARY KEY
	,EventID int FOREIGN KEY REFERENCES Events(EventID)
	,StudentID int FOREIGN KEY REFERENCES Students(StudentID)
	,Status varchar(255)
);

CREATE TABLE Cancellations(
	CancelID int identity(1,1) PRIMARY KEY
	,EventID int FOREIGN KEY REFERENCES Events(EventID)
	,StudentID int FOREIGN KEY REFERENCES Students(StudentID)
	,CancelDate DATE
);



INSERT INTO Events(EventName,EventDate)
VALUES
('Prom','01/18/2026')
,('Science fair','01/27/2026')
,('Club fair','02/03/2026')
,('Graduation ceremony','02/14/2026')
,('Field day','02/26/2026')
,('School assembly','03/05/2026')
,('Homecoming game','03/17/2026')
,('Homecoming dance','04/02/2026')
,('Talent show','04/16/2026')
,('Band concert','05/04/2026')
,('Bake sale','09/07/2026')
,('Field Trip','09/18/2026')
,('Musical','10/03/2026')
,('Spirit week','11/12/2026')
,('Field Trip','12/19/2026')

INSERT INTO Students(Name)
VALUES
('Tracy Scott')
,('Alex Martinez')
,('Jordan Nguyen')
,('Emily Carter')
,('Daniel Thompson')
,('Sofia Ramirez')
,('Maya Johnson')
,('Hannah Lee')
,('Ryan Patel')
,('Olivia Brooks')
,('Ethan Walker')
,('Jackie Chan')
,('Lucas Hernandez')
,('Natalie Kim')
,('Benjamin Foster')

INSERT INTO Registrations(EventID,StudentID,Status)
VALUES
(1,1,'Cancelled')
,(2,2,'Registered')
,(3,3,'Waitlisted')
,(4,4,'Cancelled')
,(5,5,'Registered')
,(6,6,'Waitlisted')
,(7,7,'Cancelled')
,(8,8,'Registered')
,(9,9,'Waitlisted')
,(10,10,'Cancelled')
,(11,11,'Registered')
,(12,12,'Waitlisted')
,(13,13,'Cancelled')
,(14,14,'Registered')
,(15,15,'Waitlisted')


INSERT INTO Cancellations(EventID,StudentID,CancelDate)
VALUES
(1,1,'01/11/2026')
,(2,2,'01/20/2026')
,(3,3,'01/27/2026')
,(4,4,'02/07/2026')
,(5,5,'02/19/2026')
,(6,6,'02/26/2026')
,(7,7,'03/10/2026')
,(8,8,'03/26/2026')
,(9,9,'04/09/2026')
,(10,10,'04/27/2026')
,(11,11,'08/31/2026')
,(12,12,'09/11/2026')
,(13,13,'09/26/2026')
,(14,14,'11/05/2026')
,(15,15,'12/12/2026')

--The bugged Union thing
SELECT Students.Name, Events.EventName, Registrations.Status 
FROM Registrations
INNER JOIN Events ON Registrations.EventID = Events.EventID
INNER JOIN Students ON Registrations.StudentID = Students.StudentID
WHERE Registrations.Status = 'Cancelled' OR Registrations.Status = 'Registered'

--INTERSECT 
SELECT Students.Name, Events.EventName
FROM Registrations
INNER JOIN Students ON Registrations.StudentID = Students.StudentID
INNER JOIN Events ON Registrations.EventID = Events.EventID
WHERE Events.EventID = 7
INTERSECT
SELECT Students.Name, Events.EventName
FROM Registrations
INNER JOIN Students ON Registrations.StudentID = Students.StudentID
INNER JOIN Events ON Registrations.EventID = Events.EventID
WHERE Events.EventID = 12

--Distinct
SELECT DISTINCT Students.StudentID FROM Students


DROP TABLE Events
DROP TABLE Students
DROP TABLE Registrations
DROP TABLE Cancellations
DELETE Events
DELETE Students
DELETE Registrations
DELETE Cancellations