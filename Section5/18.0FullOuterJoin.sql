--Syeda Zunehra Banu 9th June 2024
/*OUTER JOINS:
There are few different types of OUTER JOINS
	FULL OUTER JOIN,LEFT OUTER JOIN, RIGHT OUTER JOIN
-They will allow us to specify how to deal with values only present in one of the tables being joined.
SELECT * FROM tableA
FULL OUTER JOIN tableB
ON tableA.col_match=tableB.col_match;

SELECT * FROM registration
FULL OUTER JOIN logins
ON logins.name=registration.name;

--The below one will give you the one that are not common
SELECT * FROM tableA
FULL OUTER JOIN tableB
ON tableA.col_match=tableB.col_match
WHERE tableA.id is NULL OR tableB.id IS NULL;

SELECT * FROM registration
FULL OUTER JOIN logins
ON registration.name=logins.name
WHERE registration.reg_id IS NULL OR logins.log_id IS NULL;
*/
SELECT * FROM customer;
SELECT * FROM payment;
SELECT * FROM customer
INNER JOIN payment
ON payment.customer_id=customer.customer_id
WHERE payment.payment_id IS NULL OR customer.customer_id IS NULL;

SELECT COUNT(DISTINCT(customer_id)) FROM customer;
SELECT COUNT(DISTINCT(CUSTOMER_ID)) FROM payment;


