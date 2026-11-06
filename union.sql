/*
UNION
*/

SELECT
    first_name,
    last_name,
    'employee' AS role
FROM employees
UNION ALL
SELECT
    first_name,
    last_name,
    'customer' AS role
FROM customers;