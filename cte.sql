/*
CTE - COMMON TABLE EXPRESSION    

WITH var_name AS (
    sql_query
)
*/

WITH category_stats AS (
    SELECT 
        p.category_id AS stat_id,
        SUM(oi.quantity * oi.unit_price) AS category_sales
    FROM order_items AS oi
    LEFT JOIN products AS p 
        ON p.product_id = oi.product_id
    GROUP BY p.category_id
)

SELECT *
FROM category_stats AS cs
LEFT JOIN categories AS c 
    ON c.category_id = cs.stat_id;