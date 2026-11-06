/*
SUB QUERY
*/
SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department = 'Sales'
);



SELECT c.category_name,categories_stats.category_sales
FROM (
    SELECT p.category_id AS stat_id,
    SUM(oi.quantity * oi.unit_price) AS category_sales
    FROM order_items AS oi
    LEFT JOIN products as p ON p.product_id = oi.product_id
    GROUP BY p.category_id
) AS categories_stats
LEFT JOIN categories AS c ON c.category_id = categories_stats.stat_id
