-- Refining Selection

-- Seeding More Data In books tables from previous chapter.
INSERT INTO books (title, author_fname, author_lname, 
released_year, stock_quantity, pages) VALUES 
('10% Happier', 'Den', 'Harris', 2014, 29, 256),
('Fake Book', 'Frieda', 'Harris', 2001, 287, 428),
('Lincoln In The Bardo', 'George', 'Saunder', 2017, 1000, 387);

-- DISTINCT - Return Unique Set of Data;
SELECT DISTINCT author_lname FROM books;
SELECT DISTINCT released_year FROM books;
SELECT DISTINCT CONCAT(author_fname, ' ' ,author_lname) FROM books;

SELECT DISTINCT author_fname, author_lname FROM books;

-- ORDER BY - SORTING
SELECT author_lname FROM books ORDER BY author_lname; -- By Default Ascending Order
SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT * FROM books ORDER BY released_year;
SELECT * FROM books ORDER By released_year DESC;
-- Shortcut To Provide ORDER BY Condition
SELECT author_fname, author_lname, released_year FROM books ORDER By 2;

SELECT * FROM books ORDER BY author_lname, author_fname;


-- LIMIT - Limit Results
SELECT * FROM books LIMIT 3;
SELECT * FROM books ORDER BY stock_quantity DESC LIMIT 3;
SELECT * FROM books ORDER BY released_year DESC LIMIT 4;
-- Can Do This - Specifying Starting Point - For Pagination
SELECT * FROM books ORDER BY released_year DESC LIMIT 0, 4;


-- LIKE - Search Pattern - For Search Functionality
-- %Characters% --> Called Wildcards

-- Containing The Pattern
SELECT * FROM books WHERE author_fname LIKE '%da%';

-- Only Start With The Pattern
SELECT * FROM books WHERE author_fname LIKE 'da%';
-- Only End With The Pattern
SELECT * FROM books WHERE author_fname LIKE '%da';

-- "_" --> Underscores - Another Wildcard
-- Number of Underscores = Number of Digits
SELECT * FROM books WHERE stock_quantity LIKE '____';

-- Escaping Wildcards
SELECT * FROM books WHERE title LIKE '%\%%';
SELECT * FROM books WHERE title LIKE '%\_%';


-- EXERCISE
SELECT title FROM books where title like '%stories%';
select title, pages from books order by pages desc limit 1;
select concat(title, ' - ', released_year) from books order by released_year desc limit 3;
select title, author_lname from books where author_lname like '% %';
select title, released_year, stock_quantity from books order by stock_quantity limit 3;
select title, author_lname from books order by author_lname, title;
select upper(concat('My Favourite Author Is ', author_fname, ' ', author_lname, '!')) AS yell from books order by author_lname;