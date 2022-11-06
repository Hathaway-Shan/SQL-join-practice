-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category

Select film.title
from category
left join film_category on film_category.category_id = category.category_id
left join film on film.film_id = film_category.film_id
where category.name = 'Action';