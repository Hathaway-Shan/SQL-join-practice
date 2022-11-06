-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

select country.country, avg(payment.amount)
from country
left join city on country.country_id = city.country_id
left join address on city.city_id = address.city_id
left join customer on address.address_id = customer.address_id
inner join payment on customer.customer_id = payment.customer_id
group by country.country_id
order by avg desc
limit 10