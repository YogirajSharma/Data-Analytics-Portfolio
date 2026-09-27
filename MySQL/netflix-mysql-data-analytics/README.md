# 🎬 Netflix MySQL Data Analytics Project

<p align="center">
  <img src="schema/netflix_schema.png"
       alt="Netflix MySQL Database Schema"
       width="950">
</p>

<p align="center">
  <strong>A MySQL Database Design & SQL Data Analysis Project</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
  <img src="https://img.shields.io/badge/SQL-Analysis-CC2927?style=for-the-badge&logo=mysql&logoColor=white">
  <img src="https://img.shields.io/badge/Database-Design-2E8B57?style=for-the-badge">
  <img src="https://img.shields.io/badge/Data-Analytics-6A5ACD?style=for-the-badge">
</p>

---

## 📌 Project Overview

The **Netflix MySQL Data Analytics Project** is a relational database and SQL analysis project designed around a Netflix-style streaming platform.

The project uses **MySQL and SQL** to create, populate, connect, and analyze a relational database containing information about:

- 👤 Customers
- 🌐 Preferred Languages
- 💳 Payment Methods
- 📦 Subscription Plans
- 🎬 Content
- 🔄 Subscriptions
- 💰 Payment History
- 👨‍👩‍👧 Profiles
- 👶 Child Accounts
- 🧑 Adult Accounts
- 📺 Viewing History
- 📱 Devices
- 🔗 Profile-Device Usage

The project contains **13 relational tables** and **15 SQL analysis questions** covering content viewing, subscriptions, devices, customers, payments, revenue, and viewing behavior.

---

# 🎯 Project Objective

The main objective of this project is to develop practical knowledge of **SQL, MySQL, relational database design, and data analysis**.

### The project focuses on:

- Designing a relational database
- Creating databases and tables
- Defining primary and foreign keys
- Working with composite primary keys
- Inserting sample data
- Joining multiple tables
- Performing data aggregation
- Filtering and grouping data
- Analyzing customer behavior
- Analyzing subscription plans
- Analyzing content and viewing behavior
- Analyzing payment and revenue information
- Using subqueries
- Using Common Table Expressions
- Using SQL window functions
- Ranking data using `RANK()`

---

# 🗄️ Database Information

| Property | Details |
|---|---|
| Database Name | `netflix` |
| Database Type | Relational Database |
| DBMS | MySQL |
| Query Language | SQL |
| Number of Tables | 13 |
| Analysis Questions | 15 |
| Main Focus | Customers, Content, Subscriptions, Viewing & Payments |

The database is created using:

```sql
DROP DATABASE IF EXISTS netflix;

CREATE DATABASE netflix;

USE netflix;
```

---

# 📂 Project Structure

```text
netflix-mysql-data-analytics/
│
├── netfix_database.sql
│
├── schema/
│   └── netflix_schema.png
│
└── README.md
```

---

## 📄 Project Files

| File | Description |
|---|---|
| `netfix_database.sql` | Complete MySQL database creation, table creation, sample data, and SQL analysis queries |
| `netflix_schema.png` | Database schema showing tables and relationships |
| `README.md` | Complete project documentation |

---

# 🖼️ Database Schema

The schema represents the structure of the Netflix database and shows how the different tables are connected.

<p align="center">
  <img src="schema/netflix_schema.png"
       alt="Netflix MySQL Database Schema"
       width="950">
</p>

---

## 🔗 Main Relationships

The database contains relationships between customers, profiles, subscriptions, payments, content, devices, and viewing history.

Some major relationships include:

- `CustomersLanguagePreferred.CustID → Customers.CustID`
- `PaymentMethod.CUSTID → Customers.CustID`
- `Subscribes.CUSTID → Customers.CustID`
- `Subscribes.PLANID → Plans.PLANID`
- `PaymentHistory.CardID → PaymentMethod.CardID`
- `Profiles.CUSTID → Customers.CustID`
- `ChildAcc.ProfileID → Profiles.ProfileID`
- `AdultAcc.ProfileID → Profiles.ProfileID`
- `ViewingHistory.ContentID → Content.ContentID`
- `ViewingHistory.ProfileID → Profiles.ProfileID`
- `Uses.DeviceID → Devices.DeviceID`
- `Uses.ProfileID → Profiles.ProfileID`

