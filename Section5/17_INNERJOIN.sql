--Syeda Zunehra Banu 9th june 2024
/* JOIN allows us to combine multiple tables together.
-The main reason for the different JOIN types is to decide how to deal with information only present
in one of the joined tables.
-An INNER JOIN will result with the set of records that match in both the tables
SELECT * FROM tableA
INNER JOIN tableB
ON tableA.col_match=tableB.col_,match;
SELECT * FROM Registrations
INNER JOIN logins
ON registration.name=logins.name;
--Remember that table order won't matter in an INNER join
--Also if you see just JOIN without the INNER, PostgreSQL will treat it as an INNER JOIN.
*/
SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id=customer.customer_id;

SELECT payment_id, payment.customer_id,first_name 
FROM payment
INNER JOIN customer
ON payment.customer_id=customer.customer_id;