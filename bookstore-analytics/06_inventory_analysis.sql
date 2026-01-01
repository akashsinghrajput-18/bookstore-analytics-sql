-- low stock
SELECT 
    title,
    genre,
    stock,
    15 - stock AS shortage
FROM Books
WHERE stock < 15
ORDER BY shortage DESC;