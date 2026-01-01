-- total_revenue

SELECT 
    b.book_id,
    b.title,
    COALESCE(SUM(o.quantity), 0) AS total_units_sold,
    COALESCE(SUM(o.quantity * b.price), 0) AS total_revenue
FROM Books b
LEFT JOIN Orders o ON o.book_id = b.book_id
GROUP BY b.book_id, b.title
ORDER BY total_revenue DESC;

-- avg_order_value

SELECT 
    ROUND(SUM(quantity * b.price) * 1.0 / COUNT(DISTINCT o.order_id), 2) AS avg_order_value
FROM Orders o
JOIN Books b ON o.book_id = b.book_id;

-- monthly revenue trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(o.quantity * b.price) AS total_revenue
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY month
ORDER BY month;

