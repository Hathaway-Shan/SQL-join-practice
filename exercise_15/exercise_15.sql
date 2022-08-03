-- the total run time of all inventory items if they were all played back to back

select sum(film.length)
from film
inner join inventory on film.film_id = inventory.film_id