BEGIN;

INSERT INTO categories (category_id, category_name, description) VALUES
('fbcf3424-be44-570d-8afa-d85b535d032b', 'Electronics', 'Gadgets, computer accessories and audio equipment'),
('25b737a5-4b2f-5e26-9890-50016ac1c883', 'Home & Kitchen', 'Appliances and tools for cooking and the home'),
('304e221a-d94f-5905-83f8-78077b9ef58a', 'Books', 'Programming, productivity and self-improvement books'),
('499c6730-f203-58f1-aca0-dc6d30d28a9f', 'Clothing', 'Everyday apparel for men and women'),
('541ab43b-61bd-59e0-b5da-8711851e4710', 'Sports & Outdoors', 'Fitness, camping and outdoor gear'),
('01d6a136-3fce-5019-9ae6-5eeafdd67a8a', 'Beauty & Personal Care', 'Skincare, haircare and personal grooming products');

-- Products
INSERT INTO products
(product_id, category_id, product_name, price, stock_quantity, is_active, created_at)
VALUES
('8cd2aef0-3f57-5731-b7e9-e28baef98f11', 'e5b21ace-6d08-4239-9fa6-4566ebff1256', 'Wireless Mouse', 19.99, 120, TRUE, CURRENT_DATE),
('e85af84b-22e1-5d53-bdf8-cfff74ff3c4e', 'e5b21ace-6d08-4239-9fa6-4566ebff1256', 'Keyboard', 79.99, 45, TRUE, CURRENT_DATE),
('ac7ee0d8-c321-5f5b-9621-c5a21a618412', '5404981e-43b5-4dde-ae14-b77709463807', 'Learning SQL', 42.00, 100, TRUE, CURRENT_DATE)
ON CONFLICT DO NOTHING;

-- Customers
INSERT INTO customers
(customer_id, first_name, last_name, email, city, country)
VALUES
('2726c22d-2f80-5caa-81a7-9aa30e4f84e5', 'Alice', 'Johnson', 'alice@email.com', 'Indore', 'India'),
('ae3bad65-2bde-5435-a9f3-0c16216d4030', 'Brian', 'Kim', 'brian@email.com', 'Mumbai', 'India')
ON CONFLICT DO NOTHING;

-- Orders
INSERT INTO orders
(order_id, customer_id, employee_id, order_date, status, shipping_city)
VALUES
('93280f9d-fbd9-5ba2-9572-e483d7298614', '2726c22d-2f80-5caa-81a7-9aa30e4f84e5', NULL, CURRENT_DATE, 'completed', 'Indore'),
('89d472ab-37bf-5b3e-9985-9caedd76da84', 'ae3bad65-2bde-5435-a9f3-0c16216d4030', NULL, CURRENT_DATE, 'pending', 'Mumbai')
ON CONFLICT DO NOTHING;

-- Order Items
INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
VALUES
('93280f9d-fbd9-5ba2-9572-e483d7298614', '8cd2aef0-3f57-5731-b7e9-e28baef98f11', 1, 19.99),
('93280f9d-fbd9-5ba2-9572-e483d7298614', 'e85af84b-22e1-5d53-bdf8-cfff74ff3c4e', 1, 79.99),
('89d472ab-37bf-5b3e-9985-9caedd76da84', 'ac7ee0d8-c321-5f5b-9621-c5a21a618412', 2, 42.00);

-- Payments
INSERT INTO payments (payment_id, order_id, amount, payment_method, status, payment_date) VALUES ('a1b2c3d4-e5f6-4789-8123-456789abcdef', '93280f9d-fbd9-5ba2-9572-e483d7298614', 99.98, 'credit_card', 'success', CURRENT_DATE), ('b2c3d4e5-f6a7-4890-9234-56789abcdef1', '89d472ab-37bf-5b3e-9985-9caedd76da84', 84.00, 'upi', 'failed', CURRENT_DATE) ON CONFLICT DO NOTHING;

COMMIT;



