-- Task 3: SQL for Data Analysis (PostgreSQL)
-- Made by: Bishal Mishra

-- 1. Orders above 10,000 sorted by highest amount
SELECT order_id, customer_id, total_amount
FROM orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;

-- 2. Total revenue from each country
SELECT c.country, SUM(o.total_amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;

-- 3. JOIN examples
SELECT o.order_id, c.name, o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

SELECT c.customer_id, c.name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT o.order_id, c.name, o.total_amount
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;

-- 4. Subqueries
SELECT customer_id, name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING SUM(total_amount) >
        (SELECT AVG(total_amount) FROM orders)
);

SELECT product_id, product_name
FROM products
WHERE product_id NOT IN (
    SELECT product_id FROM order_items
);

-- 5. ARPU calculation
SELECT 
    ROUND(SUM(total_amount)::numeric, 2) /
    COUNT(DISTINCT customer_id) AS avg_revenue_per_user
FROM orders;

-- 6. View creation
CREATE VIEW revenue_summary AS
SELECT 
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

SELECT * FROM revenue_summary ORDER BY total_spent DESC;

-- 7. Indexes
CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_orderitems_order ON order_items(order_id);
CREATE INDEX idx_customers_email ON customers(email);

