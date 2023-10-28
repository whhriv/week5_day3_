--Question 1 Use JOINs for customers in Texas

select customer_id, first_name, last_name, district
from CUSTOMER C 
join address a
on a.address_id = c.ADDRESS_ID 
where district = 'Texas'
;

--Question 2 - payments > 7 with customers first/last names

select first_name, last_name, amount
from customer c
left join payment P
on c.customer_id = p.CUSTOMER_ID
where amount < 7;

--Question 3 - Customers who made > 175 payments

select customer_id, SUM(amount)
from PAYMENT P
group by CUSTOMER_ID 
having sum(amount) >175

select*
from CUSTOMER C 
where customer_id IN(
	select CUSTOMER_ID 
	from PAYMENT P 
	group by CUSTOMER_ID 
	having sum(amount) > 175
);

--QUESTION 4 -- CUSTOMERS FROM ARGENTINA

select first_name, last_name, country
from customer c
join address a 
on c.address_id = a.ADDRESS_ID 
join city c2
on c2.city_id = a.city_id 
join country c3
on c3.country_id = c2.country_id
where c3.country = 'Argentina';

--QUESTION 5 FILM CATEGORIES WITH COUNT IN DESC ORDER

select c.category_id, c."name", count(fc.category_id) as num_movies_in_cat
from category c
join film_category FC
on c.category_id = fc.category_id
group by c.CATEGORY_ID order by num_movies_in_cat desc;

--QUESTION 6 -- SHOW FILM INFO => WITH MOST ACTORS IN IT - DOESN'T WORK

select max(num_actors)
FROM (
	select film_id,  count(*) as num_actors
	from FILM_ACTOR  
	group by  FILM_ID
	order by count(*) desc
	);

select film.film_id, film.title, count(*) as num_actors
from FILM F 
join FILM_ACTOR FA 
on film.film_id = film_actor.FILM_ID 
group by film.FILM_ID 
having count(*) = (
	select max(num_actors)
	from (
		select film_id, count(*) as NUM_ACTORS
		from FILM_ACTOR
		group by film_id
		order by count(*) DESCRIPTION 
	)
	
);

--DIDN'T WORK

--question 7 - actor with least movies

select a.actor_id, a.first_name, a.last_name, count(fa.actor_id) as num_films
from actor a
join film_actor fa
on a.actor_id = fa.actor_id
group by a.ACTOR_ID 
order by num_films asc;

--QUESTION 8 which country has most cities

select country, count(CITY_ID)
from country c
join city c2
on c.country_id = c2.COUNTRY_ID 
group by country 
order by count(city_id) desc;

--QUESTION 9 - ACTORS BETWEEN 20-25 FILMS

select a.actor_id, a.first_name, a.last_name, count(fa.film_id)
from actor a
join film_actor FA
on a.actor_id = fa.ACTOR_ID 
group by a.ACTOR_ID 
having count(*) between 20 and 25;



















