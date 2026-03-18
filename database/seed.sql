INSERT INTO products (product_name, category, price) VALUES
('Nike Shoes', 'Footwear', 5000),
('Adidas T-shirt', 'Apparel', 2000),
('Puma Jacket', 'Apparel', 4000);

INSERT INTO customers (name, city, age) VALUES
('Rahul', 'Bangalore', 25),
('Amit', 'Delhi', 30),
('Sneha', 'Mumbai', 28);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 2, '2025-03-01'),
(2, 2, 1, '2025-03-05'),
(3, 3, 3, '2025-03-10');