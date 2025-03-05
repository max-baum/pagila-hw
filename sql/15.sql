/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

\i 15_function.sql

SELECT name, count as sum
FROM category_counts_by_language('English');
