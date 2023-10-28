--None of this is working for me and I need help.  I'm trying to follow Brian's example.  


SELECT *
FROM actor 
WHERE last_name  = "Wahlberg"

SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


select film_id, COUNT(*)
FROM inventory;
group by film_id
HAVING COUNT(*) = 7;



SELECT COUNT(*)
FROM customer
where first_name = 'Willie';

SELECT staff_id COUNT(*)
FROM rental;
group by staff_id
ORDER BY COUNT(*) DESC 
LIMIT 1;