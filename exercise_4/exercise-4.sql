-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city

select customer.first_name, customer.last_name, address.address, city.city
from customer
left join address on address.address_id = customer.address_id
left join city on city.city_id = address.city_id