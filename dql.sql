/*
DQL - Data Query Language

used to fetch and retrieve data from database tables using the SELECT statement.

Command - SELECT
*/

/*
SELECT

Retrieves all records (rows) and columns from a table in a database.
*/

SELECT * FROM departments

SELECT product_name, price, stock_quantity FROM products

SELECT product_name AS "productName", price, stock_quantity AS stockQuantity FROM products

-- Distinct : remove the duplicate from the data
SELECT DISTINCT country from customers

SELECT * FROM products
WHERE stock_quantity > 200

-- AND
SELECT * FROM products
where price < 50 
    AND price > 20

-- IN
SELECT * FROM products
where category_id IN ('5404981e-43b5-4dde-ae14-b77709463807', 'e5b21ace-6d08-4239-9fa6-4566ebff1256')

-- LIKE 
SELECT * FROM products
wHERE product_name LIKE 'Wireless%'

-- IS
SELECT * FROM customers
where phone IS NOT NULL

-- COLESE
SELECT first_name, last_name, email, COALESCE(phone, 'Not available') AS phone_number from customers

-- Order by
SELECT * FROM products
ORDER BY price ASC

--- Pagination

-- Limit return the number of row only
SELECT * FROM products
ORDER BY price DESC
LIMIT 2


-- OFFSET used the skips the row
SELECT * FROM products
ORDER BY price DESC
LIMIT 2
OFFSET 2 

