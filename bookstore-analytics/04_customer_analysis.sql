-- returning customers
SELECT 
    c.customer_id,
    c.name,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING total_orders > 1;

-- churned customers
SELECT 
    c.customer_id,
    c.name,
    MAX(o.order_date) AS last_purchase,
    DATEDIFF('2025-07-01', MAX(o.order_date)) AS days_since_last_purchase
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING days_since_last_purchase > 365;

-- RFM
WITH customer_metrics AS (
    SELECT
        c.customer_id,
        c.name,
        MAX(order_date) AS last_order,
        COUNT(o.order_id) AS frequency,
        COALESCE(SUM(o.quantity * b.price),0) AS monetary
    FROM Customers c
	LEFT JOIN Orders o ON c.customer_id = o.customer_id
    LEFT JOIN Books b ON o.book_id = b.book_id
    GROUP BY c.customer_id
)
SELECT *,
        DATEDIFF('2024-07-01', last_order) AS recency_days
FROM customer_metrics;