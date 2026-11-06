
SELECT * FROM employees

-- count()
SELECT COUNT(*) FROM employees
SELECT COUNT(phone) AS "Phone Number" FROM employeed
SELECT COUNT(DISTINCT job_title) FROM employees

-- SUM()
SELECT order_item_id, quantity, unit_price, unit_price * quantity AS "Total Price"
FROM order_items

SELECT SUM( unit_price * quantity) AS "Total Revenue" FROM order_items

-- AVG()

SELECT AVG(price) AS average_price
FROM products

-- ROUND()
SELECT ROUND(AVG(price),2) AS average_price
FROM products

-- MIN() & MAX()
SELECT 
    MIN(products.price) AS min_price,
    MAX(products.price) AS max_price
FROM products

-- GROUP BY
SELECT job_title, employee_status, count(*) 
FROM employees
GROUP BY job_title, employee_status

-- HAVING
SELECT job_title, employee_status, count(*) 
FROM employees
GROUP BY job_title, employee_status
HAVING COUNT(*) > 1

