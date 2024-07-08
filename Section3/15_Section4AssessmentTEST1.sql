--Syeda Zunehra Banu 9th June 2024
/* 1. Return the customer IDs of customers who have spent at least $110 with the staff member 
who has an ID of 2.
2. How many films begin with the letter J?
3. What customer has the highest Customer ID whose number starts with an 'E' and has an address
ID lower than 500?
*/
--1. 
SELECT * FROM payment;
SELECT customer_id,staff_id, SUM(amount)
FROM payment
WHERE staff_id=2
GROUP BY customer_id,staff_id
HAVING SUM(amount) >110;

--2.
SELECT COUNT(*) FROM film
WHERE title LIKE 'J%';

--3.
SELECT * FROM customer;
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'E%' AND address_id<500
ORDER BY customer_id DESC
LIMIT 1;