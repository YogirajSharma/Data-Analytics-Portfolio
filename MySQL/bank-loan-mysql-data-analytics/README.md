# 🏦 Bank Loan MySQL Data Analytics

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/SQL-Data%20Analytics-CC2927?style=for-the-badge&logo=mysql&logoColor=white" alt="SQL">
  <img src="https://img.shields.io/badge/Database%20Analysis-2E8B57?style=for-the-badge" alt="Database Analysis">
  <img src="https://img.shields.io/badge/Data%20Analytics-6A5ACD?style=for-the-badge" alt="Data Analytics">
</p>

<p align="center">
  <strong>MySQL Database • SQL Analytics • Loan Portfolio Analysis</strong>
</p>

<p align="center">
  A practical MySQL project focused on analyzing loan applications,
  funded amounts, payments, loan status, interest rates, customer attributes,
  and month-over-month loan performance.
</p>

<p align="center">
  <a href="./bank_loan_database.sql">📄 View Database SQL</a>
  &nbsp;&nbsp;•&nbsp;&nbsp;
  <a href="./bank_loan_analysis.sql">📊 View Analysis SQL</a>
</p>

---

# 📌 Table of Contents

- [📖 Project Overview](#-project-overview)
- [🎯 Project Objective](#-project-objective)
- [📊 Project Snapshot](#-project-snapshot)
- [🗄️ Database Overview](#️-database-overview)
- [🏗️ Database Architecture](#️-database-architecture)
- [🗃️ Database Table](#️-database-table)
- [📋 Data Fields](#-data-fields)
- [📈 Analysis Areas](#-analysis-areas)
- [🔍 KPI Analysis](#-kpi-analysis)
- [🟢 Good Loan Analysis](#-good-loan-analysis)
- [🔴 Bad Loan Analysis](#-bad-loan-analysis)
- [📊 Loan Status Analysis](#-loan-status-analysis)
- [📅 Loan Overview Analysis](#-loan-overview-analysis)
- [📈 Month-over-Month Analysis](#-month-over-month-analysis)
- [💰 Interest Rate Analysis](#-interest-rate-analysis)
- [🧠 SQL Concepts Used](#-sql-concepts-used)
- [🛠️ Tools & Technologies](#️-tools--technologies)
- [🔄 Project Workflow](#-project-workflow)
- [▶️ How to Run the Project](#️-how-to-run-the-project)
- [📥 How to Download](#-how-to-download)
- [🎓 Key Learning Areas](#-key-learning-areas)
- [💼 Skills Demonstrated](#-skills-demonstrated)
- [📂 Project Structure](#-project-structure)
- [🔗 Quick Links](#-quick-links)
- [⚠️ Important Note](#️-important-note)
- [🏁 Conclusion](#-conclusion)

---

# 📖 Project Overview

The **Bank Loan MySQL Data Analytics Project** is a SQL-based data analytics project built using **MySQL**.

The project uses a financial loan dataset stored in a relational database and focuses on analyzing:

- 💳 Loan Applications
- 💰 Funded Loan Amount
- 💵 Amount Received
- 📊 Loan Status
- 📈 Interest Rate
- 📉 Debt-to-Income Ratio
- 🌎 State-wise Loan Performance
- 📅 Monthly Loan Activity
- ⏳ Loan Term
- 👨‍💼 Employee Length
- 🎯 Loan Purpose
- 🏠 Home Ownership
- 🟢 Good Loans
- 🔴 Bad Loans

The project combines **database creation, SQL querying, aggregation, filtering, date analysis, window functions, and business-oriented analysis**.

The database script creates the `financial_db` database and the `financial_loan` table containing loan-related attributes such as loan status, loan amount, interest rate, DTI, purpose, grade, state, employment length and total payment.

---

# 🎯 Project Objective

The main objective of this project is to develop practical knowledge of **MySQL, SQL, relational data analysis, and business-oriented loan analytics**.

### Key Objectives

- Create and manage a MySQL database
- Create a financial loan table
- Load structured loan data
- Calculate loan application KPIs
- Analyze funded loan amounts
- Analyze total amount received
- Calculate average interest rates
- Analyze average DTI
- Identify Good Loan performance
- Identify Bad Loan performance
- Analyze different loan statuses
- Analyze monthly loan activity
- Analyze state-wise loan performance
- Analyze loan terms
- Analyze employee length
- Analyze loan purposes
- Analyze home ownership
- Calculate month-over-month growth
- Analyze interest rates by grade and subgrade
- Apply advanced SQL techniques

---

# 📊 Project Snapshot

| Category | Details |
|---|---|
| 🗄️ **Database** | `financial_db` |
| 🐬 **DBMS** | MySQL |
| 📝 **Language** | SQL |
| 🗃️ **Main Table** | `financial_loan` |
| 📊 **Analysis Type** | Bank Loan Data Analysis |
| 💰 **Financial Metrics** | Applications, Funded Amount, Amount Received |
| 📈 **Performance Metrics** | Interest Rate, DTI, MoM Growth |
| 🟢 **Loan Classification** | Good Loan |
| 🔴 **Loan Classification** | Bad Loan |
| 📅 **Time Analysis** | Monthly & MTD/PMTD |
| 🌎 **Geographical Analysis** | State-wise |
| 🧠 **Advanced SQL** | Window Functions, Subqueries, Aggregations |

---

# 🗄️ Database Overview

The project creates a MySQL database named:

```sql
financial_db
```

The database initialization contains:

```sql
DROP DATABASE IF EXISTS financial_db;

CREATE DATABASE financial_db;

USE financial_db;
```

The main table created in the database is:

```text
financial_loan
```

The database table contains loan-related information including:

```text
Loan ID
State
Application Type
Employee Length
Employee Title
Grade
Home Ownership
Issue Date
Last Credit Pull Date
Last Payment Date
Loan Status
Next Payment Date
Member ID
Purpose
Sub Grade
Term
Verification Status
Annual Income
DTI
Installment
Interest Rate
Loan Amount
Total Accounts
Total Payment
```

These fields are defined in the database SQL script.

---

# 🏗️ Database Architecture

The project uses a simple relational structure centered around the `financial_loan` table.

```text
                 ┌─────────────────────────┐
                 │      financial_db        │
                 └────────────┬────────────┘
                              │
                              ▼
                 ┌─────────────────────────┐
                 │    financial_loan       │
                 └────────────┬────────────┘
                              │
          ┌───────────────────┼───────────────────┐
          │                   │                   │
          ▼                   ▼                   ▼
     Loan Details       Financial Metrics    Customer Attributes
          │                   │                   │
          ▼                   ▼                   ▼
      Loan Status         Loan Amount          State
      Loan Purpose        Total Payment        Employment
      Loan Term           Interest Rate        Home Ownership
      Grade               DTI                  Annual Income
```

The project uses the `id` field as the primary key of the `financial_loan` table.

---

# 🗃️ Database Table

The project contains the following main table:

| Table | Purpose |
|---|---|
| `financial_loan` | Stores loan application, customer, financial and repayment-related information |

The table contains fields for loan identification, applicant attributes, loan characteristics, dates and financial metrics.

---

# 📋 Data Fields

Important fields available in the `financial_loan` table include:

| Field | Description |
|---|---|
| `id` | Unique loan identifier |
| `address_state` | Applicant state |
| `application_type` | Type of loan application |
| `emp_length` | Employment length |
| `emp_title` | Employment title |
| `grade` | Loan grade |
| `home_ownership` | Home ownership category |
| `issue_date` | Loan issue date |
| `loan_status` | Current loan status |
| `purpose` | Purpose of the loan |
| `sub_grade` | Loan sub-grade |
| `term` | Loan repayment term |
| `verification_status` | Income/record verification status |
| `annual_income` | Applicant annual income |
| `dti` | Debt-to-income ratio |
| `installment` | Loan installment |
| `int_rate` | Interest rate |
| `loan_amount` | Funded loan amount |
| `total_acc` | Total accounts |
| `total_payment` | Total payment received |

These columns are defined in the database creation script.

---

# 📈 Analysis Areas

The SQL analysis file is organized into three major areas:

```text
A. BANK LOAN REPORT | SUMMARY
│
├── KPIs
├── Good Loan Issued
├── Bad Loan Issued
└── Loan Status

B. BANK LOAN REPORT | OVERVIEW
│
├── Month
├── State
├── Term
├── Employee Length
├── Purpose
└── Home Ownership

C. MISCELLANEOUS | OVERVIEW
│
├── MoM Loan Application Growth
├── MoM Loan Amount Disbursed Growth
├── Interest Rate by Grade
└── Interest Rate by Subgrade
```

This organization follows the structure present in the analysis SQL file.

---

# 🔍 KPI Analysis

The project calculates several important loan KPIs.

### Main KPIs

- Total Loan Applications
- MTD Loan Applications
- PMTD Loan Applications
- Total Funded Amount
- MTD Funded Amount
- PMTD Funded Amount
- Total Amount Received
- MTD Amount Received
- PMTD Amount Received
- Average Interest Rate
- MTD Average Interest Rate
- PMTD Average Interest Rate

The SQL uses aggregation functions such as `COUNT()`, `SUM()` and `AVG()` along with date-based filtering for MTD and PMTD calculations.

### Example KPI Calculation

```sql
SELECT COUNT(id) AS TotalLoanApplications
FROM financial_loan;
```

The analysis also calculates total funded amount:

```sql
SELECT SUM(loan_amount) AS Total_Funded_Amount
FROM financial_loan;
```

And total amount received:

```sql
SELECT SUM(total_payment) AS Total_Amount_Received
FROM financial_loan;
```

---

# 🟢 Good Loan Analysis

The project classifies loans with the following statuses as **Good Loans**:

```text
Fully Paid
Current
```

The analysis calculates:

- Good Loan Percentage
- Good Loan Applications
- Good Loan Funded Amount
- Good Loan Amount Received

The classification is explicitly implemented in the SQL using:

```sql
WHERE loan_status IN ('Fully Paid', 'Current');
```



### Good Loan Analysis Structure

```text
Good Loan
│
├── Good Loan Percentage
├── Good Loan Applications
├── Good Loan Funded Amount
└── Good Loan Amount Received
```

---

# 🔴 Bad Loan Analysis

The analysis also evaluates loans outside the Good Loan categories.

The SQL calculates:

- Bad Loan Percentage
- Bad Loan Applications
- Bad Loan Funded Amount
- Bad Loan Amount Received

The analysis uses `loan_status` conditions to identify loans that are not classified as `Fully Paid` or `Current`.

### Bad Loan Analysis Structure

```text
Bad Loan
│
├── Bad Loan Percentage
├── Bad Loan Applications
├── Bad Loan Funded Amount
└── Bad Loan Amount Received
```

---

# 📊 Loan Status Analysis

The project provides a complete loan status summary.

For each loan status, the analysis calculates:

- Applications
- Funded Amount
- Amount Received
- Average Interest
- Average DTI

Example structure:

```sql
SELECT
    loan_status,
    COUNT(*) AS Applications,
    SUM(loan_amount) AS 'Funded Amount',
    SUM(total_payment) AS 'Amount Received',
    ROUND(AVG(int_rate),2) AS 'Avg Interest',
    ROUND(AVG(dti),2) AS 'Avg DTI'
FROM financial_loan
GROUP BY loan_status;
```

The analysis also includes an MTD loan status summary using the latest month available in the dataset.

---

# 📅 Loan Overview Analysis

The project analyzes loan performance across multiple dimensions.

## Monthly Analysis

The monthly analysis calculates:

- Month Number
- Month Name
- Loan Applications
- Total Funded Amount
- Total Amount Received

```sql
MONTH(issue_date)
MONTHNAME(issue_date)
COUNT(*)
SUM(loan_amount)
SUM(total_payment)
```



---

## 🌎 State Analysis

The project analyzes loan performance by state.

Metrics include:

- Loan Applications
- Total Funded Amount
- Total Amount Received

```text
State
│
├── Loan Applications
├── Funded Amount
└── Amount Received
```

---

## ⏳ Term Analysis

Loan performance is also analyzed based on loan term.

The analysis includes:

- Loan Applications
- Total Funded Amount
- Total Amount Received

The results are grouped by loan `term`.

---

## 👨‍💼 Employee Length Analysis

The project analyzes loan applications based on:

```text
Employee Length
```

For each employment-length category, the SQL calculates:

- Loan Applications
- Total Funded Amount
- Total Amount Received

---

## 🎯 Loan Purpose Analysis

The project analyzes different loan purposes.

Examples represented in the dataset include purposes such as:

```text
Car
Credit Card
Debt Consolidation
```

The analysis groups the data by `purpose` and calculates loan applications, funded amount and amount received.

---

## 🏠 Home Ownership Analysis

Loan performance is also analyzed according to:

```text
Home Ownership
```

The analysis calculates:

- Loan Applications
- Total Funded Amount
- Total Amount Received

---

# 📈 Month-over-Month Analysis

The project includes Month-over-Month analysis.

### 1. Loan Application Growth

The analysis calculates the percentage change in loan applications compared with the previous month.

It uses the SQL window function:

```sql
LAG()
```

along with monthly aggregation.

---

### 2. Loan Amount Disbursed Growth

The project also calculates Month-over-Month growth in the funded loan amount.

```text
Current Month Funded Amount
            ↓
Previous Month Funded Amount
            ↓
MoM Growth %
```

This analysis uses `LAG()` over monthly funded amounts.

---

# 💰 Interest Rate Analysis

The project analyzes average interest rates across loan grades and subgrades.

## Interest Rate by Grade

```sql
SELECT
    grade,
    CONCAT(ROUND(AVG(int_rate) * 100,2),'%') AS Avg_Interest_Rate
FROM financial_loan
GROUP BY grade
ORDER BY grade;
```

## Interest Rate by Subgrade

```sql
SELECT
    sub_grade,
    CONCAT(ROUND(AVG(int_rate) * 100,2),'%') AS Avg_Interest_Rate
FROM financial_loan
GROUP BY sub_grade
ORDER BY sub_grade;
```

These queries are included in the miscellaneous analysis section of the project.

---

# 🧠 SQL Concepts Used

The project demonstrates both fundamental and advanced SQL concepts.

### 🟢 Database Fundamentals

```text
DROP DATABASE
CREATE DATABASE
USE
CREATE TABLE
INSERT INTO
```

Used to create and populate the financial loan database.

---

### 🔵 Data Retrieval & Filtering

```text
SELECT
WHERE
GROUP BY
ORDER BY
DISTINCT
```

Used to retrieve, filter and organize data.

---

### 🟣 Aggregate Functions

```text
COUNT()
SUM()
AVG()
ROUND()
```

Used to calculate loan metrics and financial KPIs.

---

### 🟠 Date & Time Functions

```text
MONTH()
MONTHNAME()
YEAR()
DATE_SUB()
DATE_FORMAT()
```

Used for monthly, MTD and PMTD analysis.

---

### 🔴 Advanced SQL

```text
Subqueries
LAG()
OVER()
Window Functions
```

Used for month-over-month analysis and comparative calculations.

---

### 🟡 Conditional Analysis

```text
CASE
IN
NOT IN
```

Used for Good Loan and Bad Loan classification.

---

# 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| 🐬 **MySQL** | Relational Database Management |
| 📝 **SQL** | Data Querying & Analysis |
| 🖥️ **MySQL Workbench** | SQL Development & Execution |
| 🗄️ **Relational Database** | Structured Data Storage |
| 📊 **SQL Analytics** | Business & Financial Analysis |

---

# 🔄 Project Workflow

The project follows a structured SQL data-analysis workflow:

```text
       ┌──────────────────────┐
       │   Database Creation  │
       └──────────┬───────────┘
                  ↓
       ┌──────────────────────┐
       │    Table Creation    │
       └──────────┬───────────┘
                  ↓
       ┌──────────────────────┐
       │      Load Data       │
       └──────────┬───────────┘
                  ↓
       ┌──────────────────────┐
       │   Explore Database   │
       └──────────┬───────────┘
                  ↓
       ┌──────────────────────┐
       │   Calculate KPIs     │
       └──────────┬───────────┘
                  ↓
       ┌──────────────────────┐
       │ Loan Status Analysis │
       └──────────┬───────────┘
                  ↓
       ┌──────────────────────┐
       │ Overview Analysis    │
       └──────────┬───────────┘
                  ↓
       ┌──────────────────────┐
       │ Advanced SQL         │
       │ LAG • Subqueries     │
       └──────────┬───────────┘
                  ↓
       ┌──────────────────────┐
       │ Analyze Results      │
       └──────────────────────┘
```

---

# ▶️ How to Run the Project

## 1. Install MySQL

Install:

- MySQL Server
- MySQL Workbench

Make sure the MySQL Server is running.

---

## 2. Download the Project

Clone or download the portfolio repository.

Navigate to:

```text
Data-Analytics-Portfolio/
└── MySQL/
    └── Bank-Loan-Data-Analysis/
```

---

## 3. Open MySQL Workbench

Launch **MySQL Workbench** and connect to your MySQL Server.

---

## 4. Run the Database SQL

Open:

```text
bank_loan_database.sql
```

This script:

```text
Creates financial_db
        ↓
Creates financial_loan
        ↓
Defines table columns
        ↓
Inserts loan data
```

The database script contains the database creation, table definition and loan records.

---

## 5. Refresh the Schemas

After executing the database script, refresh the **Schemas** panel.

You should see:

```text
financial_db
│
└── financial_loan
```

---

## 6. Run the Analysis SQL

Open:

```text
bank_loan_analysis.sql
```

Make sure the following database is selected:

```sql
USE financial_db;
```

Then execute the analysis queries individually.

The analysis file begins with database selection and includes the Bank Loan Report Summary, KPIs, Good/Bad Loan analysis and Loan Status analysis.

---

# 📥 How to Download

## Option 1 — Download ZIP

1. Open the GitHub repository.
2. Click **Code**.
3. Select **Download ZIP**.
4. Extract the downloaded ZIP file.
5. Navigate to:

```text
Data-Analytics-Portfolio/
└── MySQL/
    └── Bank-Loan-Data-Analysis/
```

---

## Option 2 — Clone Using Git

Run:

```bash
git clone https://github.com/YogirajSharma/Data-Analytics-Portfolio.git
```

Then navigate to:

```text
Data-Analytics-Portfolio/MySQL/Bank-Loan-Data-Analysis/
```

---

# 🎓 Key Learning Areas

This project provides practical experience in:

### 🗄️ MySQL Database Management

Creating and managing a relational database.

### 📊 SQL Data Analysis

Using SQL to analyze financial loan data.

### 💰 Financial KPI Analysis

Calculating:

```text
Loan Applications
Funded Amount
Amount Received
Interest Rate
DTI
```

### 🟢 Good & Bad Loan Analysis

Understanding loan performance based on loan status.

### 📅 Time-Based Analysis

Working with:

```text
Monthly Analysis
MTD
PMTD
MoM Growth
```

### 🌎 Dimensional Analysis

Analyzing loan data by:

```text
State
Term
Employee Length
Purpose
Home Ownership
Grade
Subgrade
```

### 🧠 Advanced SQL

Working with:

```text
Subqueries
Window Functions
LAG()
OVER()
Date Functions
Aggregate Functions
```

---

# 💼 Skills Demonstrated

<p align="center">

<img src="https://img.shields.io/badge/MySQL-Database-4479A1?style=flat-square&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-Analytics-CC2927?style=flat-square&logo=mysql&logoColor=white">
<img src="https://img.shields.io/badge/SQL-KPI%20Analysis-2E8B57?style=flat-square">
<img src="https://img.shields.io/badge/SQL-Subqueries-6A5ACD?style=flat-square">
<img src="https://img.shields.io/badge/SQL-Window%20Functions-FF8C00?style=flat-square">
<img src="https://img.shields.io/badge/SQL-Date%20Analysis-8B4513?style=flat-square">

</p>

### Technical Skills

- MySQL
- SQL
- Relational Database
- Database Management
- SQL Queries
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- DISTINCT
- Aggregate Functions
- COUNT()
- SUM()
- AVG()
- ROUND()
- Subqueries
- Window Functions
- LAG()
- OVER()
- Date Functions
- KPI Analysis
- Loan Analysis
- Financial Data Analysis
- Good Loan Analysis
- Bad Loan Analysis
- Month-over-Month Analysis

---

# 📂 Project Structure

```text
Bank-Loan-Data-Analysis/
│
├── 📄 README.md
├── 📄 bank_loan_database.sql
└── 📄 bank_loan_analysis.sql
```

### File Details

| File | Description |
|---|---|
| `README.md` | Project documentation |
| `bank_loan_database.sql` | Database creation, table creation and loan data |
| `bank_loan_analysis.sql` | SQL queries for loan data analysis |

---

# 🔗 Quick Links

<p align="center">

<a href="./bank_loan_database.sql">
<img src="https://img.shields.io/badge/📄%20Database%20SQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="Database SQL">
</a>

<a href="./bank_loan_analysis.sql">
<img src="https://img.shields.io/badge/📊%20Analysis%20SQL-2E8B57?style=for-the-badge&logo=mysql&logoColor=white" alt="Analysis SQL">
</a>

</p>

---

# ⚠️ Important Note

The database SQL script contains:

```sql
DROP DATABASE IF EXISTS financial_db;
```

Therefore, if a database named:

```text
financial_db
```

already exists, it will be dropped before the project database is recreated.

> **⚠️ Important:** Do not run the complete database script if `financial_db` contains important data.

For a learning or portfolio environment, this allows the database to be recreated from the SQL script.

---

# 🏁 Conclusion

The **Bank Loan MySQL Data Analytics Project** demonstrates how SQL can be used to create, manage and analyze financial loan data.

The project covers important business areas including:

```text
Loan Applications
Funded Amount
Amount Received
Loan Status
Interest Rate
DTI
State
Loan Term
Employee Length
Loan Purpose
Home Ownership
```

The analysis SQL applies fundamental SQL concepts such as:

```text
SELECT
WHERE
GROUP BY
ORDER BY
COUNT()
SUM()
AVG()
```

along with advanced techniques including:

```text
Subqueries
Window Functions
LAG()
OVER()
Date Functions
```

The project also performs **Good Loan, Bad Loan, Loan Status, KPI, monthly, state, term, purpose, home ownership, month-over-month and interest-rate analysis**.

Overall, this project provides practical experience in:

**MySQL • SQL • Data Analytics • Financial Analysis • KPI Analysis • Relational Database Management**

---

# 📌 Project Summary

| Metric | Value |
|---|---:|
| 🗄️ Database | `financial_db` |
| 📋 Main Table | `financial_loan` |
| 🐬 DBMS | **MySQL** |
| 📝 Query Language | **SQL** |
| 💰 Analysis | **Bank Loan Data** |
| 📊 KPIs | **Included** |
| 🟢 Good Loan Analysis | **Included** |
| 🔴 Bad Loan Analysis | **Included** |
| 📅 Monthly Analysis | **Included** |
| 📈 MoM Analysis | **Included** |
| 💰 Interest Rate Analysis | **Included** |
| 🧠 Advanced SQL | **Subqueries • Window Functions • LAG()** |

---

<p align="center">

<strong>🏦 Bank Loan MySQL Data Analytics</strong>

<br>

<sub>
MySQL • SQL • Financial Data Analysis • Data Analytics
</sub>

<br><br>

<a href="https://github.com/YogirajSharma/Data-Analytics-Portfolio">
<img src="https://img.shields.io/badge/🔗%20Data%20Analytics%20Portfolio-181717?style=for-the-badge&logo=github&logoColor=white" alt="Data Analytics Portfolio">
</a>

</p>
