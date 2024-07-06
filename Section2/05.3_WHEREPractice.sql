/* Syeda Zunehra Banu 7th June 2024
In PostgreSQL, the default behavior for string comparison in a WHERE clause is case-sensitive. This means that the condition WHERE name='David' will only match rows where the value of name is exactly 'David' with the same case.

If you want to perform a case-insensitive comparison, you can use the ILIKE operator instead of LIKE, or you can use the LOWER function to convert both the column and the comparison value to lowercase. Here are two examples:

Using 
	1)ILIKE:
	2)LOWER
*/
SELECT * FROM actor;
SELECT first_name FROM actor
WHERE first_name='Nick';
SELECT first_name FROM actor
WHERE first_name ILIKE 'nick';
SELECT LOWER('NICK');
SELECT first_name FROM actor
WHERE LOWER(first_name)=LOWER('Nick');

SELECT * FROM customer
WHERE first_name='Jared';
SELECT * FROM film
WHERE rental_rate>4 AND replacement_cost>=19.99 AND rating='R';
SELECT COUNT(*) FROM film
WHERE rental_rate>4 AND replacement_cost>=19.99 AND rating='R';
SELECT * FROM film
WHERE rating='PG-13' OR rating='R';
SELECT * FROM film
WHERE rating ='R';
SELECT * FROM film
WHERE rating!='R';

/* Question
Challenge:
A customer forget their wallet at our store! We need to track down their email to inform them.
What is the email for the customer name Nancy Thomas?
*/
SELECT * FROM customer;
SELECT email FROM customer
WHERE first_name='Nancy' AND last_name='Thomas';
/*Challenge
A customer wants to know what the movie 'Outlaw Hanky' is about.
Could you give them the description for the movie 'Outlaw Hanky'
*/
SELECT * FROM film;
SELECT description FROM film
WHERE title='Outlaw Hanky';
/*Challenge
A customer is late on their movie return, and we've mailed them a letter to their address at '259 Ipoh Drive'. We should also call them on the phone to let them know.
Can you get the phone number for the customer who lives at '259 Ipoh Drive'?
*/
SELECT phone FROM address
WHERE address='259 Ipoh Drive';


