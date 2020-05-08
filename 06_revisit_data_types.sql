-- 1. CHAR & VARCHAR
-- CHAR --> FIXED LENGTH [TRUNCATE LONG TEXT]
-- VARCHAR --> VARY LENGTH [NEED TO SET MAX LENGTH]
CREATE TABLE people(sex CHAR(1), name VARCHAR(20));

-- 2. DECIMAL
    --> DECIMAL(Total Digits[Before + After] Decimal, Number of Digits)
CREATE TABLE people(name VARCHAR(20), marks DECIMAL(5, 2));

-- 3. FLOAT & DOUBLE [Precision Issue After 7 Digits or 15 Digits Respectively]
    --> FLOAT()
    --> DOUBLE()
CREATE TABLE people(name VARCHAR(20), marks FLOAT(5, 2));
CREATE TABLE people(name VARCHAR(20), marks DOUBLE(5, 2));

-- 4. DATE & TIME
    -- DATE --> YYYY-MM-DD
    -- TIME --> HH:MM:SS
    -- DATETIME --> YYYY-MM-DD HH:MM:SS
CREATE TABLE people(name VARCHAR(100), birthdate DATE, birthtime TIME, bday DATETIME);
INSERT INTO people(name, birthdate, birthtime, bday) values ('Dylan', '1997-11-26', '04:30:00', '1997-11-26 04:30:00');
-- CURDATE() --> Gives Current Date
SELECT CURDATE();
-- CURTIME() --> Gives Current Time
SELECT CURTIME();
-- NOW() --> Gives Current DateTime
SELECT NOW();
INSERT INTO people(name, birthdate, birthtime, bday) VALUES ('Microwave', CURDATE(), CURTIME(), NOW());

-- 5. FORMAT DATES
    -- SQL HAVE LOT OF FUNCTIONS TO FORMAT DATES
    -- CHECK DOCUMENTATION
SELECT name, DAY(birthdate) FROM people;
SELECT name, DAYNAME(birthdate) FROM people;
SELECT name, DAYOFWEEK(birthdate) FROM people;
SELECT name, DAYOFYEAR(birthdate) FROM people;
SELECT name, MONTH(bday) FROM people;
SELECT name, MONTHNAME(bday) FROM people;
SELECT name, HOUR(bday) FROM people;
SELECT name, MINUTE(bday) FROM people;
-- DATE_FORMAT() --> Use Specifier (Special Date Formatting Characters) [CHECK DOCS FOR SPECIFIERS]
SELECT name, DATE_FORMAT(bday, '%W %M %Y') FROM people;
SELECT name, DATE_FORMAT(bday, '%W-%M-%Y') FROM people;
SELECT name, DATE_FORMAT(bday, '%W, %M %Y') FROM people;
SELECT name, DATE_FORMAT(bday, '%w/%m/%y') FROM people;
SELECT name, DATE_FORMAT(bday, '%w/%m/%y %h:%m') FROM people;


-- 6. DATE MATHS
    -- DATEDIFF(date1, date2) --> RETURNS THE DIFFERENCE OF TWO DATES.
SELECT name, DATEDIFF(NOW(), bday) FROM people ;
    -- DATE_ADD(date, any_date_time) --> ADD ANY DATE_TIME TO THE GIVEN DATETIME --> TO KNOW ALL AVAILABLE OPTIONS CHECK DOCS
SELECT name, bday, DATE_ADD(bday, INTERVAL 1 MONTH) FROM people;
SELECT name, bday, DATE_ADD(bday, INTERVAL 10 SECOND) FROM people;
SELECT name, bday, DATE_ADD(bday, INTERVAL 10 HOUR) FROM people;
SELECT name, bday, DATE_ADD(bday, INTERVAL 3 QUARTER) FROM people;
    -- DATE_SUB(date, any_date_time) --> SUBTRACT ANY DATE_TIME FROM THE GIVEN DATETIME --> TO KNOW ALL AVAILABLE OPTIONS CHECK DOCS
SELECT name, bday, DATE_SUB(bday, INTERVAL 1 MONTH) FROM people;
SELECT name, bday, DATE_SUB(bday, INTERVAL 10 SECOND) FROM people;
SELECT name, bday, DATE_SUB(bday, INTERVAL 10 HOUR) FROM people;
SELECT name, bday, DATE_SUB(bday, INTERVAL 3 QUARTER) FROM people;
    -- SHORTCUT TO ADD OR SUBTRACT DATES
SELECT name, bday, bday + INTERVAL 1 MONTH FROM people;
SELECT name, bday, bday - INTERVAL 3 QUARTER FROM people;
SELECT name, bday, bday + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;

-- 7. TIMESTAMPS
    -- IN MYSQL TIMESTAMP IS AN ACTUAL DATA TYPE
CREATE TABLE comments(content VARCHAR(100), created_at TIMESTAMP DEFAULT NOW());
SELECT content, DATE_FORMAT(created_at, '%W, %M %Y') FROM comments;
SELECT * FROM comments ORDER BY created_at DESC;
CREATE TABLE comments2(content VARCHAR(100), created_at TIMESTAMP DEFAULT NOW(), updated_at DEFAULT NOW() TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);