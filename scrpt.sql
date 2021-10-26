SELECT * FROM customers
LIMIT 10;

SELECT * FROM orders
LIMIT 10;

SELECT * FROM books
LIMIT 10;

SELECT * 
FROM pg_Indexes
WHERE tablename = 'customers';

SELECT * 
FROM pg_Indexes
WHERE tablename = 'orders';

SELECT * 
FROM pg_Indexes
WHERE tablename = 'books';

XPLAIN ANALYZE 
SELECT customer_id, quantity
FROM orders
WHERE quantity > 18
ORDER BY customer_id, quantity;

CREATE INDEX orders_quantity_greater_than_18 
ON orders(quantity)
WHERE quantity > 18;

EXPLAIN ANALYZE 
SELECT customer_id, quantity
FROM orders
WHERE quantity > 18
ORDER BY customer_id, quantity;


EXPLAIN ANALYZE
SELECT *
FROM customers
WHERE customer_id < 100;