--Syeda Zunehra Banu 8th June 2024
/* Group BY will allow us to aggregate data and apply functions to better understand how data is distributed per category.
*/

--Aggregiate functions
/*SQL provides a variety of aggregate functions.
The main idea behind an aggregate function is to take multiple inputs and return a single output.
https://www.postgresql.org/docs/current/functions-aggregate.html
-Most common aggregate Functions:
	AVG() - returns average value
	COUNT() - returns  number of values
	MAX() - returns maximum value
	MIN() -  returns minimum value
	SUM() - returns the sum of all values

-Aggregate function calls happen only in the SELECT clause or the HAVING clause
-AVG() returns a floating point value many decimal places (e.g 2.342418)
	You can use ROUND() to specify the precision after the decimal
*/

SELECT * FROM film;
SELECT MIN(replacement_cost) FROM film;
SELECT MAX(replacement_cost) FROM film;
SELECT MAX(replacement_cost), title FROM film; --It will give error but not the below one
SELECT MAX(replacement_cost),MIN(replacement_cost) FROM film; --This is working because both are outputting 1 row
/*The query SELECT MAX(replacement_cost), title FROM film; will not work because it violates SQL's rules regarding aggregate functions and non-aggregated columns. Specifically, when using aggregate functions like MAX, all other columns in the SELECT statement must be part of an aggregate function or be included in a GROUP BY clause.
In your query, MAX(replacement_cost) is an aggregate function, but title is not. 
This leads to an error because SQL does not know how to handle the non-aggregated column (title) in conjunction with the aggregated result.*/
--solution for this is subquery or GROUP BY 

/* 1. SELECT title, replacement_cost
FROM film
WHERE replacement_cost = (SELECT MAX(replacement_cost) FROM film);
*/
SELECT COUNT(*) FROM film;
SELECT ROUND(AVG(replacement_cost),2) FROM film;--2 parameters needed 
SELECT SUM(replacement_cost) FROM film;