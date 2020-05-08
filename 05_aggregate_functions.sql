-- Aggregate Functions

-- Count Function
SELECT COUNT(*) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
SELECT COUNT(DISTINCT author_fname, author_lname) FROM books;
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- GROUP BY FUNCTION - GROUP THE DATA ON WHICH WE CAN RUN AGGREGATE FUNCTIONS
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_fname, author_lname;
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') FROM books GROUP BY released_year;

-- Min and Max Function
SELECT MIN(released_year) FROM books;
SELECT MIN(pages) FROM books;
SELECT MAX(pages) FROM books;
-- GETTING TITLE OF LONGEST or SHORTEST BOOK
    -- SOLUTION 1: SUBQUERY - Slower Execution
SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);
SELECT * FROM books WHERE pages = (SELECT MIN(pages) FROM books);
    -- SOLUTION 2: ORDER BY 
SELECT * FROM books ORDER BY pages ASC LIMIT 1; 
SELECT * FROM books ORDER BY pages DESC LIMIT 1;
-- Using Min and Max With Group By 
-- Find The Year Each Author Published Thier First Book
SELECT author_fname, author_lname, Min(released_year) FROM books GROUP BY author_fname, author_lname;
-- Find The Year Each Author Published Thier Last Released Book
SELECT author_fname, author_lname, Max(released_year) FROM books GROUP BY author_fname, author_lname;
-- Find The Book Which Contains The Max Pages of Each Author
SELECT author_fname, author_lname, Max(pages) FROM books GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, Max(pages) AS 'LONGEST BOOK' FROM books GROUP BY author_fname, author_lname ORDER BY pages DESC;



-- SUM FUNCTION
SELECT SUM(pages) FROM books;
SELECT author_fname, author_lname, SUM(pages) as 'Total Number of Pages' FROM books GROUP BY author_fname, author_lname;


-- AVG FUNCTION
SELECT AVG(pages) FROM books;
SELECT author_fname, author_lname, AVG(pages) as 'Avg. Number of Books' FROM books GROUP BY author_fname, author_lname;