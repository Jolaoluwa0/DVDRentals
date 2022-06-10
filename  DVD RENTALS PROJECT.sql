select * from film;

--DVD RENTALS

/*	1. What are the categories of the films we rent out? */
select name 
from category;

/*	2.	What are the names of the actors in the films we rent out? */
select first_name, last_name from actor;

/*	3.	Please provide a list of all our customers 
including their contact details (email address). */
select first_name, last_name, email 
from customer;

/*	4.	What are the unique rental durations of films in this rental company? */
select distinct rental_duration 
from film;

/*	5.	What are the titles of films that are at least 60 mins long? */
select title, length 
from film 
where length >= '60';

/*	6.	What are the titles of films that are rated either PG, PG-13 or G? */
select title, rating 
from film 
where rating = 'PG' or rating = 'PG-13' or rating = 'G';

/*	7.	Which films are rated PG and are not more than 50 mins long? */
select title, rating, length 
from film 
where rating = 'PG' and length <= '50';

/*	8.	Which films are rated PG-13 and are between 60 to 120 mins long? */
select title, rating, length 
from film
where rating = 'PG-13' and length between 60 and 120;

/*	9.	List the First name of actors whose names start with the letter “B”. */
select first_name 
from actor 
where first_name like 'B%';

/*	10.	Provide the rental date of the last 10 rentals */
select rental_date 
from rental 
order by rental_date desc limit 10;

/*	11.	Write a query to return the earliest 100 rentals. Include the rental id, 
rental date and the return date. */
select rental_id, rental_date, return_date 
from rental 
order by rental_date 
limit 100;

/*	12.	Write a query that displays the rental ID, customer ID, and return date for all the rentals, 
sorted first by the rental and then by the return date */
select rental_id, customer_id, return_date 
from rental 
order by rental, return_date asc;

/*	13.	Write a query that displays the payment ID, customer ID, payment amount and the payment date, 
sorted first by the customer ID (in ascending order), and then by the payment amount (in descending order).*/
select payment_id, customer_id, amount, payment_date 
from payment 
order by customer_id asc;

select payment_id, customer_id, amount, payment_date from payment order by amount desc;




