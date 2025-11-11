# 🧠 Sales Performance Dashboard — Excel | SQL | Power BI
### 📊 End-to-End Data Analytics Project

This project demonstrates a complete data analytics workflow using Excel, MySQL, and Power BI to analyze and visualize sales performance data.
It covers data cleaning, SQL-based analysis, and interactive Power BI dashboards for business insights.

### 🚀 Project Overview

Goal:
To analyze company sales data and create an interactive Power BI dashboard that highlights revenue trends, product performance, and regional sales distribution.

---

## 🧰 Tools Used
| Tool | Purpose |
|------|---------|
| Excel | Data cleaning, formatting, CSV conversion |
| MySQL | Data storage, SQL queries & insights |
| Power BI | Dashboard building & visualization |
| GitHub | Version control and project documentation |

---

## 📂 Project Files

| File | Description |
|------|-------------|
| `sales_dataset.csv` | Raw dataset (500 rows) cleaned in Excel |
| `analysis_queries.sql` | SQL scripts used for analysis |
| `Sales_Analytics_Dashboard.pbix` | Power BI dashboard file |
| `dashboard_preview.png` | Dashboard screenshot |

---

## 🧩 Step 1 — Data Cleaning (Excel)

### Tasks Performed
**Objective:** Prepare clean and structured data for SQL import.

**Steps:**

**1.Opened dataset** (``` sales_dataset.csv ```) → Saved as ``` sales_data.xlsx ```

**2.Checked for missing values** using conditional formatting (none found)

**3.Removed duplicates** using ```Data → Remove Duplicates```

**4.Added calculated field:**
   - **Profit** = ``` Revenue * 0.2 ``` (assuming 20% margin)
   - 
**5.Performed quick EDA using Pivot Tables:**

   - Revenue by Region
   - Top Product by Revenue
   - Monthly Revenue Trend
   - 
Saved cleaned data as ```sales_data.csv```.

### Snapshot of Cleaning Steps
| Task | Excel Feature Used |
|------|--------------------|
| Removing Duplicates | Data → Remove Duplicates |
| Formatting Dates | Format Cells → Date |
| Calculating Revenue | Formula: `=UnitPrice * Quantity` |
| Exploratory Pivot Charts | Insert → Pivot Table |

---


## 🧮 Step 2 — SQL Analysis (MySQL)

### Database Creation


```
sql
CREATE DATABASE sales_analysis;
USE sales_analysis;
```

**Table Creation**

```
sql
CREATE TABLE sales_data (
  OrderID INT,
  OrderDate DATE,
  Product VARCHAR(50),
  Region VARCHAR(50),
  SalesChannel VARCHAR(20),
  UnitPrice INT,
  Quantity INT,
  Revenue INT,
  Profit INT
);
```

**Data Import**
Loaded the cleaned CSV into MySQL using:

👉 To IMPORT CSV into MySQL:

In MySQL Workbench, on the left panel (Schemas area).

Right-click your database (sales_analysis)

Select Table Data Import Wizard

Select CSV file (sales_data.csv)

Click Next

**Choose:**

"Create new table"

Table name: sales_data

Click Next → Next → Finish

```
SHOW TABLES;
SELECT * FROM sales_data LIMIT 10;
```

**Key Analytical Queries**
**1️⃣ Top-Selling Product**
```
sql
SELECT Product, SUM(Revenue) AS TotalRevenue
FROM sales_data
GROUP BY Product
ORDER BY TotalRevenue DESC;
```
**2️⃣ Revenue by Region**
```
sql
SELECT Region, SUM(Revenue) AS TotalRevenue
FROM sales_data
GROUP BY Region
ORDER BY TotalRevenue DESC;
```
**3️⃣ Monthly Revenue Trend**
```
sql
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(Revenue) AS MonthlyRevenue
FROM sales_data
GROUP BY Month
ORDER BY Month;
```
**4️⃣ Online vs Retail Performance**
```
sql
SELECT SalesChannel, SUM(Revenue) AS TotalRevenue
FROM sales_data
GROUP BY SalesChannel;
```
**5️⃣ Best Region per Product**
```
sql
SELECT Product, Region, SUM(Revenue) AS TotalRevenue
FROM sales_data
GROUP BY Product, Region
ORDER BY Product, TotalRevenue DESC;
```

