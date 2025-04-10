SELECT * FROM customers;

SELECT 
    orders.order_id,
    customers.customer_name,
    orders.order_date
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;

SELECT 
    orders.order_id,
    products.product_name,
    order_items.quantity
FROM order_items
JOIN orders ON order_items.order_id = orders.order_id
JOIN products ON order_items.product_id = products.product_id;

SELECT 
    customers.customer_name,
    SUM(products.price * order_items.quantity) AS total_spent
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
JOIN products ON order_items.product_id = products.product_id
GROUP BY customers.customer_name;

SELECT * FROM products
WHERE price > 50;

SELECT 
    AVG(order_total) AS avg_order_value
FROM (
    SELECT 
        orders.order_id,
        SUM(products.price * order_items.quantity) AS order_total
    FROM orders
    JOIN order_items ON orders.order_id = order_items.order_id
    JOIN products ON order_items.product_id = products.product_id
    GROUP BY orders.order_id
) AS order_summary;