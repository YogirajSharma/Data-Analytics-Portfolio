# 🍔 Zomato MySQL Data Analytics Project

<p align="center">
  <strong>MySQL Database Design & SQL Data Analytics Project</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
  <img src="https://img.shields.io/badge/SQL-Data%20Analytics-CC2927?style=for-the-badge&logo=mysql&logoColor=white">
  <img src="https://img.shields.io/badge/Database-Design-2E8B57?style=for-the-badge">
  <img src="https://img.shields.io/badge/Data-Analysis-6A5ACD?style=for-the-badge">
</p>

---

## 📌 Project Overview

The **Zomato MySQL Data Analytics Project** is a relational database and SQL analysis project based on a food-ordering and delivery platform.

This project uses **MySQL and SQL** to create, populate, connect, and analyze a relational database containing information about:

- 👤 Customers
- 🍴 Restaurants
- 👨‍💼 Zomato Employees
- 🍕 Food Items
- 📦 Orders
- 💳 Payments
- 🛒 Ordered Food Items

The project contains a complete SQL database script, a database schema diagram, and **15 SQL analysis questions**.

The analysis focuses on customers, restaurants, food items, orders, delivery time, employees, and payment information.

---

# 🎯 Project Objective

The main objective of this project is to develop practical knowledge of **MySQL, SQL, relational database design, and data analytics**.

### The project focuses on:

- Creating a relational database
- Creating and managing tables
- Defining Primary Keys
- Defining Foreign Keys
- Inserting sample data
- Connecting tables using JOINs
- Performing data aggregation
- Filtering and sorting data
- Analyzing customer orders
- Analyzing restaurant performance
- Analyzing food popularity
- Analyzing delivery time
- Analyzing employee ratings
- Analyzing payment methods
- Using subqueries
- Using CTEs
- Using CASE expressions
- Using SQL window functions
- Using ranking functions

---

# 🗄️ Database Information

| Property | Details |
|---|---|
| Database / Schema | `zomatodb` |
| Database Type | Relational Database |
| DBMS | MySQL |
| Query Language | SQL |
| Number of Tables | 7 |
| Analysis Questions | 15 |
| Main Focus | Customers, Orders, Restaurants, Food, Delivery & Payments |

The SQL script creates the database using:

```sql
DROP SCHEMA IF EXISTS zomatodb;

CREATE SCHEMA zomatodb;

USE zomatodb;
```

> ⚠️ **Important:** The SQL script starts with `DROP SCHEMA IF EXISTS zomatodb;`. If a schema named `zomatodb` already exists, it will be removed before the new schema is created.

---

# 📂 Project Structure

```text
zomato-mysql-data-analytics/
│
├── zomato_database.sql
│
├── schema/
│   └── zomato_schema.png
│
└── README.md
```

### 📄 Project Files

| File | Description |
|---|---|
| [`zomato_database.sql`](./zomato_database.sql) | Complete MySQL database creation, sample data, relationships, and SQL analysis queries |
| [`zomato_schema.png`](./schema/zomato_schema.png) | Database schema showing tables and relationships |
| [`README.md`](./README.md) | Complete project documentation |

---

# 📝 SQL Database File

The complete SQL script is available in this repository.

<p align="center">

