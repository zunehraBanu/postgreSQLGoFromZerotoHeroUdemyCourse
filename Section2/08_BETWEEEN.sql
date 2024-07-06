/* Syeda Zunehra Banu 8th June 2024 
BETWEEN 
The BETWEEN operator can be used to match a value against a range of values:
	value BETWEEN low AND high
-The BETWEEN operator is the same as:
	value>=low AND value<=high
	value BETWEEN low AND high --low and high are inclusive
-You can also combine BETWEEN with the NOT logical operator
	value NOT BETWEEN low AND high
-The NOT BETWEEN operator is the same as:
	-value <low OR value>high
	-value NOT BETWEEN low AND high
-The BETWEEN operator can also be used with dates. Note that you need to format dates in the ISO 8601 standard format, which is YYYY-MM-DD
- date BETWEEN '2007-01-01' AND '2007-02-01'
-When using BETWEEN operator with dates that also include timestamp information, pay careful attention to using BETWEEN versus <=,>= comparison operators, due to the fact that a datetime starts at 0.00.
Later on we will study more specific methods for datetime information types.
*/
SELECT * FROM payment
WHERE amount BETWEEN 8 AND 9
SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 AND 9;
SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;
SELECT COUNT(*) FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';