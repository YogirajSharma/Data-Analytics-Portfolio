
# 📦 E-commerce Logistics Charge Audit Using Python

**An End-to-End Python Data Analytics Project for Courier Invoice Verification, Delivery Charge Calculation, and Billing Reconciliation**

---

## 📌 Project Overview

The **E-commerce Logistics Charge Audit Using Python** project focuses on verifying the accuracy of delivery charges billed by courier companies to an e-commerce business named **ShopX**.

ShopX processes thousands of customer orders and delivers products through multiple courier partners. The delivery charges depend primarily on two factors:

- **Shipment Weight:** Total weight of the products included in an order.
- **Delivery Zone:** Distance-based delivery zone determined using warehouse and customer pincodes.

This project uses Python to calculate the expected courier charges for every order based on product weight, delivery zones, freight type, and the courier company's rate card.

The calculated charges are then compared with the actual amounts billed by the courier company to identify correctly charged, overcharged, and undercharged orders.

The ultimate objective is to automate courier invoice auditing, identify billing discrepancies, and help ShopX control its logistics expenses.

---

## 🎯 Business Problem

ShopX is a large e-commerce company in India that ships approximately **2,00,000 orders every month**.

With an average delivery charge of approximately **₹100 per shipment**, the estimated monthly logistics expense is around **₹2 crore**.

ShopX wants to verify whether its courier partners are charging the correct delivery amount for every shipment because its current delivery expenses are excessively high.

The delivery charges depend on:

1. Product weight.
2. Delivery zone between the warehouse and customer location.
3. Applicable weight slab.
4. Freight type, including Forward and Return to Origin (RTO) charges.

The client has provided three internal ShopX reports, one courier invoice file, and one courier rate card.

The business requirement is to develop a Python-based solution that calculates the expected delivery charges for every order and reconciles them against the courier company's actual invoice.

### Client Requirements

The project requires two Excel output reports.

**1. Order-Level Charge Calculation**

Create a detailed order-level report containing:

| Column Name | Description |
|---|---|
| Order ID | Unique identifier assigned to each customer order. |
| AWB Number | Airway Bill Number assigned by the courier company. |
| Total Weight as per ShopX (KG) | Calculated shipment weight based on product quantities and weights. |
| Weight Slab as per ShopX (KG) | Applicable 0.5 KG weight slab calculated by ShopX. |
| Total Weight as per Courier Company (KG) | Chargeable weight reported by the courier company. |
| Weight Slab Charged by Courier Company (KG) | Weight slab used by the courier company for billing. |
| Delivery Zone as per ShopX | Expected delivery zone based on the supplied pincode mapping. |
| Delivery Zone Charged by Courier Company | Delivery zone mentioned in the courier invoice. |
| Expected Charge as per ShopX (₹) | Expected delivery charge calculated using the courier rate card. |
| Charges Billed by Courier Company (₹) | Actual amount charged by the courier company. |
| Difference Between Expected and Billed Charges (₹) | Difference between expected and actual delivery charges. |

**2. Courier Charge Summary**

Create a summary table containing:

| Description | Count | Amount (₹) |
|---|---:|---:|
| Correctly Charged Orders | Number of correctly charged orders | Total invoice amount |
| Overcharged Orders | Number of overcharged orders | Total overcharging amount |
| Undercharged Orders | Number of undercharged orders | Total undercharging amount |

---

## 🎯 Project Objectives

- Analyze ShopX order data using Python.
- Calculate the total shipment weight for each order.
- Convert shipment weights into applicable 0.5 KG weight slabs.
- Identify delivery zones using warehouse and customer pincode information.
- Understand the courier company's weight-based pricing structure.
- Calculate expected courier charges using the provided rate card.
- Compare expected charges with actual courier invoice amounts.
- Identify correctly charged, overcharged, and undercharged orders.
- Analyze differences in shipment weights and delivery zones.
- Quantify courier billing discrepancies.
- Generate detailed Excel reports for business analysis.
- Automate the courier invoice reconciliation process.

---

## 📂 Dataset Description

The project uses five input datasets provided by the client.

### 1. Company ShopX - Order Report

**Purpose:** Contains order and product information.

| Column Name | Description |
|---|---|
| Order ID | Unique identifier assigned to each customer order. |
| Product Code | Unique identification code assigned to each product. |
| Units Ordered | Quantity of each product ordered by the customer. |

This dataset is used to identify the products included in each order and calculate the total shipment weight.

### 2. Company ShopX - Product Weight

**Purpose:** Contains individual product weight information.

