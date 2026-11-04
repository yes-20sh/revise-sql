SELECT * FROM departments

SELECT * FROM categories


SELECT 'employees'   AS table_name, COUNT(*) AS row_count FROM employees
UNION ALL SELECT 'categories',   COUNT(*) FROM categories
UNION ALL SELECT 'products',     COUNT(*) FROM products
UNION ALL SELECT 'customers',    COUNT(*) FROM customers
UNION ALL SELECT 'orders',       COUNT(*) FROM orders
UNION ALL SELECT 'order_items',  COUNT(*) FROM order_items
UNION ALL SELECT 'payments',     COUNT(*) FROM payments;