/* Syeda Zunehra Banu 9th June 2024
HAVING
-The HAVING clause allows us to filter after an aggregation has already taken place.
-We have already seen we can filter before executing GROUP BY, but what if we want to filter based on SUM(sales)
SELECT company, SUM(sales)
FROM finance_table
WHERE company!='Google'
GROUP BY company;
-We cannot use WHERE to filter based off of aggregate results, because those happen after a WHERE 
is executed.
-Having allows us to use the aggregate result as a filter along with a GROUP BY
-SELECT company, SUM(sales)
FROM finance_table
WHERE company!='Google'
GROUP BY company
HAVING SUM(sales) >100
*/
SELECT * FROM payment;
SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id NOT IN(184,87,477)
GROUP BY customer_id
HAVING SUM(amount) >100;
SELECT * FROM customer;

SELECT store_id, COUNT(customer_id)--COUNT(*)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) >300;

/*Challenge
-We are launching a platinum service for our most loyal customers. We will assign platinum
status to customers that have had 40 or more transaction payments.
-What customer_ids are eligible for platinum status? */
SELECT * FROM payment; 
SELECT customer_id,COUNT(payment_id)--COUNT(*)
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) >=40;

/* What are the customer ids of customers who have spent m0re than $100 in payment 
transactions with our staff_id memeber 2
*/
SELECT * FROM payment;
SELECT customer_id,SUM(amount)
FROM payment
WHERE staff_id=2
GROUP BY customer_id,staff_id
HAVING SUM(amount)>100