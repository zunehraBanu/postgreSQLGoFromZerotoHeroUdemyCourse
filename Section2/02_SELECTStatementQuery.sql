SELECT * FROM actor;
SELECT first_name FROM actor;
SELECT first_name, last_name FROM actor;
SELECT last_name,first_name FROM actor;
SELECT last_Name,first_name FROM actor; --We have written 'last_Name' instead of 'last_name' for the last_name column, but we are still getting results because it is not case-sensitive.
select last_Name,first_name from actor;
SELECT last_name,first_name FROM actor

-- Learnings from this are:
-- 1) Column names are not case-sensitive.
-- 2) Keywords do not need to be written in uppercase, but we write them that way for better readability.
-- 3) A semicolon is not always necessary, but we use it because it is required in some cases.
