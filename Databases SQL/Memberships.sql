CREATE TABLE Students (
StudentID int identity(1,1) PRIMARY KEY
,Name nvarchar(255)
,Grade varchar(255)
);


CREATE TABLE Clubs (
ClubID int identity(1,1) PRIMARY KEY
,ClubName nvarchar(255)
, Advisor nvarchar(255)
);

CREATE TABLE Memberships (
MembershipID int identity(1,1)
,StudentID int FOREIGN KEY REFERENCES Students(StudentID)
,ClubID int FOREIGN KEY REFERENCES Clubs(ClubID)
,JoinDate DATE
);

INSERT INTO Students (Name, Grade)
VALUES
('Timmy','A')
,('Tod','B')
,('Tucker','F')

INSERT INTO Clubs (ClubName, Advisor)
VALUES
('Soccer','Arnie')
,('Basketball','Bennet')
,('Band','Farly')

INSERT INTO Memberships (StudentID, ClubID, JoinDate)
VALUES
('1','1','01/07/2026')
,('2','2','01/07/2026')
,('3','3','01/07/2026')


SELECT Memberships.membershipID, Students.Name, Clubs.ClubName, Memberships.JoinDate
FROM ((Memberships
INNER JOIN	Students ON Memberships.StudentID = Students.StudentID)
INNER JOIN Clubs ON Memberships.ClubID = Clubs.ClubID); 
--SELECT * FROM Memberships

