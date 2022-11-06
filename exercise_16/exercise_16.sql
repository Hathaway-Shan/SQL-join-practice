-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
    
select film.title, film.description, film.release_year,
coalesce(json_agg(to_json(actor)) filter (where actor.actor_id is not null), '[]') as actors
from film
left join film_actor on film.film_id = film_actor.film_id
left join actor on film_actor.actor_id = actor.actor_id
where film.title = 'Airplane Sierra'
group by film.film_id
