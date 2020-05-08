-- String Functions

-- Creating Book Data To Work With
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);


-- CONCAT String Function
SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS full_name FROM books;

-- CONCAT_WS String Function (Concat With Separator)
SELECT CONCAT_WS('-', title, author_fname, author_lname) FROM books;

-- SUBSTRING String Function - In MySQL String Index Starts From 1 (Not From Zero)
SELECT SUBSTRING('Hello World', 1, 4); -- Start From 1 and End At 4.
SELECT SUBSTRING('Hello World', 7) -- Start From 7 and End At the End of the string.
SELECT SUBSTRING('Hello World', -3) -- Start From The Last

SELECT SUBSTRING(title, 1, 10) FROM books;

-- ALTERNATE FUNCTION FOR SUBSTRING --> SBUSTR
SELECT SUBSTR(title, 1, 10) FROM books;

SELECT CONCAT(SUBSTRING(title, 1, 15), '...') AS short_title FROM books;


-- REPLACE String Function
SELECT REPLACE ('Hello World', 'Hell', '&&&^%');
SELECT REPLACE ('Abhishek Dylan Jonas Kora', ' ', '-');
SELECT REPLACE(title, 'e', '$') FROM books;

-- REVERSE String Function
SELECT REVERSE('Hello World');
SELECT REVERSE(title) FROM books;

-- CHAR_LENGTH String Function
SELECT CHAR_LENGTH('Hello World');
SELECT CHAR_LENGTH(author_lname) FROM books;
SELECT title, CHAR_LENGTH(title) AS title_length FROM books;

SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' Characters Long') FROM books;

-- UPPER String Function
SELECT UPPER(title) FROM books;
SELECT UPPER('hello world');
-- LOWER String Function
SELECT LOWER('HELLO WORLD');
SELECT LOWER(title) FROM books;