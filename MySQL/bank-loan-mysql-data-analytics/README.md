# 🏦 Bank Loan Data Analysis – MySQL

<p align="center">

  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">

  <img src="https://img.shields.io/badge/SQL-Analysis-336791?style=for-the-badge&logo=sql&logoColor=white" alt="SQL">

  <img src="https://img.shields.io/badge/Data%20Analytics-Project-2E7D32?style=for-the-badge" alt="Data Analytics">

  <img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge" alt="Project Status">

</p>

<p align="center">
  <b>A SQL-based Bank Loan Data Analysis Project using MySQL</b>
</p>

---

## 📌 Project Overview

The **Bank Loan Data Analysis** project is a MySQL-based data analytics project focused on analyzing loan applications, funded amounts, repayments, loan status, borrower information, interest rates, and other loan-related attributes.

The project demonstrates how SQL can be used to transform structured loan data into meaningful analytical information through **KPI analysis, loan quality analysis, loan status analysis, time-based analysis, growth analysis, and interest-rate analysis**.

The project is divided into two SQL files:

- 🗄️ **Database SQL File** – Creates the database and table and loads the loan data.
- 📊 **Analysis SQL File** – Contains SQL queries used to perform the complete loan analysis.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Analyze the overall loan portfolio.
- Calculate important loan-related KPIs.
- Compare Month-to-Date (MTD) and Previous Month-to-Date (PMTD) performance.
- Identify Good Loans and Bad Loans.
- Analyze loan status and repayment performance.
- Analyze loan applications across different dimensions.
- Analyze monthly loan trends.
- Calculate Month-over-Month loan application growth.
- Calculate Month-over-Month funded amount growth.
- Analyze average interest rates by loan grade.
- Analyze average interest rates by loan sub-grade.
- Practice SQL concepts using a financial dataset.

---

# 📊 Key Performance Indicators

The project calculates several important loan portfolio KPIs.

### 📌 Loan Applications

- Total Loan Applications
- MTD Loan Applications
- PMTD Loan Applications

### 💰 Funded Amount

- Total Funded Amount
- MTD Funded Amount
- PMTD Funded Amount

### 💵 Amount Received

- Total Amount Received
- MTD Amount Received
- PMTD Amount Received

### 📈 Financial Metrics

- Average Interest Rate
- MTD Average Interest Rate
- Average Debt-to-Income Ratio (DTI)
- MTD Average DTI

---

# 🟢 Good Loan Analysis

The project identifies **Good Loans** based on the following loan statuses:

- `Fully Paid`
- `Current`

The analysis calculates:

- Good Loan Applications
- Good Loan Percentage
- Good Loan Funded Amount
- Good Loan Amount Received

This analysis helps examine the portion of the loan portfolio associated with loans having these statuses.

---

# 🔴 Bad Loan Analysis

Loans that are neither `Fully Paid` nor `Current` are analyzed as **Bad Loans**.

The analysis includes:

- Bad Loan Applications
- Bad Loan Percentage
- Bad Loan Funded Amount
- Bad Loan Amount Received
- Charged Off loan analysis

The project uses SQL conditional logic to categorize and analyze these loan records.

---

# 📋 Loan Status Analysis

The project analyzes the loan portfolio based on individual loan statuses.

For each loan status, the analysis calculates:

- Loan Applications
- Funded Amount
- Amount Received
- Average Interest Rate
- Average DTI

An additional **MTD Loan Status Analysis** is also included.

---

# 🗓️ Loan Overview Analysis

The project analyzes loan applications across multiple dimensions.

### 📅 Monthly Analysis

- Loan applications by month
- Funded amount by month
- Amount received by month

### 🗺️ State Analysis

- Loan applications by state

### 📄 Term Analysis

- Loan applications by loan term

### 👨‍💼 Employee Length Analysis

- Loan applications by employee length

### 🎯 Purpose Analysis

- Loan applications by loan purpose

### 🏠 Home Ownership Analysis

- Loan applications by home ownership type

---

# 📈 Month-over-Month Growth Analysis

The project uses the SQL window function `LAG()` to compare values across consecutive months.

### Loan Application Growth

Month-over-Month loan application growth is calculated by comparing the current month's applications with the previous month's applications.

### Funded Amount Growth

The project also calculates Month-over-Month growth in the funded loan amount.

This demonstrates the practical use of **window functions for time-series analysis**.

---

# 💳 Interest Rate Analysis

The project analyzes average interest rates across different loan classifications.

### Grade-wise Analysis

Average interest rate is calculated for each loan grade.

### Sub-Grade Analysis

Average interest rate is also calculated for each loan sub-grade.

This allows the loan portfolio to be examined at both grade and sub-grade levels.

---

# 🗄️ Database Information

The project uses the following MySQL database:

```text
financial_db
```

The primary table used for analysis is:

```text
financial_loan
```