These relationships allow data from multiple tables to be combined using SQL joins.

---

# 🗃️ Database Tables

The database contains **13 tables**.

| No. | Table | Description |
|---:|---|---|
| 1 | `Customers` | Stores customer information |
| 2 | `CustomersLanguagePreferred` | Stores customers' preferred languages |
| 3 | `Plans` | Stores subscription plan information |
| 4 | `PaymentMethod` | Stores customer payment method information |
| 5 | `Content` | Stores movie and TV show information |
| 6 | `Subscribes` | Stores customer subscription information |
| 7 | `PaymentHistory` | Stores payment transaction information |
| 8 | `Profiles` | Stores customer profile information |
| 9 | `ChildAcc` | Stores child account/profile information |
| 10 | `AdultAcc` | Stores adult account/profile information |
| 11 | `ViewingHistory` | Stores content viewing information |
| 12 | `Devices` | Stores device information |
| 13 | `Uses` | Connects profiles with devices |

---

# 📊 SQL Analysis Questions

The SQL file contains **15 analysis questions**.

Each question demonstrates a different practical SQL analysis technique.

---

## 🎬 1. Top 3 Most-Watched Movies

### Question

Find the top 3 most-watched movies based on total viewing hours.

### Explanation

Identifies the three movies with the highest total viewing time.

### Concepts Used

```text
JOIN
SUM()
GROUP BY
ORDER BY
LIMIT
```

---

## 🎭 2. Top Genre in Each Category

### Question

Find the top genre in each category using ranking.

### Explanation

Identifies the highest-ranked genre within each content category.

### Concepts Used

```text
CTE
RANK()
PARTITION BY
GROUP BY
```

---

## 📦 3. Subscriptions for Each Plan

### Question

Find the subscriptions associated with each subscription plan.

### Explanation

Shows the subscription information associated with different plans.

### Concepts Used

```text
JOIN
GROUP BY
COUNT()
```

---

## 📱 4. Most Commonly Used Device Type

### Question

Find the device type that is used most frequently.

### Explanation

Identifies the device type appearing most frequently in the usage data.

### Concepts Used

```text
JOIN
COUNT()
GROUP BY
ORDER BY
```

---

## ⏱️ 5. Average Viewing Time: Movies vs TV Shows

### Question

Calculate the average viewing time for movies and TV shows.

### Explanation

Compares the average viewing duration between movies and TV shows.

### Concepts Used

```text
JOIN
AVG()
GROUP BY
```

---

# 👤 Customer & Profile Analysis

## 🌐 6. Most Preferred Customer Language

### Question

Find the language most preferred by customers.

### Explanation

Identifies the language that appears most frequently among customer language preferences.

### Concepts Used

```text
JOIN
COUNT()
GROUP BY
ORDER BY
```

---

## 👨‍👧 7. Adult vs Child Account Customers

### Question

Compare the number of customers associated with adult and child accounts.

### Explanation

Provides a comparison between customers associated with adult and child accounts.

### Concepts Used

```text
JOIN
COUNT()
UNION ALL
```

---

## 👥 8. Average Number of Profiles per Customer

### Question

Calculate the average number of profiles associated with each customer.

### Explanation

Determines the average number of profiles created or associated with customers.

### Concepts Used

```text
Subquery
COUNT()
AVG()
GROUP BY
```

---

## 🎬 9. Content with the Lowest Average Viewing Time

### Question

Find the content with the lowest average viewing time per user.

### Explanation

Identifies the content having the smallest average viewing duration.

### Concepts Used

```text
JOIN
AVG()
GROUP BY
ORDER BY
```

---

## 📚 10. Content Count by Category

### Question

Calculate the number of content items available in each category.

### Explanation

Shows how many content records belong to each category.

### Concepts Used

```text
COUNT()
GROUP BY
ORDER BY
```

---

