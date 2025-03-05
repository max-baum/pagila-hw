/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */


SELECT country.country, SUM(payment.amount) as profit
FROM payment
JOIN rental ON payment.rental_id=rental.rental_id
JOIN customer ON rental.customer_id=customer.customer_id
JOIN address ON customer.address_id=address.address_id
JOIN city ON address.city_id=city.city_id
JOIN country ON city.country_id=country.country_id
GROUP BY country.country
ORDER BY country.country ASC;

/**
SELECT country, SUM(amount) as profit
FROM customer
JOIN payment_p2020_01 ON customer.customer_id=payment.customer_id
JOIN payment_p2020_01 ON customer.customer_id=payment.customer_id
JOIN payment_p2020_01 ON customer.customer_id=payment.customer_id
JOIN payment_p2020_01 ON customer.customer_id=payment.customer_id
JOIN payment_p2020_01 ON customer.customer_id=payment.customer_id
JOIN payment_p2020_01 ON customer.customer_id=payment.customer_id
JOIN rental ON payment.rental_id=rental.rental_id
JOIN address ON customer.address_id=address.address_id
JOIN city ON address.city_id=city.city_id
JOIN country ON city.country_id=country.country_id
GROUP BY country
ORDER BY country ASC;
**/