### 📊 Step 3 — Visualization (Power BI Dashboard)
**Dashboard Overview**
Objective: Create an interactive, business-ready dashboard.

Steps:

Connected Power BI to MySQL Database

Get Data → MySQL → Server: localhost, Database: sales_analysis

### Created DAX Measures:

Total Revenue = SUM(Query1[Revenue])
Total Quantity = SUM(Query1[Quantity])
Total Orders = DISTINCTCOUNT(Query1[OrderID])
Avg Order Value = DIVIDE([Total Revenue], [Total Orders])
Average Unit Price = DIVIDE([Total Revenue], [Total Quantity])

### 📈 Dashboard Visuals
Visual	Type	Insights
💵 KPI Cards	Card	Total Revenue, Total Quantity, Average Order Value
📅 Monthly Revenue Trend	Line Chart	Seasonal and monthly performance trends
🌍 Revenue by Region	Donut Chart	Regional contribution to total revenue
🎯 Revenue by Product	Bar Chart	Top-performing products
🛒 Online vs Retail	Column Chart	Compare revenue by sales channel
🎛️ Slicers	Filter	Region and Product filters for interactivity
🧠 Insights from Dashboard

North region generated the highest revenue share (~30%).

Monitors and Laptops are top-selling products.

Online and Retail channels perform almost equally (~$0.99M each).

Revenue peaked during March and April, indicating seasonal demand.

📷 Dashboard Preview

## 🏁 Conclusion

This project showcases a full Data Analytics workflow — from data cleaning in Excel, SQL-based data analysis, to interactive visualization in Power BI.
It can easily be adapted for business reporting, sales tracking, and data-driven decision making.

## 💡 Future Enhancements

Automate data refresh between MySQL and Power BI

Add profit margin analysis & forecasting

Integrate with Power BI Service for live dashboards



**📈 Visuals Included**

| Visual                  | Purpose                                                |
| ----------------------- | ------------------------------------------------------ |
| **KPI Cards**           | Show Total Revenue, Quantity Sold, and Avg Order Value |
| **Line Chart**          | Monthly revenue trend                                  |
| **Bar Chart**           | Product-wise performance                               |
| **Donut Chart**         | Region-wise revenue distribution                       |
| **Clustered Bar Chart** | Online vs Retail comparison                            |
| **Slicers**             | Filter by Product and Region                           |
| **Drillthrough Page**   | View order-level details for selected products         |
| **Tooltips**            | Hover-level details for better data exploration        |

### 🧠 Insights from Dashboard

**North region** generated the highest revenue share (~30%).

**Monitors and Laptops** are top-selling products.

**Online and Retail** channels perform almost equally (~$0.99M each).

**Revenue peaked** during **March and April**, indicating seasonal demand.

---

## 💡 Key Insights

💻 Laptops generated the highest revenue, indicating strong demand.

🌍 North region dominated sales, contributing nearly one-third of total revenue.

🛒 Online sales slightly outperformed Retail channels.

🗓️ Highest revenue months: February to April.

📊 Sales began stabilizing toward the end of the year.

---

## 🧭 Learning Outcomes

Developed a structured workflow combining Excel → SQL → Power BI.

Practiced data transformation and DAX measure creation.

Designed an interactive Power BI dashboard that supports drillthrough and tooltips.

Strengthened understanding of data storytelling and business KPIs.

---

## ▶ How to Reproduce This Project

Download the dataset (sales_dataset.csv)

Import into MySQL using analysis_queries.sql

Open the Power BI file (Sales_Analytics_Dashboard.pbix)

Refresh the data connection and explore visuals

---

### 📎 Repository Link

GitHub Repo: Sales Analytics Power BI Project

### 👤 Author

Nandi Hope
📧 Email: nandinijella0095@gmail.com

🔗 www.linkedin.com/in/nandini-jella-a8262b1a0

🔗 https://github.com/nandi-hope/Sales-Analytics-PowerBI-Project