# 💳 Subscription & Payment Analysis

## ♾️ 11. Unlimited vs Non-Unlimited Content Access

### Question

Find customers with unlimited and non-unlimited content access.

### Explanation

Classifies customers according to the content-access type of their subscription plan.

### Concepts Used

```text
JOIN
WHERE
DISTINCT
```

---

## 💰 12. Average Monthly Price of Unlimited Plans

### Question

Calculate the average monthly price of plans that provide unlimited content access.

### Explanation

Calculates the average monthly price among unlimited-access plans.

### Concepts Used

```text
AVG()
WHERE
HAVING
```

---

## 💳 13. Customers with Payment Methods Expiring in 2028 or Later

### Question

Find customers whose payment-method expiration year is 2028 or later.

### Explanation

Identifies customers whose payment method has an expiration year of 2028 or later.

### Concepts Used

```text
JOIN
YEAR()
CONCAT()
ORDER BY
```

---

# 💰 Revenue & Advanced Analysis

## 🏙️ 14. Average Revenue by City and City Ranking

### Question

Calculate the average payment amount by city and rank cities based on average revenue.

### Explanation

Calculates average payment amounts for cities and assigns rankings.

### Concepts Used

```text
JOIN
AVG()
GROUP BY
RANK()
PARTITION BY
```

---

## 🔞 15. Most Frequently Viewed Genre Among Adults

### Question

Find the most frequently viewed genre among adult profiles for each content category.

### Explanation

Analyzes adult viewing history to identify the most frequently viewed genre within each category.

### Concepts Used

```text
JOIN
Subquery
RANK()
PARTITION BY
GROUP BY
```

---

# 🧠 SQL Concepts Used

This project demonstrates several important SQL and database concepts.

---

## 🏗️ DDL — Data Definition Language

Used for creating and managing database structures.

```sql
CREATE DATABASE
DROP DATABASE
CREATE TABLE
DROP TABLE
USE
```

---

## 📝 DML — Data Manipulation Language

Used to insert data into database tables.

```sql
INSERT INTO
```

---

## 🔗 SQL Joins

The project uses joins to combine information stored in related tables.

```sql
JOIN
```

---

## 📊 Aggregate Functions

Used to summarize and analyze data.

```sql
COUNT()
COUNT(DISTINCT)
SUM()
AVG()
ROUND()
```

---

## 🔍 Filtering

Used to filter records according to specific conditions.

```sql
WHERE
DISTINCT
```

---

## 📋 Grouping & Sorting

Used to organize analytical results.

```sql
GROUP BY
ORDER BY
HAVING
LIMIT
```

---

## 🧩 Common Table Expressions

The project uses:

```sql
WITH
```

CTEs help structure complex queries and make them easier to understand.

---

## 🏆 Window Functions

The project uses:

```sql
RANK() OVER()
```

Window functions are used to calculate rankings without collapsing the result into a single row per group.

---

## 📌 PARTITION BY

Used with window functions to perform ranking within specific groups.

```sql
PARTITION BY
```

---

## 🔄 UNION ALL

Used to combine the results of multiple queries.

```sql
UNION ALL
```

---

## 🔎 Subqueries

Subqueries are used when one query needs the result of another query for further analysis.

---

## 🔑 Database Keys

The database demonstrates:

- Primary Keys
- Foreign Keys
- Composite Primary Keys

---

# 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| 🐬 **MySQL** | Database creation and management |
| 📝 **SQL** | Data querying and analysis |
| 💻 **MySQL Workbench** | SQL development and execution |
| 🗄️ **Relational Database** | Structured data storage |
| 🔗 **Primary & Foreign Keys** | Table relationships |
| 📊 **SQL Analytics** | Data analysis and reporting |

---

# 🔄 Project Workflow

The project follows a structured database and SQL analysis workflow.

