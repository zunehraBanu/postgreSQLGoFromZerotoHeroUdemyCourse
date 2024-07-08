--Syeda Zunehra Banu 8th June 2024
/* GROUP BY allows us to aggregate columns per category . 
-We need to choose a categorial column to GROUP BY
-Categorial columns are non-continous or atleast we treat them as a non-continous for the sake of the GROUP BY
SELECT category_col, AGG(data_col) 
FROM table 
GROUP BY category_col
-The GROUP BY clause must appear right after a FROM or WHERE statement.
Important- In the SELECT statement, columns must either an aggregate funtion or be in GROUP BY Call.
-SELECT company,division, SUM(sales)
FROM finance_table
GROUP BY company,division
-Important-WHERE statements should not refer to the aggregate result, later on we will learn to use HAVING to filter on those results.
SELECT company,division, SUM(sales)
FROM finance_table
WHERE division IN('marketing', 'transport')
GROUP BY company,division
-Important-If you want to sort the results based on the aggregate, make sure to reference the entire function.
-SELECT company, SUM(sales)
FROM finance_table
GROUP BY company
ORDER BY SUM(sales);
-SELECT company, SUM(sales)
FROM finance_table
GROUP BY company
ORDER BY SUM(sales)
LIMIT 5;
*/
SELECT * FROM payment;
SELECT customer_id FROM payment
GROUP BY customer_id;--This was is like doing DISTINCT as we are doing just GROUP BY

SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);--This is summing their amount

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;

SELECT customer_id, staff_id, SUM(amount) FROM payment
GROUP BY  staff_id,customer_id;--This is telling me total amount spend per staff per customer
--Group BY order matters.

SELECT DATE(payment_date), SUM(amount) FROM payment--DATE() extracting time and removing timestamp.
GROUP BY DATE(payment_date)--just bringing DISTINCT dates
ORDER BY SUM(amount) DESC;

/*Challenge
We have 2 staff members, with staff IDs 1 and 2. We want to give a bonus to the staff member that handled the most payments
(Most in terms od payments processed, not total dollar amount.)
How many payments did each staff member handle and who get the bonus?
*/
SELECT * FROM payment;
SELECT staff_id, COUNT(payment_id)
FROM payment 
GROUP BY staff_id;

/* Coorporate headquarters(HQ) is conducting a study on the relationship between replacement cost 
and a movie MPAA rating (e.g. G,PG, R, etc..)
-What is the average replacement cost per MPAA rating?
Note: You amy need to expand the AVG column to view correct results?
*/
SELECT * FROM film;
SELECT rating, ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating;

/*We are running a promotion to reward our top 5 customers with coupons.
What are the customer ids of the top 5 customers by total spend?
*/
SELECT * FROM payment;
SELECT customer_id,SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;