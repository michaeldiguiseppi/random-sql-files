SELECT * FROM customers ORDER BY name;
SELECT * FROM customers ORDER BY name DESC;
SELECT * FROM items;
SELECT * FROM items WHERE description LIKE '%boot%';
SELECT * FROM orders;

SELECT * FROM orders LIMIT 5;
/* OR */
SELECT TOP(5) * FROM orders;

SELECT * FROM orders ORDER BY id DESC LIMIT 5;
/* OR */
SELECT TOP(5) * FROM orders ORDER BY id DESC;

SELECT name, email FROM customers;
SELECT id, name, address FROM customers;
SELECT COUNT(*) FROM customers;
SELECT SUM(amount) FROM orders;
SELECT SUM(amount) FROM orders WHERE customer_id = 1;
SELECT AVG(amount) FROM orders;
SELECT ROUND(AVG(amount), 2) FROM orders;
SELECT MIN(amount) FROM orders;
SELECT MAX(amount) FROM orders;
SELECT MIN(amount), customer_id FROM orders GROUP BY customer_id;
SELECT MAX(amount), customer_id FROM orders GROUP BY customer_id;


SELECT * FROM customers WHERE state = 'Colorado';
SELECT * FROM customers WHERE state = 'Colorado' AND city = 'Rigobertoside';
SELECT * FROM customers WHERE state = 'Ohio' OR state = 'Virginia';

UPDATE items SET description = 'board01' WHERE description = 'snow board';
SELECT * FROM items;

INSERT INTO items (name, description) VALUES ('kayak01', 'one person river kayak');
SELECT * FROM items;
DELETE FROM items WHERE name = 'kayak01';


SELECT SUM(amount), customer_id FROM orders GROUP BY customer_id;


SELECT orders.id, customers.name, orders.amount FROM orders INNER JOIN customers ON orders.customer_id = customers.id;
SELECT customers.id, customers.name, SUM(amount) FROM orders INNER JOIN customers ON orders.customer_id = customers.id GROUP BY customers.name, customers.id ORDER BY customers.name;

SELECT customers.id, customers.name, AVG(amount) FROM orders INNER JOIN customers ON orders.customer_id = customers.id GROUP BY customers.name, customers.id ORDER BY customers.name;


SELECT customers.id, customers.name, ROUND(AVG(amount), 2) FROM orders INNER JOIN customers ON orders.customer_id = customers.id GROUP BY customers.name, customers.id ORDER BY customers.name;


SELECT items.name, orders.customer_id, customers.name FROM orderitems INNER JOIN orders ON orderitems.order_id = orders.id INNER JOIN items ON orderitems.item_id = items.id INNER JOIN customers ON orders.customer_id = customers.id WHERE customer_id = 2;

SELECT orders.customer_id, customers.name FROM orderitems INNER JOIN orders ON orderitems.order_id = orders.id INNER JOIN customers ON orders.customer_id = customers.id WHERE item_id = 8 ORDER BY customers.name;


SELECT orders.customer_id, customers.name FROM orderitems INNER JOIN orders ON orderitems.order_id = orders.id INNER JOIN customers ON orders.customer_id = customers.id INNER JOIN items ON orderitems.item_id = items.id WHERE items.name = 'bike03' ORDER BY customers.name;


SELECT SUM(orders.amount) FROM orderitems INNER JOIN orders ON orderitems.order_id = orders.id INNER JOIN customers ON orders.customer_id = customers.id WHERE item_id = 6 AND customers.id = 4;










