-- 1
CREATE TABLE orders ( 
  order_id SERIAL PRIMARY KEY, 
  person_id INTEGER, 
  product_name VARCHAR(100), 
  product_price FLOAT, 
  quantity INTEGER 
);

-- 2
INSERT INTO orders (person_id, product_name, product_price, quantity ) 
  VALUES ( 0, 'Chicken', 7.50, 1 ),
  (1, 'Beef', 8.00, 2),
  (2, 'Pork', 8.50, 1),
  (3, 'Noodles', 10.25, 3),
  (4, 'Fries', 5.99, 5);

-- 3
SELECT * FROM orders;

-- 4
SELECT SUM(quantity) FROM orders;

-- 5
SELECT SUM(product_price * quantity) FROM orders;

-- 6
SELECT SUM(product_price * quantity) FROM orders 
WHERE person_id = 4;