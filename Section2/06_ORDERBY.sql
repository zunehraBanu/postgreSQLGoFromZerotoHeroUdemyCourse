/* Syeda Zunehra Bany 7th June 2024
ORDER BY 
-You may have noticed PostgreSQL sometimes returns the same request query results in a different order.
--You can use ORDER BY to sort rows based on a column value, in either ascending or descending order.
-Basic syntax for ORDER BY:
SELECT column1,column2 FROM table
ORDER BY column1 DESC;
-Notice ORDER BY is towards the end of a query, since we want to do any selection and filtering first, before finally sorting.
-Use ASC to sort in ascending order.
-Use DESC to sort in descending order.
-If you leave it blank, ORDER BY uses ASC by default.
-You can also use ORDER BY to multiple columns.
This make sense when one column has duplicate entries.
*/
SELECT * FROM customer
ORDER BY first_name;
SELECT * FROM customer
ORDER BY first_name ASC;
SELECT * FROM customer
ORDER BY first_name DESC;
SELECT * FROM customer
ORDER BY store_id, first_name;
SELECT store_id,first_name FROM customer
ORDER BY store_id DESC, first_name ASC;
