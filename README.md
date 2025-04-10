# Task 3: SQL for Data Analysis – Elevate Labs Internship

This project contains SQL queries written as part of *Task 3* in the *Data Analyst Internship by Elevate Labs*.

## Objective

Use SQL queries to extract and analyze data from an Ecommerce database using *MySQL*.

## Dataset:
- Custom sample Ecommerce SQL database:sample_ecommerce.sql ( included in this repo ) 

## Tools Used

- MySQL Server
- MySQL Workbench


##  Files Included

- task3_queries.sql – All SQL queries for analysis
- sample_ecommerce.sql – Sample ecommerce database schema and data ( included in this repo )
- Task3_Screenshots  of query outputs ( included in this repo )


## SQL Concepts Covered

- SELECT, WHERE, ORDER BY, GROUP BY
- INNER JOIN
- Aggregate functions like SUM(), AVG()
- Subqueries
- Views


## Sample Queries Written

sql

-- Query 1: Show All Customers
SELECT * FROM customers;

-- Query 2: List All Orders with Customer Name
SELECT 
    orders.order_id,
    customers.customer_name,
    orders.order_date
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id;

-- Query 3: List Products in Each Order
SELECT 
    orders.order_id,
    products.product_name,
    order_items.quantity
FROM order_items
JOIN orders ON order_items.order_id = orders.order_id
JOIN products ON order_items.product_id = products.product_id;

-- Query 4: Total Spend per Customer
SELECT 
    customers.customer_name,
    SUM(products.price * order_items.quantity) AS total_spent
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
JOIN products ON order_items.product_id = products.product_id
GROUP BY customers.customer_name;

-- Query 5: Products with Price Greater Than 50
SELECT * FROM products
WHERE price > 50;

-- Query 6: Average Order Val...
-- (truncated for display, see the .sql file for full list)



## How to Run

1. Import sample_ecommerce.sql into MySQL using MySQL Workbench.
2. Open task3_queries.sql and execute queries.
3. Take screenshots and add them to the screenshots/ folder.



## Outcome

Learned to:
- Manipulate and query structured data using SQL
- Use joins, aggregations, and subqueries to extract insights



## Author

- SK Sameer Ali  
- B.Tech in Data Science, Acharya Nagarjuna University

