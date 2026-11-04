INSERT INTO departments(department) 
VALUES ('Sales'),('support'),('warehouse')

--- Inserting data in employees table
INSERT INTO employees (first_name, last_name, email, department_id, job_title, salary, manager_id, hire_date)
VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', '7d986a29-396b-4f34-828b-769f1725a62c', 'Sales Manager', 75000, NULL, '2023-01-15'),
('Meera', 'Joshi', 'meera.joshi@example.com', '7d986a29-396b-4f34-828b-769f1725a62c', 'Sales Executive', 45000, (SELECT employee_id FROM employees WHERE email = 'aarav.sharma@example.com'), '2024-03-10'),
('Karan', 'Malhotra', 'karan.malhotra@example.com', '35c9f3ec-466d-48a5-9e53-29fb83ed189a', 'Support Executive', 40000, (SELECT employee_id FROM employees WHERE email = 'rohan.verma@example.com'), '2024-05-15'),
('Ananya', 'Singh', 'ananya.singh@example.com', '35c9f3ec-466d-48a5-9e53-29fb83ed189a', 'Support Executive', 40000, (SELECT employee_id FROM employees WHERE email = 'rohan.verma@example.com'), '2024-02-05'),
('Vikram', 'Reddy', 'vikram.reddy@example.com', '6f287dc8-3f15-4459-a854-6f9f55ba459b', 'Warehouse Manager', 65000, NULL, '2022-08-12');