The database SQL file creates the database and the `financial_loan` table before loading the loan data.

---

# 📑 Main Dataset Columns

The `financial_loan` table contains loan-related fields including:

| Column | Description |
|---|---|
| `id` | Loan ID |
| `member_id` | Member ID |
| `address_state` | Borrower's state |
| `application_type` | Type of loan application |
| `emp_length` | Employment length |
| `emp_title` | Employment title |
| `grade` | Loan grade |
| `sub_grade` | Loan sub-grade |
| `home_ownership` | Home ownership status |
| `issue_date` | Loan issue date |
| `last_credit_pull_date` | Last credit pull date |
| `last_payment_date` | Last payment date |
| `next_payment_date` | Next payment date |
| `loan_status` | Current loan status |
| `purpose` | Loan purpose |
| `term` | Loan term |
| `verification_status` | Income verification status |
| `annual_income` | Annual income |
| `dti` | Debt-to-income ratio |
| `installment` | Loan installment |
| `int_rate` | Interest rate |
| `loan_amount` | Loan amount |
| `total_acc` | Total accounts |
| `total_payment` | Total payment received |

---

# 🧰 Tools & Technologies

| Technology | Purpose |
|---|---|
| 🐬 **MySQL** | Database creation and management |
| 💻 **SQL** | Data analysis and querying |
| 🛠️ **MySQL Workbench** | SQL development and execution |
| 🐙 **GitHub** | Project documentation and portfolio hosting |

---

# 💻 SQL Concepts Used

This project demonstrates a variety of SQL concepts.

## 🗄️ Database Operations

```sql
DROP DATABASE
CREATE DATABASE
USE
CREATE TABLE
```

## 📝 Data Operations

```sql
INSERT INTO
```

## 🔎 Data Querying

```sql
SELECT
WHERE
DISTINCT
GROUP BY
ORDER BY
```

## 📊 Aggregate Functions

```sql
COUNT()
SUM()
AVG()
ROUND()
```

## 🔀 Conditional Logic

```sql
CASE
```

## 🔤 String Functions

```sql
CONCAT()
```

## 📅 Date Functions

```sql
MONTH()
YEAR()
MONTHNAME()
DATE_SUB()
DATE_FORMAT()
```

## 📈 Advanced SQL

```sql
Subqueries
Window Functions
LAG()
OVER()
```

---

# 📂 Project Structure

```text
bank-loan-mysql-data-analytics/
│
├── README.md
│
├──bank_loan_database.sql
│
├──bank_loan_analysis.sql
```

---

# 📄 File Description

| File | Description |
|---|---|
| `README.md` | Complete documentation of the Bank Loan Data Analysis project |
| `bank_loan_database.sql` | Creates the `financial_db` database, creates the `financial_loan` table, and loads the loan data |
| `bank_loan_analysis.sql` | Contains SQL queries for KPI, Good Loan, Bad Loan, Loan Status, Overview, Growth, and Interest Rate analysis |

---

# 🔄 Project Workflow

```text
                Raw Loan Data
                     │
                     ▼
          Create MySQL Database
                     │
                     ▼
          Create financial_loan
                     │
                     ▼
              Load Loan Data
                     │
                     ▼
             Data Exploration
                     │
                     ▼
              KPI Analysis
                     │
          ┌──────────┴──────────┐
          ▼                     ▼
    Good Loan Analysis    Bad Loan Analysis
          │                     │
          └──────────┬──────────┘
                     ▼
            Loan Status Analysis
                     │
                     ▼
             Loan Overview
                     │
                     ▼
          Time-Based Analysis
                     │
                     ▼
             MoM Growth
                     │
                     ▼
         Interest Rate Analysis
                     │
                     ▼
           Analytical Insights
```

---

# 🚀 How to Run the Project

## 1️⃣ Clone the Repository

Clone the complete Data Analytics Portfolio repository:

```bash
git clone https://github.com/YogirajSharma/Data-Analytics-Portfolio.git
```

Navigate to the project:

```bash
cd Data-Analytics-Portfolio/MySQL/bank-loan-mysql-data-analytics
```

---

## 2️⃣ Open MySQL Workbench

Open **MySQL Workbench** and connect to your MySQL server.

---

## 3️⃣ Run the Database File

Open:

```text
mysql/bank_loan_database.sql
```

Run the complete SQL script.

This creates:

```text
financial_db
```

and the:

```text
financial_loan
```

table and loads the loan data.

---

## 4️⃣ Select the Database

Run:

```sql
USE financial_db;
```

To verify the available tables:

```sql
SHOW TABLES;
```

---

## 5️⃣ Check the Table

You can verify the loan data using:

```sql
SELECT *
FROM financial_loan
LIMIT 10;
```

---

## 6️⃣ Run the Analysis File

Open:

```text
mysql/bank_loan_analysis.sql
```

Run the analysis queries section by section.

