/*Syeda Zunehra Banu 8th June 2024
The LIKE operator allows us to perform pattern matching against string data with the use of wildcard characters:
	-Percent %
		-Matches any sequence of characters.
	-Underscore _
		-Matches any single character
-All names that begin with an 'A'
	WHERE name LIKE 'A%'
-All names that end with an 'a'
	WHERE name LIKE '%a'
-Notice that LIKE is a case-sensitive, we can use ILIKE which is case-insensitive.
-Using the underscore allows us to replace just a single character.
	Get all Mission Impossible films
	WHERE title LIKE 'Mission Impossible_'
-You can use multiple underscores.
-Imagine we had version string codes in the format 'Version#A4',Version#B7' etc..
	WHERE value LIKE 'Version#__'
-We can also combine pattern matching operators to create more complex patterns 
	WHERE name LIKE '_her%'
		▪️Cheryl
		▪️Theresa
		▪️Sherri
*/
SELECT * FROM customer
WHERE first_name LIKE 'J%';
SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%';
SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';
SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';
SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'J%';
SELECT * FROM customer
WHERE first_name LIKE 'j%' AND last_name LIKE 'J%' --No result because case sensitive
SELECT * FROM customer
WHERE first_name ILIKE 'J%' AND last_name ILIKE 'J%'--case insensitive

SELECT * FROM customer
WHERE first_name LIKE '%er%' --er should be in between and there can be zero or many alphabets before and after as there is % sign before and after
--If there is only er then also it will be in results.
SELECT * FROM customer
WHERE first_name LIKE '_her%';
SELECT * FROM customer
WHERE first_name NOT LIKE '_her%'; 
SELECT * FROM customer
WHERE first_name LIKE 'A%'
ORDER BY last_name;
SELECT * FROM customer
WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%'
ORDER BY last_name;