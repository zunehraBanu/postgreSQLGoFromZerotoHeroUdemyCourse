--Syeda Zunehra Banu 9th June 2024
/* A RIGHT JOIN is essentially the same as a LEFT JOIN, except the tables are switched
-This would be same as switching the table order in a LEFT OUTER JOIN.
SELECT * FROM tableA
RIGHT OUTER JOIN tableB
ON tableA.col_match=tableB.col_match;

SELECT * FROM tableA
RIGHT OUTER JOIN tableB
ON tableA.col_match=tableB.col_match
WHERE tableA.id IS NULL;--get only the things present in tableB and not the common things
*/

--UNION
--UNION operator is used to combine the result-set of 2 or more SELECT statements
--It basically serves to directly concatenate 2 results together, essentially 'pasting' them together
/* SELECT column FROM table1
UNION 
SELECT column FROM table2
The UNION operator in SQL is used to combine the results of two or more SELECT 
queries into a single result set. The queries must have the same number of columns, 
and the columns must have compatible data types. By default, UNION removes duplicate
rows from the result set.

Key Points to Remember about UNION
Same Number of Columns: All SELECT statements within the UNION must have the same number of columns in the result sets with similar data types.
Column Data Types: The corresponding columns must have compatible data types.
Order of Results: The order of the columns in each SELECT statement must be the same.
Remove Duplicates: By default, UNION removes duplicate rows. If you want to include duplicates, use UNION ALL.
Sorting Results: If you want to sort the final result set, you should use an ORDER BY clause at the end of the last SELECT statement. This clause applies to the entire result set.

Example Usage
Combining Results from Two Tables
SELECT name, age FROM employees
UNION
SELECT name, age FROM customers; --In this example, the result set will include 
unique combinations of name and age from both the employees and customers tables.
--The UNION operator removes duplicate rows. Since "Bob, 25" is present in both tables, 
it appears only once in the result set.
--The UNION operator removes duplicate rows but treats rows with different values in any column as distinct. 
Since "Bob, 25" and "Bob, 30" are different rows, both appear in the result set.

--Including Duplicates with UNION ALL
SELECT name,age FROM employees
UNION ALL
SELECT name,age FROM customers;--In this example, the result set will include all rows from both employees 
and customers, including duplicates.
--The UNION ALL operator includes all rows from both tables, including duplicates. 
Therefore, "Bob, 25" appears twice in the result set.
*/

/*Challenge
-California sales tax laws have changed and we need to alert our customers to this through email.
-what are the emails of customers who live in california*/
SELECT * FROM customer;
SELECT * FROM address;
SELECT email,district FROM customer
INNER JOIN address
ON customer.address_id=address.address_id
WHERE district='California';

/*Challenge
-A customer walks in and is huge fan of the actor 'Nick Wahlberg' and wants to know
which movies he is in.
-Get a list of all the movies 'Nick Wahlberg' has been in.
*/

SELECT title,first_name,last_name FROM actor
INNER JOIN film_actor
ON actor.actor_id=film_actor.actor_id
INNER JOIN film
ON film_actor.film_id=film.film_id
WHERE first_name='Nick' AND last_name='Wahlberg';