| Column Name | Description |
|---|---|
| Product Code | Unique identification code assigned to each product. |
| Product Weight (g) | Weight of an individual product in grams. |

This dataset is used to calculate the total shipment weight based on product quantity and individual product weight.

### 3. Company ShopX - Warehouse & Customer Pincode and Zone Details

**Purpose:** Contains warehouse and customer delivery location information.

| Column Name | Description |
|---|---|
| Store House Pincode | Pincode of the warehouse or storehouse. |
| Customer Area Code | Area code of the customer's delivery location. |
| Delivery Zone | Assigned delivery zone for the customer's location. |

This dataset is used to identify the expected delivery zone for each order.

### 4. Courier Company - Invoice

**Purpose:** Contains shipment and billing information provided by the courier company.

| Column Name | Description |
|---|---|
| AWB Code | Unique Airway Bill Number assigned by the courier company. |
| Order ID | ShopX order identifier. |
| Chargeable Weight | Weight used by the courier company to calculate shipping charges. |
| Store House Pincode | Warehouse pickup pincode. |
| Customer Area Code | Customer delivery area code. |
| Delivery Zone | Delivery zone reported by the courier company. |
| Freight Type | Type of freight, such as Forward charges or Forward and RTO charges. |
| Total Amount (₹) | Total amount billed by the courier company. |

This dataset is used to compare courier-reported shipment weights, delivery zones, and actual billed charges against ShopX calculations.

### 5. Courier Company - Rates

**Purpose:** Contains the courier company's delivery rate card.

The rate card provides the following information:

- Weight slab.
- Delivery zone.
- Fixed forward charges.
- Additional forward charges.
- Fixed RTO charges.
- Additional RTO charges.

This dataset is used to calculate the expected courier charges for every order.

---

## 📋 Important Business Rules

### 1. Shipment Weight Calculation

The total shipment weight is calculated using the product quantity and individual product weight.

**Formula:**

```text
Total Order Weight (g) =
    Sum of (Product Quantity × Product Weight)
```

Convert the weight from grams into kilograms:

```text
Total Order Weight (KG) =
    Total Order Weight (g) / 1000
```

**Example:**

If an order contains:

| Product | Quantity | Unit Weight |
|---|---:|---:|
| Product A | 2 | 250 g |
| Product B | 1 | 500 g |

Total Shipment Weight:

```text
(2 × 250) + (1 × 500) = 1000 g

Total Weight = 1 KG
```

### 2. Weight Slab Calculation

The courier company calculates shipment charges using multiples of 0.5 KG.

The applicable weight slab examples are:

| Actual Shipment Weight | Applicable Weight Slab |
|---|---:|
| 400 grams | 0.5 KG |
| 950 grams | 1.0 KG |
| 1.0 KG | 1.0 KG |
| 1.2 KG | 1.5 KG |
| 2.2 KG | 2.5 KG |

The applicable weight slab is determined by rounding the shipment weight up to the next 0.5 KG multiple.

**Formula:**

```text
Weight Slab =
    Ceiling (Actual Weight / 0.5) × 0.5
```

### 3. Delivery Zone Calculation

The warehouse pincode and customer area code are used with the supplied pincode and zone mapping to identify the expected delivery zone.

The calculated delivery zone is compared with the zone mentioned in the courier invoice.

This helps identify incorrect zone classifications that may result in inaccurate delivery charges.

### 4. Courier Charge Calculation

Courier charges depend on the applicable weight slab, delivery zone, and freight type.

The following business rules are applied:

**A. Forward Charges**

If the invoice mentions `Forward charges`, only forward (`fwd`) charges are applicable.

**B. Forward and RTO Charges**

If the invoice mentions `Forward and RTO charges`, both forward (`fwd`) and RTO (`rto`) charges are applicable.

**C. Fixed and Additional Charges**

- For the first 0.5 KG, the applicable fixed charge is used.
- For every additional 0.5 KG, the applicable additional charge is applied.
- For Forward and RTO shipments, both applicable charge components are included.

**General Calculation:**

```text
Forward Charges =
    Fixed Forward Charges
    + Additional Forward Charges

RTO Charges =
    Fixed RTO Charges
    + Additional RTO Charges

Expected Courier Charges =
    Applicable Forward Charges
    + Applicable RTO Charges
```

*The actual rate-card structure and applicable weight slab rules must be followed when implementing these calculations.*

### 5. Invoice Reconciliation

The expected courier charges are compared with the actual billed charges.

**Difference Formula:**

```text
Difference =
    Expected Charges - Billed Charges
```

Orders are classified as follows:

| Condition | Classification |
|---|---|
| Difference = 0 | Correctly Charged |
| Difference < 0 | Overcharged |
| Difference > 0 | Undercharged |

**Example:**

| Expected Charges | Billed Charges | Difference | Classification |
|---:|---:|---:|---|
| ₹100 | ₹100 | ₹0 | Correctly Charged |
| ₹100 | ₹120 | -₹20 | Overcharged |
| ₹100 | ₹80 | ₹20 | Undercharged |

---

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| Python | Core programming and automation |
| Pandas | Data cleaning, merging, and analysis |
| NumPy | Numerical calculations |
| OpenPyXL | Excel workbook creation and formatting |
| Jupyter Notebook | Interactive data analysis and experimentation |
| Microsoft Excel | Final reports and business summaries |

*The actual libraries and versions will be confirmed in the completed Python implementation.*

---

## 📁 Project Structure

```text
Ecommerce_Logistics_Charge_Audit/
│
├── Python_Files/
│   └── Shopx.ipynb
│
├── Raw_Data/
│   ├── shopx_order_report.xlsx
│   ├── product_weight.xlsx
│   ├── warehouse_customer_pincode_zone.xlsx
│   ├── courier_invoice.csv
│   └── courier_rates.xlsx
│
├── Results/
│   └── ShopX_Solution.xlsx
│
└── README.md
```

### Folder Description

| Folder/File | Description |
|---|---|
| `Python_Files/` | Contains the Jupyter Notebook used for data processing, calculations, and analysis. |
| `Raw_Data/` | Stores the original input datasets provided by ShopX and the courier company. |
| `Results/` | Contains the final Excel reports and analysis outputs. |
| `README.md` | Provides project documentation, business requirements, methodology, and findings. |

*Note: The filenames shown above are suggested names. The original input files can retain their existing filenames.*

---

## ⚙️ Project Workflow

The project follows a structured data analytics workflow.

### Step 1: Data Loading and Exploration

- Import the required Python libraries.
- Load all five input datasets using Pandas.
- Understand the structure of each dataset.
- Inspect column names and data types.
- Examine sample records and dataset dimensions.

### Step 2: Data Cleaning and Preprocessing

- Check missing values.
- Identify duplicate records.
- Validate Order IDs and Product Codes.
- Check the data required for joining different datasets.
- Handle inconsistent or invalid records.
- Standardize column names and data types.

### Step 3: Order Weight Calculation

- Merge the ShopX Order Report with Product Weight data using Product Code.
- Calculate the weight of each product based on Units Ordered.
- Calculate the total shipment weight for each Order ID.
- Convert the total weight from grams into kilograms.

### Step 4: Weight Slab Calculation

- Calculate the applicable 0.5 KG weight slab for each order.
- Compare ShopX's calculated weight slab with the courier company's chargeable weight slab.
- Identify discrepancies in shipment weight calculations.

### Step 5: Delivery Zone Verification

- Use warehouse pincode and customer area code information.
- Identify the expected delivery zone for each order.
- Compare the expected zone with the zone mentioned in the courier invoice.
- Identify delivery zone mismatches.

### Step 6: Expected Courier Charges Calculation

- Load the courier company's rate card.
- Identify the applicable weight slab and delivery zone.
- Check the freight type.
- Apply fixed and additional forward charges.
- Apply RTO charges wherever required.
- Calculate the expected courier charges for each order.

### Step 7: Invoice Reconciliation

- Merge ShopX's calculated order details with the courier invoice using Order ID.
- Compare expected charges with actual billed charges.
- Calculate the difference between expected and billed amounts.
- Identify correctly charged, overcharged, and undercharged orders.
- Quantify billing discrepancies.

### Step 8: Excel Report Generation

Generate two separate Excel reports containing the calculated results:

1. ShopX_Solution.xlsx

Save both Excel files inside the `Results/` folder.

---

## 📑 Excel Report Structure

The project generates Excel file.

### 1. Order-Level Calculation

**Sheet Name:** `order_level_calculation.xlsx`

This report provides detailed order-level reconciliation between ShopX's expected delivery charges and the courier company's actual invoice.

| Column Name | Description |
|---|---|
| Order ID | Unique order identifier |
| AWB Number | Courier shipment tracking number |
| Total Weight as per ShopX (KG) | Calculated order weight |
| Weight Slab as per ShopX (KG) | Expected chargeable weight slab |
| Total Weight as per Courier Company (KG) | Courier-reported chargeable weight |
| Weight Slab Charged by Courier Company (KG) | Courier-billed weight slab |
| Delivery Zone as per ShopX | Expected delivery zone |
| Delivery Zone Charged by Courier Company | Courier-reported delivery zone |
| Expected Charge as per ShopX (₹) | Calculated expected delivery charges |
| Charges Billed by Courier Company (₹) | Actual invoice amount |
| Difference Between Expected and Billed Charges (₹) | Billing discrepancy |

