-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city

SELECT address.address_id 
from city
inner join address on address.city_id = city.city_id
where city.city = 'Dundee';