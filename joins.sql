/*
INNER JOIN
*/

SELECT o.status, o.order_id, o.order_date, c.first_name, c.last_name, c.email, c.customer_id 
FROM orders AS o
INNER JOIN customers AS c ON c.customer_id = o.customer_id 

/*
LEFT JOIN
*/

SELECT o.status, o.order_id, o.order_date, e.first_name, e.last_name, e.email, e.employee_id 
FROM orders AS o
LEFT JOIN employees AS e ON e.employee_id = o.employee_id 

/*
RIGHT JOIN
*/

SELECT o.status, o.order_id, o.order_date, e.first_name, e.last_name, e.email, e.employee_id 
FROM orders AS o
RIGHT JOIN employees AS e ON e.employee_id = o.employee_id 

/*
FULL OUTER JOIN
*/

SELECT o.status, o.order_id, o.order_date, e.first_name, e.last_name, e.email, e.employee_id 
FROM orders AS o
FULL OUTER JOIN employees AS e ON e.employee_id = o.employee_id 

/*
CROSS JOIN
*/

SELECT d.department, c.category_name
FROM departments AS d
CROSS JOIN categories AS c








