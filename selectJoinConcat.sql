use sakila;

select actor.first_name, actor.last_name, film_actor.film_id
from actor
inner join film_actor
using(actor_id)
inner join


(select actor.first_name, actor.last_name, film_actor.film_id
from actor 
inner join film_actor
using (actor_id)
where first_name = 'Scarlett' and last_name = 'Bening') as 
ScarlettsMovies
Using (film_id);


select country.country, count(customer_id) as customer_count
from customer
inner join address on customer.address_id = address.address_id
inner join city on address.city_id = city.city_id
Inner join country on city.country_id = country.country_id
group by country
having count(*)>20;


select category.name, count(category.name) as numberoffilms
from category
inner join film_category
using(category_id)/* on category.category_id=film_category.category_id*/
group by category.name
having numberoffilms>50 and numberoffilms <75
order by numberoffilms desc;


select category_id, avg(replacement_cost-rental_rate) as difference
from film
inner join film_category as fc
using(film_id)
group by fc.category_id
having difference >17;


select first_name, last_name, count(rental_id) as numRentals
from customer
inner join rental
 using (customer_id)
inner join inventory
 using(inventory_id)
inner join film_category
 using(film_id)
inner join category
 using(category_id)
group by customer.customer_id, category.name
having numRentals>4 and category.name ='Horror';


select p.*, f.title as titleOfRental
from payment as p
Left join rental as r
 using(rental_id)
left join inventory as i
 using(inventory_id)
left join film as f
 using(film_id)
Where p.payment_date>='2005-06-0100:00:00'
 and p.payment_date<'2005-09-0100:00:00';


select first_name, last_name
from actor
inner join film_actor using(actor_id)
inner join film using(Film_id)
where film.title='Ace Goldfinger';


select title, release_year
from film
Inner join film_actor using(film_id)
inner join actor using(actor_id)
where actor.last_name = 'Depp'
order by release_year desc;


select title
from (actor
Inner join film_actor
 using(actor_id)
inner join film
 using(film_id)
inner join film_category
 using(film_id)
Inner join category
 using(category_id))
where actor.last_name = 'Winslet'
and category.name = 'Horror';


select title, language.name, release_year
from film
inner join language Using(language_id)
where language.name = 'English'
and film.release_year = 2006;


select count(length) as 'number of longer-than-average films'
from film
where length>(select avg(length)
from film);


select category.name, film.length
from (film
inner join film_category
 using(film_id)
inner join category
 using(category_id))
where film.length = max(length);