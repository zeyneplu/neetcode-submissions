-- Write your query below
-- employees who qualify salary turn into bonus
SELECT employee_id, salary AS bonus from employees
WHERE employee_id %2=1 AND name NOT LIKE 'M%'

UNION

--rest assign bonus to zero
SELECT employee_id, 0 AS bonus from employees
WHERE employee_id %2=0 OR name LIKE 'M%'

ORDER BY employee_id;