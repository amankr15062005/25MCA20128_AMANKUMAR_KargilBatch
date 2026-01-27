# 📘 SQL SELECT Queries using PostgreSQL

## 👤 Student Details

* **Name:** Aman Kumar
* **UID:** 25MCA20128
* **Branch:** MCA (General)
* **Semester:** II
* **Section/Group:** 1/A
* **Subject:** Technical Training
* **Subject Code:** 25CAP-652

---

## 🎯 Aim of the Experiment

To implement and analyze SQL `SELECT` queries using **filtering, sorting, grouping, and aggregation** concepts in **PostgreSQL** for efficient data retrieval and analytical reporting.

---

## ✅ Objectives

After completing this experiment, the learner will be able to:

* Retrieve specific data using **WHERE** clause
* Sort query results using **ORDER BY**
* Perform aggregation using **GROUP BY**
* Apply conditions on aggregated data using **HAVING** clause
* Understand real‑world SQL queries asked in placement interviews

---

## 🛠️ Tools & Technologies Used

* **Database:** PostgreSQL
* **Language:** SQL
* **Platform:** Windows

---

## 🧪 Experiment Overview

This experiment demonstrates how to:

* Create a database and table
* Insert realistic customer order data
* Apply filtering, sorting, grouping, and aggregation
* Analyze the difference between `WHERE` and `HAVING`

---

## 📋 Procedure

### 1️⃣ Create Database

```sql
CREATE DATABASE CompanyDB;
```

### 2️⃣ Create Table

```sql
CREATE TABLE customer_orders (
  order_id SERIAL PRIMARY KEY,
  customer_name VARCHAR(20),
  product VARCHAR(20),
  quantity INT,
  price NUMERIC(10,2),
  order_date DATE
);
```

### 3️⃣ Insert Records

```sql
INSERT INTO customer_orders (customer_name, product, quantity, price, order_date) VALUES
('Aman', 'Laptop', 1, 55000.00, '2025-01-10'),
('Rohit', 'Mobile', 2, 20000.00, '2025-01-11'),
('Neha', 'Tablet', 1, 30000.00, '2025-01-12'),
('Priya', 'Laptop', 1, 56000.00, '2025-01-13'),
('Rahul', 'Mobile', 3, 18000.00, '2025-01-14'),
('Kiran', 'Headphone', 2, 3000.00, '2025-01-15'),
('Suman', 'Keyboard', 1, 1500.00, '2025-01-16'),
('Ankit', 'Mouse', 2, 800.00, '2025-01-17');
```

### 4️⃣ Display All Records

```sql
SELECT * FROM customer_orders;
```

### 5️⃣ Filtering Data (WHERE)

```sql
SELECT order_id, customer_name, product, quantity, price
FROM customer_orders
WHERE price > 20000;
```

### 6️⃣ Sorting Results (ORDER BY)

**Ascending Order**

```sql
SELECT * FROM customer_orders
ORDER BY price;
```

**Descending Order**

```sql
SELECT * FROM customer_orders
ORDER BY price DESC;
```

### 7️⃣ Grouping & Aggregation (GROUP BY)

```sql
SELECT product, COUNT(*) AS total_product_sale
FROM customer_orders
GROUP BY product;
```

### 8️⃣ Applying Conditions on Aggregated Data (HAVING)

```sql
SELECT product, SUM(quantity * price) AS total_revenue
FROM customer_orders
GROUP BY product
HAVING SUM(quantity * price) > 50000;
```

### 9️⃣ Using WHERE and HAVING Together

```sql
SELECT product, SUM(quantity * price) AS total_revenue
FROM customer_orders
WHERE order_date >= '2025-01-01'
GROUP BY product
HAVING SUM(quantity * price) > 50000;
```

---

## 📊 Input / Output Analysis

### Input

* Customer order details
* SQL queries using WHERE, ORDER BY, GROUP BY, HAVING

### Output

* Filtered customer records
* Sorted datasets
* Product‑wise sales summary
* Revenue analysis reports

---

## 🎓 Learning Outcomes

* Clear understanding of data filtering and sorting
* Practical knowledge of aggregation and grouping
* Strong clarity on **WHERE vs HAVING**
* Improved confidence in writing analytical SQL queries
* Better preparation for placement and interview questions

---

## 🏁 Conclusion

This experiment provides hands‑on experience with essential SQL querying techniques used in real‑world database applications. It strengthens analytical thinking and practical SQL skills.

---

✅ **Experiment Successfully Completed**

