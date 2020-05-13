-- Logical Operators
    -- In MySQL Returns 1 For True and 0 For False.
    -- Strings Comparison Takes Place Alphabetically
        -- e.g. 'a' > 'b' => 0
        -- e.g. 'a' < 'b' => 1
    -- In MySQL Strings Comparison Is Case-Insesitive.
        -- e.g. 'a' = 'A' => True(1)

-- Not Equal Operator (!=)
SELECT title, released_year FROM books 
WHERE released_year != 2017;

SELECT title, author_lname FROM books 
WHERE author_lname != 'Harris';

-- Not Like Operator (NOT LIKE)
SELECT title FROM books 
WHERE title NOT LIKE 'w%'; -- Select Books Titled Not Starting With W.

-- Greater Than Operator (>)
SELECT title, released_year FROM books 
WHERE released_year > 2000;

SELECT title, released_year, pages FROM books 
WHERE pages > 200;

-- Greater Than or Equal To Operator (>=)
SELECT title, released_year FROM books 
WHERE released_year >= 2000;

SELECT title, released_year, pages FROM books 
WHERE pages >= 200;

-- Less Than Operator (<)
SELECT title, released_year FROM books 
WHERE released_year < 2000;

SELECT title, released_year, pages FROM books 
WHERE pages < 200;

-- Less Than or Equal To Operator (<=)
SELECT title, released_year FROM books 
WHERE released_year <= 2000;

SELECT title, released_year, pages FROM books 
WHERE pages <= 200;

-- AND Operator (&&)<--->(AND)
SELECT title, author_lname, pages FROM books 
WHERE author_lname = 'harris' && pages > 260;

SELECT title, author_lname, released_year FROM books
 WHERE author_lname = 'eggers' AND released_year > 2010;

SELECT * FROM books 
WHERE author_lname = 'eggers' AND released_year > 2010 AND title LIKE '%novel%';


-- OR Operator (||)<--->(OR)
SELECT title, author_lname, released_year FROM books 
WHERE author_lname = 'eggers' || released_year > 2010;

SELECT title, author_lname, released_year, stock_quantity FROM books 
WHERE author_lname = 'eggers' OR released_year > 2010 OR stock_quantity > 100;

-- BETWEEN OPERATOR (BETWEEN ... AND ...)
    -- We Can Solve This Between Problem Without Using Between Operator Just By Using 'AND' and 'OR' Operator.
-- 1. Without Between Operator 
SELECT * FROM books 
WHERE released_year >= 2004 && released_year <= 2015;

-- 2. With Between Operator
SELECT * FROM books 
WHERE released_year 
BETWEEN 2004 AND 2015;


-- NOT BETWEEN OPERATOR (NOT BETWEEN ... AND ...)
SELECT * FROM books 
WHERE released_year 
NOT BETWEEN 2004 AND 2015 
ORDER BY released_year;

-- IN OPERATOR (IN)
    -- CHECKS AGAINST SET(LIST) OF VALUES
SELECT title, author_lname FROM books 
WHERE author_lname 
IN ('eggers', 'carver', 'smith');

SELECT title, author_lname, released_year FROM books 
WHERE released_year 
IN (2017, 1985, 2004);

-- NOT IN OPERATOR (NOT IN)
SELECT title, author_lname FROM books 
WHERE author_lname 
NOT IN ('eggers', 'carver', 'smith');

SELECT title, author_lname, released_year FROM books 
WHERE released_year 
NOT IN (2017, 1985, 2004);


-- CASE STATEMENTS
SELECT title, released_year, 
    CASE 
        WHEN released_year >= 2000 THEN 'Modern Lit' 
        ELSE '20TH Century List' 
    END AS GENRE 
FROM books;

SELECT title, stock_quantity, 
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*' 
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**' 
        ELSE '***' 
    END AS stock 
FROM books;

SELECT title, stock_quantity, 
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*' 
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**' 
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***' 
        ELSE '****' 
    END AS stock 
FROM books;
