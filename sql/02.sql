/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */

\i 02_function.sql

SELECT *
FROM get_actor_ids('J');