[![View SQL File](https://img.shields.io/badge/📄%20View%20SQL%20File-zomato__database.sql-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](./zomato_database.sql)

</p>

The SQL file contains:

- Database creation
- Table creation
- Primary keys
- Foreign keys
- Sample data
- SQL analysis queries
- Aggregations
- Joins
- Subqueries
- CTEs
- Window functions
- Ranking analysis

---

# 🖼️ Database Schema

The following schema represents the structure of the Zomato database and shows the relationships between the different tables.

<p align="center">
  <img src="./schema/zomato_schema.png"
       alt="Zomato MySQL Database Schema"
       width="950">
</p>

### 🔗 Main Database Relationships

```text
customer
    │
    └── order_detail
            │
            ├── restaurant
            │
            └── zomato_employee

order_detail
    │
    ├── payment_table
    │
    └── order_food
            │
            └── foods
```

### Main Foreign Key Relationships

```text
order_detail.customer_id
        ↓
customer.customer_id
```

```text
order_detail.restaurant_id
        ↓
restaurant.restaurant_id
```

```text
order_detail.employee_id
        ↓
zomato_employee.employee_id
```

```text
payment_table.order_id
        ↓
order_detail.order_id
```

```text
order_food.order_id
        ↓
order_detail.order_id
```

```text
order_food.food_id
        ↓
foods.food_id
```

---

# 🗃️ Database Tables

The database contains **7 tables**.

| No. | Table | Description |
|---:|---|---|
| 1 | `customer` | Stores customer information |
| 2 | `restaurant` | Stores restaurant information and ratings |
| 3 | `zomato_employee` | Stores employee information and ratings |
| 4 | `foods` | Stores food item names and prices |
| 5 | `order_detail` | Stores order, customer, restaurant, employee, and delivery information |
| 6 | `payment_table` | Stores payment transaction information |
| 7 | `order_food` | Stores food items and quantities associated with orders |

---

# 📊 SQL Analysis Questions

The project contains **15 SQL analysis questions**.

Each question demonstrates a practical SQL technique used for data analysis.

---

## 1️⃣ Top 3 Customers by Number of Orders

**Question:**  
Find the top 3 customers who have placed the highest number of orders.

**Explanation:**  
Identifies the three customers with the highest total number of orders.

**Concepts Used:**

```text
COUNT()
GROUP BY
ORDER BY
LIMIT
```

---

## 2️⃣ Restaurant with the Highest Average Rating

**Question:**  
Find the restaurant with the highest average rating.

**Explanation:**  
Identifies the restaurant having the highest restaurant rating.

**Concepts Used:**

```text
MAX()
Subquery
WHERE
ORDER BY
LIMIT
```

---

## 3️⃣ Orders Delivered in Under 30 Minutes

**Question:**  
Find orders that were delivered in less than 30 minutes.

**Explanation:**  
Calculates the time difference between order time and delivery time.

**Concepts Used:**

```text
TIMESTAMPDIFF()
WHERE
```

---

## 4️⃣ Total Revenue by Food Item

**Question:**  
Calculate the total revenue generated by each food item.

**Explanation:**  
Calculates revenue using quantity multiplied by price per unit.

**Formula:**

```text
Revenue = Quantity × Price Per Unit
```

**Concepts Used:**

```text
JOIN
SUM()
GROUP BY
ORDER BY
```

---

## 5️⃣ Second Highest Revenue-Generating Restaurant

**Question:**  
Find the restaurant with the second-highest revenue.

**Explanation:**  
Calculates restaurant revenue and identifies the second-highest result.

**Concepts Used:**

```text
JOIN
SUM()
GROUP BY
ORDER BY
LIMIT
OFFSET
```

---

## 6️⃣ Top 5 Most Popular Food Items

**Question:**  
Find the five most popular food items based on quantity sold.

**Explanation:**  
Identifies the food items with the highest total quantity sold.

**Concepts Used:**

```text
JOIN
SUM()
GROUP BY
ORDER BY
LIMIT
```

---

## 7️⃣ Top 3 Zomato Employees by Rating

**Question:**  
Find the top 3 employees based on their average rating.

**Explanation:**  
Ranks employees according to their stored average rating.

**Concepts Used:**

```text
ORDER BY
LIMIT
```

---

## 8️⃣ Month with the Highest Number of Orders

**Question:**  
Find the month with the highest number of orders.

**Explanation:**  
Groups orders by month and identifies the month with the highest order count.

**Concepts Used:**

```text
MONTHNAME()
COUNT()
GROUP BY
ORDER BY
LIMIT
```

---

## 9️⃣ Average Order Amount per Customer

**Question:**  
Calculate the average order amount for each customer.

**Explanation:**  
Calculates the order value and then finds the average order amount for each customer.

**Formula:**

```text
Order Amount = Quantity × Price Per Unit
```

**Concepts Used:**

```text
JOIN
Subquery
SUM()
AVG()
ROUND()
GROUP BY
ORDER BY
```

---

## 🔟 Most Frequent Customer for Each Restaurant

**Question:**  
Find the most frequent customer for each restaurant.

**Explanation:**  
Counts customer orders within each restaurant and ranks the customers.

**Concepts Used:**

```text
JOIN
GROUP BY
RANK()
OVER()
PARTITION BY
```

---

## 1️⃣1️⃣ Total Orders Placed on Weekends

**Question:**  
Find the total number of orders placed during weekends.

**Explanation:**  
Counts orders placed on Saturday and Sunday.

**Concepts Used:**

```text
CTE
DAYNAME()
DAYOFWEEK()
WEEKDAY()
COUNT()
WHERE
```

---

## 1️⃣2️⃣ Average Delivery Time: Weekdays vs Weekends

**Question:**  
Compare average delivery time between weekdays and weekends.

**Explanation:**  
Classifies orders into weekdays and weekends and calculates their average delivery time.

**Concepts Used:**

```text
CASE
WHEN
TIMESTAMPDIFF()
AVG()
GROUP BY
```

---

## 1️⃣3️⃣ Top 5 Most Expensive Food Items

**Question:**  
Find the five most expensive food items.

**Explanation:**  
Sorts food items by price and returns the five highest-priced items.

**Concepts Used:**

```text
ORDER BY
LIMIT
DENSE_RANK()
```

---

## 1️⃣4️⃣ Restaurant with the Most Diverse Menu

**Question:**  
Find the restaurant with the highest number of distinct food items.

**Explanation:**  
Counts unique food items associated with each restaurant.

**Concepts Used:**

```text
COUNT(DISTINCT)
JOIN
GROUP BY
ORDER BY
Subquery
MAX()
HAVING
```

---

## 1️⃣5️⃣ Payment Amount by Payment Type

**Question:**  
Calculate the total payment amount for each payment type.

**Explanation:**  
Calculates the value of ordered food items and groups the result by payment type.

**Formula:**

```text
Payment Amount = Quantity × Price Per Unit
```

**Concepts Used:**

```text
JOIN
SUM()
GROUP BY
```

---

# 🧠 SQL Concepts Used

This project demonstrates important SQL concepts used in real-world data analysis.

## 🏗️ DDL — Data Definition Language

```sql
DROP SCHEMA
CREATE SCHEMA
USE
CREATE TABLE
DROP TABLE
```

Used for creating and managing the database structure.

---

## 📝 DML — Data Manipulation Language

```sql
INSERT INTO
```

Used to insert records into the database tables.

---

## 🔗 SQL JOINs

Used to combine data from multiple related tables.

```sql
JOIN
```

---

## 📊 Aggregate Functions

```sql
COUNT()
SUM()
AVG()
MAX()
```

Used to calculate analytical metrics.

---

## 📋 GROUP BY

Used to group records for analysis.

```sql
GROUP BY
```

---

## 🔍 Filtering

```sql
WHERE
HAVING
```

Used to filter individual records and grouped results.

---

## ↕️ Sorting

```sql
ORDER BY
```

Used to sort analytical results.

---

## 🔢 LIMIT & OFFSET

Used to return a specific number of records.

```sql
LIMIT
OFFSET
```

---

## 🧩 Subqueries

Subqueries are used when the result of one query is required by another query.

---

## 🧱 Common Table Expressions

The project uses:

```sql
WITH
```

to create Common Table Expressions.

---

## 🏆 Window Functions

The project uses:

```sql
RANK() OVER(...)
```

and:

```sql
DENSE_RANK() OVER(...)
```

for ranking analysis.

---

## 📌 PARTITION BY

Used with window functions to perform ranking within separate groups.

---

## 🔀 CASE Expression

Used to classify orders into categories such as:

```text
Weekday
Weekend
```

---

## 📅 Date & Time Functions

The project uses functions such as:

```sql
TIMESTAMPDIFF()
MONTHNAME()
DAYNAME()
DAYOFWEEK()
WEEKDAY()
```

---

## 🎯 DISTINCT

Used to identify unique food items during menu analysis.

---

## ➗ Arithmetic Calculations

The project calculates revenue and order amounts using:

```text
Quantity × Price Per Unit
```

---

# 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| 🐬 **MySQL** | Database creation and management |
| 📝 **SQL** | Data querying and analysis |
| 💻 **MySQL Workbench** | SQL development and execution |
| 🗄️ **Relational Database** | Structured data storage |
| 🔗 **Primary & Foreign Keys** | Table relationships |
| 📊 **SQL Analytics** | Data analysis |

---

# 🔄 Project Workflow

The project follows a structured SQL data analysis workflow:

```text
Database Creation
        ↓
Table Creation
        ↓
Primary & Foreign Keys
        ↓
Insert Sample Data
        ↓
Explore Database
        ↓
JOIN Related Tables
        ↓
Aggregate Data
        ↓
Filter & Group Data
        ↓
Apply Advanced SQL
        ↓
Analyze Results
```

### 1️⃣ Database Creation

Create the `zomatodb` database/schema.

### 2️⃣ Table Creation

Create the seven required tables.

### 3️⃣ Define Relationships

Use Primary Keys and Foreign Keys to connect related tables.

### 4️⃣ Insert Data

Insert sample customers, restaurants, employees, food items, orders, and payment records.

### 5️⃣ Explore the Data

Inspect tables and understand their columns and relationships.

### 6️⃣ Write SQL Queries

Develop queries to answer analytical questions.

### 7️⃣ Perform Data Analysis

Use:

```text
JOINs
GROUP BY
Aggregate Functions
WHERE
HAVING
ORDER BY
```

### 8️⃣ Apply Advanced SQL

Use:

```text
Subqueries
CTEs
CASE
RANK()
DENSE_RANK()
PARTITION BY
```

### 9️⃣ Analyze Results

Use query results to understand customers, restaurants, food items, orders, delivery times, employees, and payments.

---

# 📥 How to Download the Project

## Option 1 — Download ZIP

1. Open the GitHub repository.
2. Click the **Code** button.
3. Select **Download ZIP**.
4. Extract the ZIP file.
5. Open:

```text
zomato-mysql-data-analytics/
```

6. The SQL file is:

```text
zomato_database.sql
```

7. The schema image is:

```text
schema/zomato_schema.png
```

---

## Option 2 — Clone the Repository

If Git is installed, run:

```bash
git clone https://github.com/YogirajSharma/Data-Analytics-Portfolio.git
```

Then navigate to:

```text
Data-Analytics-Portfolio/MySQL/zomato-mysql-data-analytics/
```

---

# ▶️ How to Run the SQL Project

## Step 1 — Install MySQL

Install:

- MySQL Server
- MySQL Workbench

Make sure the MySQL Server is running.

---

## Step 2 — Open MySQL Workbench

Open **MySQL Workbench** and connect to your MySQL server.

---

## Step 3 — Open the SQL File

Open:

```text
zomato_database.sql
```

In MySQL Workbench:

```text
File → Open SQL Script
```

Select the SQL file.

---

## Step 4 — Execute the SQL Script

Click the **Execute** button in MySQL Workbench.

The script will:

1. Create the `zomatodb` schema.
2. Create the required tables.
3. Define keys and relationships.
4. Insert sample data.
5. Execute the SQL analysis queries.

---

## Step 5 — Refresh the Schema

Refresh the **Schemas** panel in MySQL Workbench.

You should see:

```text
zomatodb
│
├── customer
├── restaurant
├── zomato_employee
├── foods
├── order_detail
├── payment_table
└── order_food
```

---

## Step 6 — Run Individual Queries

You can execute each analysis question separately.

For learning:

```text
Read Question
      ↓
Identify Tables
      ↓
Understand Relationships
      ↓
Understand Query
      ↓
Execute Query
      ↓
Check Result
```

---

# ⚠️ Important Before Running

The SQL file contains:

```sql
DROP SCHEMA IF EXISTS zomatodb;
```

This means an existing `zomatodb` schema will be deleted before the project schema is recreated.

> ⚠️ **Do not run the complete SQL script if you have important data inside an existing `zomatodb` schema.**

---

# 🎓 Key Learning Areas

This project provides practical experience in:

### 🗄️ Relational Database Design

Understanding how multiple tables can represent a real-world food delivery system.

### 🔑 Primary Keys

Understanding how unique identifiers are used to identify records.

### 🔗 Foreign Keys

Understanding how related tables are connected.

### 🔄 SQL JOINs

Combining information from multiple tables.

### 📊 Aggregate Functions

Using:

```sql
COUNT()
SUM()
AVG()
MAX()
```

for data analysis.

### 📋 GROUP BY

Grouping data for analytical calculations.

### 🔍 WHERE & HAVING

Filtering records and aggregated results.

### 🧩 Subqueries

Using queries inside other queries.

### 🧱 CTEs

Using `WITH` to simplify complex queries.

### 🏆 Window Functions

Using `RANK()` and `DENSE_RANK()` for ranking.

### 📌 PARTITION BY

Performing ranking within groups.

### 🔀 CASE

Classifying records based on conditions.

### 📅 Date & Time Analysis

Analyzing order and delivery timestamps.

### 💰 Revenue Analysis

Calculating revenue using quantity and price.

### 🍕 Food Analysis

Analyzing food prices and popularity.

### 🍴 Restaurant Analysis

Analyzing restaurant ratings, revenue, and menu diversity.

### 👤 Customer Analysis

Analyzing customer orders and ordering frequency.

---

# 💼 Skills Demonstrated

- 🐬 MySQL
- 📝 SQL
- 🗄️ Relational Database Design
- 🔑 Primary Keys
- 🔗 Foreign Keys
- 🔗 SQL JOINs
- 📊 Aggregate Functions
- 📋 GROUP BY
- 🔍 WHERE & HAVING
- ↕️ ORDER BY
- 🧩 Subqueries
- 🧱 CTEs
- 🏆 Window Functions
- 📌 PARTITION BY
- 🔀 CASE Expressions
- 📅 Date & Time Functions
- 📈 Ranking Analysis
- 🍕 Food Analysis
- 🍴 Restaurant Analysis
- 👤 Customer Analysis
- 📦 Order Analysis
- 💳 Payment Analysis

---

# 🔗 Quick Project Links

### 📄 SQL Database & Analysis

[![View SQL File](https://img.shields.io/badge/📄%20View%20SQL%20File-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](./zomato_database.sql)

### 🖼️ Database Schema

[View Database Schema](./schema/zomato_schema.png)

---

# 📊 Project Summary

| Category | Details |
|---|---|
| Project Type | MySQL Data Analytics |
| Database | `zomatodb` |
| Tables | 7 |
| Analysis Questions | 15 |
| DBMS | MySQL |
| Query Language | SQL |
| Schema | Included |
| Sample Data | Included in SQL file |
| Advanced SQL | CTEs, Subqueries, CASE & Window Functions |

---

# 🏁 Conclusion

The **Zomato MySQL Data Analytics Project** demonstrates how a relational database can be created, populated, connected, and analyzed using MySQL and SQL.

The project contains seven related tables covering:

- Customers
- Restaurants
- Employees
- Food Items
- Orders
- Payments
- Ordered Food Items

The 15 SQL analysis questions provide practical experience in analyzing:

- Customer orders
- Restaurant ratings
- Delivery times
- Food revenue
- Popular food items
- Employee ratings
- Monthly orders
- Average customer order amounts
- Restaurant customer frequency
- Weekend orders
- Weekday vs weekend delivery time
- Food prices
- Restaurant menu diversity
- Payment types

The project also demonstrates important SQL concepts including **JOINs, aggregate functions, subqueries, CTEs, CASE expressions, date/time functions, RANK(), DENSE_RANK(), GROUP BY, HAVING, and PARTITION BY**.

Overall, this project provides a practical foundation for developing skills in **MySQL, SQL Data Analytics, Relational Database Management, and Business-oriented Data Analysis**.

---

# ⭐ Project Highlights

```text
Database       → zomatodb
Tables         → 7
SQL Questions  → 15
DBMS           → MySQL
Language       → SQL
Schema         → Included
Analysis       → Customer, Food, Restaurant, Order & Payment
Advanced SQL   → CTE, Subqueries, CASE, RANK & DENSE_RANK
```

---

<p align="center">

### 🍔 Zomato MySQL Data Analytics Project

<strong>Built with MySQL & SQL</strong>

</p>

<p align="center">
  ⭐ If you find this project useful, consider giving the repository a star!
</p>
