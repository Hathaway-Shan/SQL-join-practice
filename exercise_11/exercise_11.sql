-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10

select film.title, count(rental.rental_date)
from film
left join inventory on film.film_id = inventory.film_id
left join rental on inventory.inventory_id = rental.inventory_id
group by film.film_id
order by count desc 
limit 10