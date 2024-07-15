--Syeda Zunehra Banu 9th June 2024
/* LEFT OUTER JOIN
-A LEFT OUTER JOIN results in the set of records that are in the left table, if there is no match
with the right table, the results are null.
SELECT * FROM tableA
LEFT OUTER JOIN tableb
ON tablea.col_match=tableb.col_match;
--OUTER word is optional, you can just write LEFT JOIN
--LEFT OUTER JOIN returns everything that is only in tableA and the common things.
--ORDER matters in LEFT OUTER JOIN
SELECT * FROM tableA
LEFT JOIN tableB
ON tableA.col_match=tableB.col_match
WHERE tableB.id IS NULL; --This will return the things that are only in A and not the common ones
*/
SELECT * FROM film;
SELECT * FROM inventory;

SELECT film.film_id,title, inventory_id
FROM film
LEFT OUTER JOIN inventory
ON film.film_id=inventory.film_id;

SELECT film.film_id,title, inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory
ON film.film_id=inventory.film_id
WHERE inventory.film_id IS NULL