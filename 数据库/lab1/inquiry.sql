USE Library;


#1
SELECT ID,address
FROM Reader
WHERE name='Rose'

# 2
SELECT Book.name,Borrow_DATE
FROM Book,Reader,Borrow
WHERE Reader.name='Rose' AND Borrow.Reader_ID=Reader.ID AND Borrow.book_ID=Book.ID

SELECT Reader.name
FROM Reader
WHERE Reader.ID NOT IN(
    SELECT Reader_ID
    FROM Borrow
)

SELECT name,price
FROM Book
WHERE author = 'Ullman' 

SELECT Book.ID , Book.name 
FROM Book,Reader,Borrow
WHERE Reader.name='李林' AND Borrow.Return_Date IS NULL AND Borrow.Reader_ID=Reader.ID AND Borrow.book_ID=Book.ID

SELECT Reader.name , Borrow.Reader_ID
FROM Reader , Borrow
WHERE Borrow.Reader_ID=Reader.ID
GROUP BY Borrow.Reader_ID
HAVING COUNT(*) > 3

SELECT Reader.name , Reader.ID
FROM Reader
WHERE Reader.ID NOT IN(
    SELECT Borrow.Reader_ID
    FROM Borrow
    WHERE Borrow.book_ID in(
        SELECT Book.ID 
        FROM Book,Reader,Borrow
        WHERE Reader.name='李林' AND Borrow.Return_Date IS NULL AND Borrow.Reader_ID=Reader.ID AND Borrow.book_ID=Book.ID
    )
)

SELECT name , ID
FROM Book 
WHERE name LIKE '%MySQL%'

SELECT Reader.ID , Reader.name , Reader.age , COUNT(*) AS borrow_count
FROM Reader , Book , Borrow
WHERE Borrow.Reader_ID=Reader.ID AND Borrow.book_ID=Book.ID AND YEAR(Borrow_Date) = 2021
GROUP BY Borrow.Reader_ID 
ORDER BY COUNT(*) DESC
LIMIT 20

DROP VIEW Borrow_detail

CREATE VIEW Borrow_Detail 
AS
SELECT Borrow.Reader_ID  , Reader.name as Reader_name , Borrow.book_ID , Book.name as Book_name , Borrow.Borrow_Date
FROM Reader , Book , Borrow
WHERE Borrow.Reader_ID=Reader.ID AND Borrow.book_ID=Book.ID
WITH CHECK OPTION;


SELECT Reader_ID , COUNT(*) AS Borrow_count
FROM Borrow_detail
WHERE Borrow_DATE >= DATE_SUB(CURDATE() , INTERVAL 1 YEAR)
GROUP BY Reader_ID

