-- Create table using DDL command.
create table customer_orders(
order_id serial primary key,
customer_name varchar(20),
product varchar(20),
quantity int,
price numeric(10,2),
order_date date
);

-- Insert records into the table.
insert into customer_orders(customer_name,product,quantity,price,order_date) values
('Aman',  'Laptop', 1, 55000.00, '2025-01-10'),
('Rohit', 'Mobile', 2, 20000.00, '2025-01-11'),
('Neha',  'Tablet',1, 30000.00, '2025-01-12'),
('Priya', 'Laptop',1, 56000.00, '2025-01-13'),
('Rahul', 'Mobile', 3, 18000.00, '2025-01-14'),
('Kiran', 'Headphone',2, 3000.00, '2025-01-15'),
('Suman', 'Keyboard', 1,1500.00, '2025-01-16'),
('Ankit', 'Mouse',  2,800.00, '2025-01-17'); 

-- Display all records.
select * from customer_orders;

-- Filtering Data Using WHERE clause.
select order_id, customer_name, product, quantity, price
from customer_orders
where price > 20000;

-- Sorting Query Results
-- Ascending Order
select order_id, customer_name, product, quantity, price
from customer_orders
where price > 20000
order by price;

-- Descending Order
select order_id, customer_name, product, quantity, price
from customer_orders
where price > 20000
order by price desc;

-- Grouping Data for Aggregation.
select product, count(*) as total_product_sale
from customer_orders
group by product;

-- Applying conditions on aggregated data (HAVING).
select product,
sum(quantity*price) as total_revenue
from customer_orders
group by product
having sum(quantity*price) > 50000;

-- Using WHERE and HAVING together.
select product, sum(quantity*price) as total_revenue
from customer_orders
where order_date >= '2025-01-01'
group by product
having sum(quantity*price) > 50000;
