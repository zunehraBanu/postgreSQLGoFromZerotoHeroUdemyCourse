/* name:Syeda Zunehra Banu  Date:7th June 2024
Sometimes a table contains a column that has duplicate values, and you may find yourself in a situation where you only want to list the unique/distinct values. 
The DISTINCT keyword can be used to return only the distinct values in a column.
-The DISTINCT keyword operates on a column. The syntax looks like this:
SELECT DISTINCT columnName FROM table;
-To clarify which column DISTINCT is being applied to. You can also use parenthesis for clarify:
SELECT DISTINCT(column) FROM table;
-It will work with or without parenthesis.
-Later on when we learn about adding more calls such as COUNT and DISTINCT together, the parenthesis will be necessary.
SELECT DISTINCT column FROM table;
*/
SELECT * FROM film;
SELECT DISTINCT(release_year) FROM film;
SELECT DISTINCT replacement_cost FROM film;
SELECT DISTINCT(rental_rate) FROM film;

/*Situation
An australian visitor isn't familiar with MPAA movie ratings (e.g PG, PG-13, R, etc...)
-We want to know the types of ratings we have in our database.
-What ratings do we have available 
Challenge: Use what you've learned about the SELECT DISTINCT to retrieve the distinct rating types our films could have in our databases. 
*/
SELECT * FROM film;
SELECT DISTINCT(rating) FROM film;