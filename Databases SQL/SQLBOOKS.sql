--delete Books
--drop table Books

CREATE TABLE Books (
	BookID int identity(1,1) NOT NULL PRIMARY KEY
	,Title Nvarchar(255) 
	,Author varchar(255)
	,Genre varchar(255)
	,PublicationYear int
	,ReadingLevel varchar(255)
	,CheckedOut varchar(255)
);

INSERT INTO Books (Title, Author, Genre, PublicationYear, ReadingLevel, CheckedOut)
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 'Tragedy',1925 ,'9-12','Yes')
,('1984', 'George Orwell', 'Dystopian',1949 ,'9-12','No')
,('To Kill a Mockingbird', 'Harper Lee', 'Southern Gothic',1960 ,'9-10','No')
,('The Catcher in the Rye', 'J. D. Salinger', 'Coming-of-Age', 1951, '9-10', 'Yes')
,('The Lord of the Rings', 'J. R. R. Tolkien', 'High Fantasy', 1954, '10-12','Yes' )
,('The Hitchhiker’s Guide to the Galaxy', 'Douglas Adams', 'Science Fiction', 1979, '7-9','No')
,('The Chronicles of Narnia', 'C. S. Lewis', 'Fantasy', 1950, '4-7', 'No')
,('Pride and Prejudice', 'Jane Austen', 'Romance', 1813, '11-12', 'Yes')
,('Brave New World', 'Aldous Huxley', 'Dystopian', 1932, '10-12','No')
,('The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic Fiction', 1890, '11-12','Yes')


--SELECT * FROM Books


--Select all books from Douglas Adams
SELECT * FROM Books
WHERE Author='Douglas Adams'

-- Sort by title or year
SELECT * FROM Books
ORDER BY Title

select * from Books
order by PublicationYear desc

--Filter by genre and reading level
SELECT * FROM Books
WHERE Genre='Dystopian' AND ReadingLevel Like '9%'