```text
        ┌─────────────────────────┐
        │   Database Planning     │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │   Create Database       │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │   Create 13 Tables      │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │   Define Relationships  │
        │ Primary & Foreign Keys  │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │   Insert Sample Data    │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │    Explore Database     │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │    Write SQL Queries    │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │   Analyze the Data      │
        └────────────┬────────────┘
                     ↓
        ┌─────────────────────────┐
        │ Advanced SQL Analysis   │
        │ CTEs, Subqueries, Rank  │
        └─────────────────────────┘
```

---

# 🔢 Workflow Steps

### 1️⃣ Database Creation

Create the `netflix` database.

### 2️⃣ Table Creation

Create the 13 tables required for the project.

### 3️⃣ Key & Relationship Definition

Define primary keys, foreign keys, and composite keys.

### 4️⃣ Data Insertion

Insert sample records into the tables.

### 5️⃣ Data Exploration

Explore the available customer, content, subscription, device, and payment data.

### 6️⃣ SQL Query Development

Write SQL queries to answer analytical questions.

### 7️⃣ Data Aggregation

Use functions such as `COUNT()`, `SUM()`, and `AVG()`.

### 8️⃣ Advanced SQL Analysis

Use CTEs, subqueries, `RANK()`, and `PARTITION BY`.

### 9️⃣ Business-Oriented Analysis

Use SQL to answer questions related to customers, content, subscriptions, viewing, payments, and revenue.

---

# 📥 How to Download the Project

## Method 1 — Download ZIP

1. Open the GitHub repository.
2. Click the **Code** button.
3. Click **Download ZIP**.
4. Extract the ZIP file.
5. Open the project folder.
6. Locate:

```text
netfix_database.sql
```

and:

```text
schema/netflix_schema.png
```

---

## Method 2 — Clone the Repository

If Git is installed on your system, open **Git Bash** or **Command Prompt** and run:

```bash
git clone https://github.com/YogirajSharma/Data-Analytics-Portfolio.git
```

Then navigate to:

```text
Data-Analytics-Portfolio/MySQL/netflix-mysql-data-analytics/
```

---

# ▶️ How to Run the SQL Project

## Step 1 — Install MySQL

Install:

- MySQL Server
- MySQL Workbench

Make sure your MySQL Server is running.

---

## Step 2 — Open MySQL Workbench

Open **MySQL Workbench** and connect to your MySQL server.

---

## Step 3 — Open the SQL File

Open:

```text
netfix_database.sql
```

In MySQL Workbench, select:

```text
File → Open SQL Script
```

Then select the SQL file.

---

## Step 4 — Execute the SQL Script

Click the **Execute** button in MySQL Workbench.

The script will:

1. Create the `netflix` database.
2. Create the required tables.
3. Define table relationships.
4. Insert sample data.
5. Execute the SQL analysis queries.

---

## Step 5 — Refresh the Database

After executing the script, refresh the **Schemas** section in MySQL Workbench.

You should find:

```text
netflix
│
├── Customers
├── CustomersLanguagePreferred
├── Plans
├── PaymentMethod
├── Content
├── Subscribes
├── PaymentHistory
├── Profiles
├── ChildAcc
├── AdultAcc
├── ViewingHistory
├── Devices
└── Uses
```

---

## Step 6 — Run Individual Queries

The SQL file contains 15 analysis questions.

You can execute the queries individually to understand how each analysis works.

For learning purposes, try to:

- Read the question first
- Understand the tables involved
- Identify the required relationships
- Write the query
- Execute the query
- Analyze the result

---

# 🎓 Key Learning Areas

This project provides practical experience in the following areas.

---

## 🗄️ 1. Relational Database Design

Understanding how multiple tables can be designed to represent different parts of a real-world system.

---

## 🔑 2. Primary & Foreign Keys

Understanding how keys identify records and establish relationships between tables.

---

## 🧩 3. Composite Keys

Understanding how multiple columns can work together as a primary key.

---

## 🔗 4. SQL Joins

Learning how to combine information from multiple related tables.

---

## 📊 5. Aggregate Functions

Using:

```sql
COUNT()
SUM()
AVG()
ROUND()
```

to calculate useful metrics.

---

## 🔍 6. Data Filtering

Using `WHERE` and other filtering techniques to retrieve specific records.

---

## 📋 7. Grouping & Sorting

