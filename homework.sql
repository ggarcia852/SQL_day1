--Question 1:

SELECT last_name
FROM actor
ORDER BY last_name DESC;

SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- Q1 Answer: Wahlberg = 2


--Question 2:

SELECT*
FROM payment
WHERE amount > 3.98 AND  amount < 6.00;

SELECT*
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Q2 Answer: 5607 payments


--Question 3:

SELECT film_id, COUNT(*) AS inventory
FROM inventory
GROUP BY film_id
HAVING COUNT(*) > 7;

-- Q3 Answer: There are 72 film_ids with an inventory of 8. 


--Question 4: 

SELECT last_name
FROM customer
WHERE last_name = 'William';

SELECT last_name
FROM customer
ORDER BY last_name DESC;

-- Q4 Answer: William = 0, Williams = 1


--Question 5:  

SELECT staff_id, COUNT(*) AS num_of_rentals
FROM rental
GROUP BY staff_id;

-- Q5 Answer: staff_id 1 sold 8040, staff_id 2 sold 8004


--Question 6:

SELECT COUNT(DISTINCT district)
FROM address;

-- Q6 Answer: 378 districts


--Question 7:

SELECT film_id, COUNT(*) AS num_of_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_of_actors DESC;

-- Q7 Answer:  film_id 508 has 15 actors


--Question 8:

SELECT last_name
FROM customer
WHERE last_name LIKE '%es';

-- Q8 Answer: There are 21 last names that end with "es".


--Question 9:

SELECT amount, COUNT(amount) AS num_of_rentals
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250
ORDER BY amount;

-- Q9 Answer: 0.99, 2.99, 4.99


--Question 10:

SELECT rating, COUNT(*)
FROM film
GROUP BY rating;

-- Q10 Answer: Thera are 5 rating categories, and PG-13 has the most with 223.



