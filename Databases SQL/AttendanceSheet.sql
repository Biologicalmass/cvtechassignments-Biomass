	CREATE TABLE	 Attendance (
	AttendanceID int identity(1,1) PRIMARY KEY
	,StudentID int
	,StudentName NVARCHAR(255)
	,Date DATE
	,Status VARCHAR(255)
	,Notes NVARCHAR(255)
	);


--SELECT * FROM Attendance
--DROP TABLE Attendance;
--DELETE FROM Attendance;

INSERT INTO Attendance (StudentID,StudentName,Date,Status,Notes)
VALUES 
-- Monday 01/05/2026
('1','Alex Johnson','01/05/2026','Absent', 'L+RATIO')
,('2','Maria Lopez','01/05/2026','Present','POGGERS')
,('3','Daniel Kim','01/05/2026','Present','POGGERS')
,('4','Sarah Williams','01/05/2026','Present','POGGERS')
,('5','James Carter','01/05/2026','Absent','L+RATIO')
,('6','Emily Nguyen','01/05/2026','Present','POGGERS')
,('7','Michael Brown','01/05/2026','Present','POGGERS')
,('8','Olivia Martinez','01/05/2026','Present','POGGERS')
,('9','Christopher Lee','01/05/2026','Absent','L+RATIO')
,('10','Hannah Wilson','01/05/2026','Present','POGGERS')
-- Tuesday 01/06/2026
,('1','Alex Johnson','01/06/2026','Present','POGGERS')
,('2','Maria Lopez','01/06/2026','Absent','L+RATIO')
,('3','Daniel Kim','01/06/2026','Present','POGGERS')
,('4','Sarah Williams','01/06/2026','Present','POGGERS')
,('5','James Carter','01/06/2026','Present','POGGERS')
,('6','Emily Nguyen','01/06/2026','Absent','L+RATIO')
,('7','Michael Brown','01/06/2026','Present','POGGERS')
,('8','Olivia Martinez','01/06/2026','Present','POGGERS')
,('9','Christopher Lee','01/06/2026','Present','POGGERS')
,('10','Hannah Wilson','01/06/2026','Absent','L+RATIO')
-- Wednesday 01/07/2026
,('1','Alex Johnson','01/07/2026','Present','POGGERS')
,('2','Maria Lopez','01/07/2026','Present','POGGERS')
,('3','Daniel Kim','01/07/2026','Absent','L+RATIO')
,('4','Sarah Williams','01/07/2026','Present','POGGERS')
,('5','James Carter','01/07/2026','Present','POGGERS')
,('6','Emily Nguyen','01/07/2026','Present','POGGERS')
,('7','Michael Brown','01/07/2026','Absent','L+RATIO')
,('8','Olivia Martinez','01/07/2026','Present','POGGERS')
,('9','Christopher Lee','01/07/2026','Present','POGGERS')
,('10','Hannah Wilson','01/07/2026','Present','POGGERS')
-- Thursday 01/08/2026
,('1','Alex Johnson','01/08/2026','Absent','L+RATIO')
,('2','Maria Lopez','01/08/2026','Present','POGGERS')
,('3','Daniel Kim','01/08/2026','Present','POGGERS')
,('4','Sarah Williams','01/08/2026','Absent','L+RATIO')
,('5','James Carter','01/08/2026','Present','POGGERS')
,('6','Emily Nguyen','01/08/2026','Present','POGGERS')
,('7','Michael Brown','01/08/2026','Present','POGGERS')
,('8','Olivia Martinez','01/08/2026','Absent','L+RATIO')
,('9','Christopher Lee','01/08/2026','Present','POGGERS')
,('10','Hannah Wilson','01/08/2026','Present','POGGERS')
-- Friday 01/09/2026
,('1','Alex Johnson','01/09/2026','Present','POGGERS')
,('2','Maria Lopez','01/09/2026','Present','POGGERS')
,('3','Daniel Kim','01/09/2026','Absent','L+RATIO')
,('4','Sarah Williams','01/09/2026','Present','POGGERS')
,('5','James Carter','01/09/2026','Absent','L+RATIO')
,('6','Emily Nguyen','01/09/2026','Present','POGGERS')
,('7','Michael Brown','01/09/2026','Present','POGGERS')
,('8','Olivia Martinez','01/09/2026','Present','POGGERS')
,('9','Christopher Lee','01/09/2026','Absent','L+RATIO')
,('10','Hannah Wilson','01/09/2026','Present','POGGERS');
--ANOTHER DELETE
drop table Attendance
delete Attendance
--UPDATE
UPDATE Attendance
SET Status = 'Present', Notes = 'POGGERS'
WHERE AttendanceID = 20
--Finds Absences among individuals
SELECT COUNT(Status)
FROM Attendance
WHERE  Status = 'Absent' AND StudentName = 'Christopher Lee';

