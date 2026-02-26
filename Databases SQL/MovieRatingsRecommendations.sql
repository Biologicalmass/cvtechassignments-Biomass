CREATE TABLE Movies(
	MovieID int identity(1,1) PRIMARY KEY
	,Title varchar(255)
	,Genre varchar(255)
	,ReleaseYear int
);

CREATE TABLE Ratings(
	RatingID int identity(1,1) PRIMARY KEY
	,MovieID int FOREIGN KEY REFERENCES Movies(MovieID)
	,StudentID int
	,RatingValue float
	,RatingDate DATE);

INSERT INTO Movies(Title,Genre,ReleaseYear)
VALUES
('Mad Max: Fury Road','Action','2015')
,('Get Out','Horror','2017')
,('The Grand Budapest Hotel','Comedy','2014')
,('Arrival','Sci-Fi','2016')
,('Parasite','Thriller','2019')
,('Everything Everywhere All at Once','Adventure','2022')
,('No Country for Old Men','Crime','2007')
,('Her','Romance','2013')
,('Whiplash','Drama','2014')
,('Blade Runner 2049','Sci-Fi','2017')

INSERT INTO Ratings(MovieID,StudentID, RatingValue,RatingDate)
VALUES
('1','1',8.1,'01/13/2026')
,('2','2',7.8,'01/13/2026')
,('3','3',8.1,'01/13/2026')
,('4','4',7.9,'01/13/2026')
,('5','5',8.5,'01/13/2026')
,('6','6',7.8,'01/13/2026')
,('7','7',8.2,'01/13/2026')
,('8','8',8.0,'01/13/2026')
,('9','9',8.5,'01/13/2026')
,('10','10',8.0,'01/13/2026')



SELECT * FROM Movies
SELECT * FROM Ratings




DROP TABLE Movies
DROP TABLE Ratings
DELETE Movies
DELETE Ratings


--Average of Rating Value
SELECT AVG(RatingValue) AS RatingValueAVG, Title
FROM Ratings
LEFT JOIN Movies ON Ratings.MovieID = Movies.MovieID
GROUP BY Title;


--Top 5 Highest ratings
SELECT TOP 5 * FROM Ratings
ORDER BY RatingValue DESC;

--Minimum rating genre Having
SELECT MIN(RatingValue) AS Ratings, Genre, Title
FROM Ratings
LEFT JOIN Movies
ON Ratings.MovieID = Movies.MovieID
GROUP BY Genre, Title
HAVING MIN(RatingValue) >= 8
ORDER BY MIN(RatingValue) ASC;