/* Syeda Zunehra Banu 7th June 2024
LIMIT 
-The LIMIT command allows us to limit the number of rows returned for a query.
-Useful for not wanting to return every single row in a table, but only view the top few rows to get an idea of the table layout.
-LIMIT also becomes useful in combination with ORDER BY 
-LIMIT goes at the very end of the query request and it is the last command to be executed.
*/ 
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5;--Returning 5 most recent payments. Top 5

SELECT * FROM payment
WHERE amount !=0.00
ORDER BY payment_date DESC
LIMIT 5;
/*Challenge task
-We want to reward our first 10 paying customers.
-What are the customer ids of the first 10 customers who created a payment?
*/
SELECT * FROM payment;
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

/* Challenge:
-A customer wants to quickly rent a video to watch over their short lunch break.
-What are the titles of the 5 shortest (in length of runtime) movies?
*/
SELECT title,length FROM film
ORDER BY length
LIMIT 5;
/* Challenge
-If the previous customer can watch any movie that is 50 minutes or less in run time, how many options does she have?
*/
SELECT COUNT(title) FROM film
WHERE length<=50;
