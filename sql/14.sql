/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

\i 14_function.sql

SELECT *
FROM list_category('Family');