---

# 📊 Analysis Categories

The analysis file covers the following areas:

```text
01. Total Loan Applications
02. MTD Loan Applications
03. PMTD Loan Applications

04. Total Funded Amount
05. MTD Funded Amount
06. PMTD Funded Amount

07. Total Amount Received
08. MTD Amount Received
09. PMTD Amount Received

10. Average Interest Rate
11. MTD Average Interest Rate

12. Average DTI
13. MTD Average DTI

14. Good Loan Analysis
15. Bad Loan Analysis

16. Loan Status Analysis
17. MTD Loan Status Analysis

18. Monthly Loan Overview
19. State-wise Analysis
20. Term-wise Analysis
21. Employee Length Analysis
22. Purpose-wise Analysis
23. Home Ownership Analysis

24. Month-over-Month Loan Application Growth
25. Month-over-Month Funded Amount Growth

26. Grade-wise Average Interest Rate
27. Sub-Grade-wise Average Interest Rate
```

---

# 🧠 Skills Demonstrated

Through this project, I practiced and demonstrated the following skills:

### SQL Skills

- SQL Query Writing
- Data Filtering
- Data Aggregation
- Grouping and Sorting
- Conditional Logic
- Subqueries
- Window Functions
- Date-Based Analysis

### Data Analytics Skills

- KPI Analysis
- Financial Data Analysis
- Loan Portfolio Analysis
- Trend Analysis
- Growth Analysis
- Segmentation
- Business-Oriented Data Analysis

### Database Skills

- Database Creation
- Table Creation
- Data Loading
- Database Selection
- Structured Data Analysis

---

# 📚 Learning Outcomes

This project helped strengthen my understanding of SQL and its application in data analytics.

### Key learnings include:

- How to create a database using SQL.
- How to create and populate a table.
- How to analyze structured financial data.
- How to calculate business KPIs.
- How to use aggregate functions.
- How to apply conditional logic using `CASE`.
- How to perform date-based analysis.
- How to compare current and previous periods.
- How to use `LAG()` for Month-over-Month analysis.
- How to analyze data across multiple dimensions.
- How to organize SQL queries into an analytical workflow.

---

# ⭐ Project Highlights

- 🏦 Banking and loan analytics use case
- 🐬 MySQL-based analysis
- 📊 Multiple portfolio KPIs
- 🟢 Good Loan Analysis
- 🔴 Bad Loan Analysis
- 📋 Loan Status Analysis
- 📅 Monthly Analysis
- 🗺️ State-wise Analysis
- 📄 Loan Term Analysis
- 👨‍💼 Employee Length Analysis
- 🎯 Purpose-wise Analysis
- 🏠 Home Ownership Analysis
- 📈 Month-over-Month Growth Analysis
- 💳 Grade-wise Interest Rate Analysis
- 🔎 Sub-Grade Interest Rate Analysis
- 🪟 SQL Window Function implementation
- 📁 Separate database and analysis SQL files

---

# 🛠️ Project Execution Flow

```text
Database SQL
     │
     ├── Create Database
     │
     ├── Create Table
     │
     └── Insert Loan Data
             │
             ▼
       financial_loan
             │
             ▼
      Analysis SQL File
             │
     ┌───────┼────────┐
     ▼       ▼        ▼
    KPI    Loan      Trend
 Analysis Quality   Analysis
             │
             ▼
       Final Analysis
```

---

# 📌 Important Note

This project focuses on **SQL-based data analysis**.

The repository does not include a Power BI dashboard or PNG dashboard image. The analysis is performed through SQL queries contained in:

```text
mysql/bank_loan_analysis.sql
```

The database setup and loan data are contained in:

```text
mysql/bank_loan_database.sql
```

---

# 👨‍💻 Author

## Yogesh Sharma

🎓 B.Tech – Data Science  
📊 Aspiring Data Analyst  
💻 SQL | MySQL | Excel | Power BI | Python

---

## 🔗 My Portfolio

<p align="center">

<a href="https://github.com/YogirajSharma/Data-Analytics-Portfolio">

<img src="https://img.shields.io/badge/📊%20View%20My%20Data%20Analytics%20Portfolio-181717?style=for-the-badge&logo=github&logoColor=white" alt="Data Analytics Portfolio">

</a>

</p>

---

## 🔗 GitHub Profile

<p align="center">

<a href="https://github.com/YogirajSharma">

<img src="https://img.shields.io/badge/GitHub-YogirajSharma-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub Profile">

</a>

</p>

---

# ⭐ Support

If you found this project useful or informative:

⭐ Consider starring the repository.

🍴 Feel free to explore the project.

📂 Check out my other Data Analytics projects in the portfolio.

---

<p align="center">

<b>📊 Turning Data into Meaningful Insights with SQL</b>

</p>

<p align="center">

Made with ❤️ using MySQL & SQL

</p>
