-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

select city.city, sum(payment.amount)
from city
left join address on city.city_id = address.city_id
left join customer on address.address_id = customer.address_id
inner join payment on customer.customer_id = payment.customer_id
group by city.city_id
order by sum desc
limit 10