Using:

```sql
GROUP BY
ORDER BY
HAVING
```

to organize analytical results.

---

## 🔎 8. Subqueries

Using queries inside other queries for more advanced analysis.

---

## 🧱 9. Common Table Expressions

Using `WITH` to structure complex SQL queries.

---

## 🏆 10. Window Functions

Using:

```sql
RANK() OVER()
```

to rank records within groups.

---

## 📌 11. PARTITION BY

Understanding how window functions can perform calculations separately within groups.

---

## 🔄 12. UNION ALL

Combining results from multiple queries.

---

## 🎬 13. Content Analysis

Analyzing movies, TV shows, categories, genres, and viewing time.

---

## 👤 14. Customer Analysis

Analyzing customers, profiles, languages, and account types.

---

## 💳 15. Subscription & Payment Analysis

Analyzing plans, subscriptions, payment methods, payment history, and pricing.

---

# 💼 Skills Demonstrated

Through this project, the following technical skills are demonstrated:

- 🐬 MySQL
- 📝 SQL
- 🗄️ Database Design
- 🔗 SQL Joins
- 🔑 Primary Keys
- 🔐 Foreign Keys
- 🧩 Composite Keys
- 📊 Aggregate Functions
- 🔍 Data Filtering
- 📋 Data Grouping
- 🧱 CTEs
- 🔎 Subqueries
- 🏆 Window Functions
- 📈 Ranking Analysis
- 🔄 UNION ALL
- 🎬 Content Analysis
- 👤 Customer Analysis
- 💳 Payment Analysis
- 💰 Revenue Analysis

---

# 📌 Project Highlights

| Area | Details |
|---|---|
| Database | `netflix` |
| Tables | 13 |
| SQL Questions | 15 |
| Database Type | Relational |
| DBMS | MySQL |
| Main Language | SQL |
| Schema | Included |
| Sample Data | Included in SQL script |
| Advanced SQL | CTEs, Subqueries & Window Functions |

---

# 📁 Quick Project Links

## 📝 SQL Database & Analysis

[Open `netfix_database.sql`](https://github.com/YogirajSharma/Data-Analytics-Portfolio/blob/main/MySQL/netflix-mysql-data-analytics/netflix_database.sql)

## 🖼️ Database Schema

[Open `netflix_schema.png`](https://github.com/YogirajSharma/Data-Analytics-Portfolio/tree/main/MySQL/netflix-mysql-data-analytics/schema)

---

# 📚 What This Project Demonstrates

This project demonstrates how SQL can be used to move from a structured database to analytical insights:

```text
Database
    ↓
Tables
    ↓
Relationships
    ↓
Sample Data
    ↓
SQL Queries
    ↓
Data Aggregation
    ↓
Advanced SQL
    ↓
Analysis
```

The project combines database management and analytical SQL in a single practical project.

---

# 🏁 Conclusion

The **Netflix MySQL Data Analytics Project** provides practical experience in designing and analyzing a relational database using MySQL and SQL.

The project covers the complete process from **database creation and table design to data insertion and analytical querying**.

It demonstrates important SQL concepts such as:

- Joins
- Aggregate Functions
- Grouping
- Filtering
- Subqueries
- CTEs
- Window Functions
- Ranking
- `PARTITION BY`
- `UNION ALL`
- Primary Keys
- Foreign Keys
- Composite Keys

The 15 analytical questions provide hands-on practice in analyzing **customers, content, subscriptions, devices, viewing behavior, payments, and revenue**.

This project helped strengthen practical skills in **SQL, relational database management, and data analytics**, while providing a strong foundation for more advanced database and business intelligence projects.

---

# ⭐ Project Summary

> **A complete MySQL and SQL Data Analytics project focused on relational database design, customer analysis, content analysis, subscription analysis, viewing behavior, payment analysis, and advanced SQL querying.**

---

<p align="center">

### 🎬 Netflix MySQL Data Analytics Project

**Built with MySQL & SQL**

</p>

<p align="center">

⭐ If you found this project useful, consider giving the repository a star!

</p>

