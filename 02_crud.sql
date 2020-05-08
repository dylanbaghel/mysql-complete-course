-- CRUD - Create, Read, Updated, Delete
-- SELECT COMMAND
-- SELECTING ALL FROM A TABLE;
SELECT * FROM cats;

-- Selecting A Particular Column From a Table;
SELECT name FROM cats;

SELECT name, age FROM cats;

-- 'WHERE' ---> Select, UPDATE, DELETE Data Conditionally
SELECT * FROM cats WHERE age > 4;

SELECT * FROM cats WHERE name = 'Blue';  -- Strings Are Insensitive In SQL
SELECT * FROM cats WHERE age = cat_id;

-- Aliases
SELECT age AS years, name FROM cats;
SELECT name AS full_name FROM cats;
SELECT *, name AS cat_name FROM cats;

-- UPDATE COMMAND
UPDATE cats SET breed = 'Shorthair' WHERE breed = 'Tabby';
UPDATE cats SET name = 'Mongo' WHERE cat_id = 1;
UPDATE cats SET name = 'Mongo', age = 2, breed = 'Tabby' WHERE cat_id = 1;

-- DELETE COMMAND
DELETE FROM cats WHERE name = 'Egg';
DELETE FROM cags WHERE cat_id = 5;
DELETE FROM cats; -- DELETE ALL DATA