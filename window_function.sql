/*
WINDOW FUNCTION
*/

SELECT 
    category_id,
    product_name,
    price,
    SUM(price) OVER (PARTITION BY category_id) AS category_total_sum
FROM products


SELECT 
    category_id,
    product_name,
    price,
    row_number() OVER (ORDER BY price DESC) AS row_num
FROM products