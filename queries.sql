-- Get all borrowed books
SELECT title, name
FROM Books
JOIN Loans ON Books.book_id = Loans.book_id
JOIN Members ON Loans.member_id = Members.member_id;

-- Count books per author
SELECT Authors.name, COUNT(Books.book_id)
FROM Authors
LEFT JOIN Books ON Authors.author_id = Books.author_id
GROUP BY Authors.name;
