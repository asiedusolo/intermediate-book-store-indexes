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

ALTER TABLE customers ADD CONSTRAINT customers_pkey PRIMARY KEY(customer_id);

EXPLAIN ANALYZE
SELECT *
FROM customers
WHERE customer_id < 100;

CREATE INDEX orders_customer_id_book_id_idx ON
orders(customer_id, book_id);

DROP INDEX IF EXISTS orders_customer_id_book_id_idx;

EXPLAIN ANALYZE 
SELECT * FROM orders
WHERE customer_id BETWEEN 100 AND 200 
  AND book_id BETWEEN 50 AND 70;

CREATE INDEX orders_customer_id_book_id_quantity_idx 
ON orders(customer_id, book_id, quantity);

EXPLAIN ANALYZE 
SELECT * FROM orders
WHERE customer_id BETWEEN 100 AND 200 
  AND book_id BETWEEN 50 AND 70;
