/* Syeda Zunehra Banu 7th June 2024
COUNT:
-The COUNT function returns the number of input rows that match a specific condition of a query
-We can apply COUNT on a specific column or just pass COUNT(*) 
-SELECT COUNT(name) FROM table;
This is simply returning the number of rows in a table;
-In fact it should be the same regardless of the column as each column has the same number of rows.
SELECT COUNT(name) FROM table; --here name is columName and table is the tableName
SELECT COUNT(choice) FROM table;
SELECT COUNT(*) FROM table;
All return the same thing, since the original table had 4 rows.
--Because of this COUNT by itself simply returns back a COUNT of the number of rows in a table.
--COUNT is much more useful when combined with other commands such as DISTINCT.
Q) Imagine we want to know: How many unique names are there in the table.
SELECT COUNT(DISTINCT(name)) FROM table; */
SELECT * FROM payment;
SELECT COUNT (payment_id) FROM payment;
SELECT COUNT(*) FROM payment;
SELECT COUNT(DISTINCT(customer_id)) FROM payment;
SELECT COUNT DISTINCT customer_id FROM payment;
--COUNT is a function that requires parentheses to enclose its argument[The parentheses are necessary to specify the argument for the COUNT function]
SELECT COUNT(DISTINCT(amount)) FROM payment;
SELECT COUNT(DISTINCT amount) FROM payment;