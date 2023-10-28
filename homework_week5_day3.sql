--None of this is working for me and I need help.  I'm trying to follow Brian's example.  


SELECT *
FROM actor 
WHERE last_name  = "Wahlberg"

SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


select film_id, COUNT(*)
FROM inventory
group by film_id
HAVING COUNT(*) = 7;



SELECT COUNT(*)
FROM customer
where first_name = 'Willie';

SELECT staff_id COUNT(*)
FROM rental
group by staff_id
ORDER BY COUNT(*) desc
LIMIT 1;

SELECT COUNT(distinct district)
from	address;
	

select film_id, COUNT(*)
FROM film_actor
group by film_id
ORDER BY num_actors desc;

--This one works?

SELECT *
FROM customer
where store_id = 1 AND last_name like '%es';


SELECT amount, COUNT(*) 
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY AMOUNT 
having COUNT(*) > 250;



SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC;





