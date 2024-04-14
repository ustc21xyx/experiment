USE Library;


#1
SELECT ID,address
FROM Reader
WHERE name='Rose'

# 2
SELECT Book.name,Borrow_DATE
FROM Book,Reader,Borrow
WHERE Reader.name='Rose' AND Borrow.Reader_ID=Reader.ID AND Borrow.book_ID=Book.ID