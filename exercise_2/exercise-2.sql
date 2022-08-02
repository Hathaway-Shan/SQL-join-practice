-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental

Select *, rental.rental_date
from customer
inner join rental on rental.customer_id = customer.customer_id
where customer.first_name = 'Patricia';