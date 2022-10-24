------1-------
CREATE TABLE orders (
    orders_id SERIAL,
    person_id INT PRIMARY KEY,
    product_name VARCHAR(20),
    product_price FLOAT,
    quantity INT
);
------2-------
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Product 1', 6.50, 10),
(2, 'Product 3', 12.75, 4),
(3, 'Product 8', 19.99, 7)
------3-------
SELECT * FROM orders
------4-------
SELECT SUM(quantity)
FROM orders;
------5-------
SELECT SUM(quantity * product_price)
FROM orders;
------6-------
SELECT SUM(quantity * product_price)
FROM orders
GROUP BY (person_id);