--Syeda Zunehra Banu 9th June 2024
/* Important links:
 https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/
 https://en.wikipedia.org/wiki/Join_(SQL)
 */
 
/* JOINS 
JOINS allows us to combine information from multiple tables.
AS 
SELECT column AS new_name
FROM table;
-The AS operator gets executed at the very end of a query, meaning that we can not use the ALIAS
inside a WHERE operator and HAVING clause and many more.
*/
SELECT amount FROM payment;
SELECT amount AS rental_rate FROM payment;

SELECT COUNT(amount) AS num_ofTransactions FROM payment;

SELECT customer_id, SUM(amount) AS total_spend
FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount) AS total_spend
FROM payment
GROUP BY customer_id
HAVING total_spend >100;--It will give error-total_spend" does not exist
--because AS operator gets executed at the very end of a query
--Instead we can do this:
SELECT customer_id, SUM(amount) AS total_spend
FROM payment
GROUP BY customer_id
HAVING SUM(amount) >100;

SELECT customer_id,amount AS amt
FROM payment
WHERE amt>2; --it will give error - column "amt" does not exist
--instead we can do this
SELECT customer)id, amount AS amt
FROM payment
WHERE amount>2;

