/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */


SELECT first_name, last_name, sum(amount) as sum
FROM payment_p2020_01
JOIN staff on payment_p2020_01.staff_id=staff.staff_id
--WHERE payment.payment_date BETWEEN '2020-01-01' AND '2020-01-31'
GROUP BY first_name, last_name;

--SELECT *
--FROM payment_p2020_01;
