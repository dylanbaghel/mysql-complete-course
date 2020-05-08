-- CREATE DATABASE
CREATE DATABASE cats_db;

-- DROP DATABASE
DROP DATABASE cats_db;

-- INSERT TABLE
CREATE TABLE cats(name VARCHAR(50), age INT);

-- DROP TABLE
DROP TABLE cats;

-- INSERT INTO TABLE
INSERT INTO
    cats(name, age)
VALUES
    ('Blue', 1);

-- MULTIPLE INSERT
INSERT INTO
    cats(name, age)
VALUES
    ('Kora', 2),
    ('Jon', 5),
    ('Bob', 3);

-- SHOW WARNING
SHOW WARNINGS;

-- DESCRIBE TABLE
DESC cats;

-- REQUIRED DATA - PROVIDE 'NOT NULL' WHILE MAKING A COLUMN;
CREATE TABLE cats2(name VARCHAR(50) NOT NULL, age INT NOT NULL);

-- DEFAULT VALUE - PROVIDE DEFAULT VALUE WHILE MAKING A TABLE;
CREATE TABLE cats3(
    name VARCHAR(50) NOT NULL DEFAULT 'Anonymous',
    age INT NOT NULL DEFAULT 99
);

-- PRIMARY KEY - Unique Identifier In SQL Database
CREATE TABLE cats4(
    cat_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
);

-- In The Above Code We Have To Manually Provide Id Which Is Not What Usually Happens -> To Fix It Make It Auto Increment
CREATE TABLE cats5(
    cat_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
);

-- Alertnate Syntax For Defining Primary Key
CREATE TABLE cats5(
    cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL
);