### 2. Courier Charge Summary

**Sheet Name:** `charge_summary.xlsx`

This report summarizes the courier billing reconciliation.

| Description | Count | Amount (₹) |
|---|---:|---:|
| Correctly Charged Orders | Number of correct orders | Total billed amount |
| Overcharged Orders | Number of overcharged orders | Total excess amount |
| Undercharged Orders | Number of undercharged orders | Total shortcharged amount |

This summary helps ShopX understand the overall accuracy of courier billing and identify potential cost savings.

---

## 📊 Key Business Insights

The following business insights will be identified after completing the analysis:

- Total number of orders analyzed.
- Number of correctly charged orders.
- Number of overcharged orders.
- Number of undercharged orders.
- Total amount billed by the courier company.
- Total expected courier charges.
- Total overcharging amount.
- Total undercharging amount.
- Differences in shipment weight slabs.
- Differences in delivery zones.
- Overall courier billing accuracy.
- Potential logistics cost savings through invoice reconciliation.

*Actual numerical findings will be added after processing the supplied datasets.*

---

## 📤 Final Deliverables

The project generates Excel workbooks.

| Output Sheet | Description |
|---|---|
| `order_level_calculation.xlsx` | Detailed order-wise comparison of expected and actual courier charges. |
| `charge_summary.xlsx` | Summary of correctly charged, overcharged, and undercharged orders. |

**Output Directory:**

```text
Results/
└── ShopX_Solution.xlsx
```

---

## 🚀 How to Run the Project

### Prerequisites

Make sure Python and Jupyter Notebook are installed on your system.

### Step 1: Clone the Repository

```bash
git clone <your-repository-url>
```

### Step 2: Navigate to the Project Directory

```bash
cd "Data-Analytics-Portfolio/Python/Ecommerce_Logistics_Charge_Audit"
```

### Step 3: Install Required Libraries

```bash
pip install pandas numpy openpyxl jupyter
```

### Step 4: Add the Input Datasets

Place all five original input datasets inside the `Raw_Data/` directory.

### Step 5: Launch Jupyter Notebook

```bash
jupyter notebook
```

### Step 6: Open the Project Notebook

Navigate to:

```text
Python_Files/Shopx.ipynb
```

Run all notebook cells to execute the complete analysis.

### Step 7: Access the Final Reports

After successful execution, both generated Excel workbooks will be available inside the `Results/` directory.

---

## 🔍 Skills Demonstrated

- Python Programming
- Data Cleaning and Preprocessing
- Pandas Data Analysis
- Data Merging and Joining
- GroupBy Operations
- Data Aggregation
- Weight and Slab Calculations
- Business Rule Implementation
- Financial Calculations
- Invoice Reconciliation
- Billing Discrepancy Analysis
- Excel Report Automation
- Business Data Analysis

---

## 🔮 Future Enhancements

- Develop an interactive logistics cost dashboard using Power BI.
- Automate daily courier invoice reconciliation.
- Add courier partner-wise cost comparisons.
- Build a shipment weight discrepancy monitoring system.
- Include monthly logistics expense analysis.
- Identify courier partners with the highest billing discrepancies.
- Develop automated alerts for overcharged shipments.
- Build a reusable Python application for processing multiple courier invoices.

---

## 🏁 Conclusion

The **E-commerce Logistics Charge Audit Using Python** project demonstrates the practical application of Python in logistics analytics, financial analysis, and invoice reconciliation.

By combining order information, product weights, pincode mappings, courier invoices, and rate cards, the project transforms raw business data into meaningful insights.

It helps ShopX identify incorrect courier billing, detect weight and zone discrepancies, quantify overcharging, and improve the accuracy of logistics expense management.

This project showcases practical skills in **Python, Pandas, NumPy, Data Cleaning, Data Merging, Business Rule Implementation, Financial Calculations, Invoice Reconciliation, and Excel Automation**, making it a valuable addition to a Data Analyst portfolio.

---

## 👨‍💻 Author

**Yogesh Sharma**

**Project Category:** Data Analytics | Logistics Analytics | Financial Analysis | Python

**Technologies:** Python · Pandas · NumPy · OpenPyXL · Jupyter Notebook · Microsoft Excel
