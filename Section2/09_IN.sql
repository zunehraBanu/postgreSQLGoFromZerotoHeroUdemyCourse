/*Syeda Zunehra Banu 8th June 2024
-In Certain cases you want to check for multiple possible value options, for example, if a user's name shows up IN a list of known names.
-We can use the IN operator to create a condition that checks to see if a value included in a list pf multiple options.
works like OR[The IN operator is a shorthand for multiple OR conditions.]
Example:
SELECT color FROM table
WHERE color IN('red','blue')
SELECT color FROM table
WHERE NOT color IN('red','blue')
-Important: In PostgreSQL, IN is a keyword, not a function. It is used to specify a set of values in a WHERE clause, allowing you to check if a value matches any value in a list.*/
SELECT * FROM payment;
SELECT DISTINCT(amount) FROM payment;
SELECT DISTINCT(amount) FROM payment
WHERE amount IN(0.99,1.98,1.99)--No strings needed as it is numeric data type
ORDER BY amount;
SELECT COUNT(*) FROM payment
WHERE amount IN(0.99,1.98,1.99);
SELECT COUNT(*) FROM payment
WHERE amount NOT IN(0.99,1.98,1.99);
SELECT * FROM customer
WHERE first_name IN('John','Jake','Julie')--It is case sensitive [meaning if you write John as john it will not written any result]
