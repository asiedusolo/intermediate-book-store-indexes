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