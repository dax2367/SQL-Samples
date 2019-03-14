Use sakila;
select * from film;
select * from actor;
select * from film_actor;
select * from language;
select * from film;


select first_name, last_name from actor
where actor_id = any(select actor_id where
film_id = from film_actor
(select film_id from film where title
 = "Ace Goldfinger"));

select first_name, last_name from actor
where actor_id = any
(select film_id from film where title
 = "Anaconda confessions");

select * from actor
where actor_id = any
(select film_id from film where title
 = "Ace Goldfinger");

select first_name, last_name from actor
Actor inner join film_actor on (actor_id)
inner join film on (film_id)
where film_id = (select film.film_id from film
where title = "Ace Goldfinger");

select first_name, last_name from actor
actor inner join film_actor on (film_actor.actor_id)
inner join film on (film.film_id)
where film.film_id = (select film_id from film
where title = 'Ace Goldfinger');


