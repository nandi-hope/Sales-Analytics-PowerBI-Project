# Sales-Analytics-PowerBI-Project
End-to-end Data Analytics project using Excel, MySQL, and Power BI
![Dashboard Preview](dashboard_preview.png)

# 📊 Sales Analytics Dashboard | Excel · SQL · Power BI

## 🧠 Project Overview
This project demonstrates an **end-to-end data analytics process** — from raw data cleaning in Excel, to data analysis using SQL, and visualization through an interactive Power BI dashboard.

The goal was to uncover **key business insights** about sales performance across products, regions, and channels, and to demonstrate real-world data analytics skills.

---

## 🧰 Tools & Technologies Used
| Tool | Purpose |
|------|----------|
| **Microsoft Excel** | Data cleaning, preprocessing, exploratory analysis |
| **MySQL Workbench** | Querying, data transformation & analysis |
| **Microsoft Power BI** | Data visualization, storytelling & KPIs |
| **GitHub** | Version control & project documentation |

---

## 📂 Project Structure

📁 Sales-Analytics-PowerBI-Project
│
├── dataset/
│ └── sales_dataset.csv
│
├── sql/
│ └── analysis_queries.sql
│
├── dashboard/
│ └── Sales_Analytics_Dashboard.pbix
│
├── images/
│ └── dashboard_preview.png
│
└── README.md


---

## 🧹 Step 1: Data Cleaning (Excel)
Raw sales data was first cleaned and prepared in Excel to ensure consistency and accuracy.

**Tasks performed:**
- Removed duplicates & missing values  
- Standardized date formats and column headers  
- Calculated new columns:  
  - `Revenue = UnitPrice * Quantity`  
  - `Profit = Revenue * 0.2` *(assuming 20% margin)*  
- Conducted exploratory analysis using Pivot Tables  

📈 *Example early insights from Excel:*
- Sales volume peaked during Q1
- Laptops and Monitors contributed ~45% of total revenue

---

## 🧮 Step 2: Data Analysis (SQL)
The cleaned dataset was imported into **MySQL**, where complex queries were executed to extract business insights.

**Database Setup**
```sql
CREATE DATABASE sales_analysis;
USE sales_analysis;

Sample Table Creation

CREATE TABLE cleaned_sales_dataset1 (
  OrderID INT,
  OrderDate DATE,
  Product VARCHAR(50),
  Region VARCHAR(50),
  SalesChannel VARCHAR(20),
  UnitPrice INT,
  Quantity INT,
  Revenue INT
);

Key Analytical Queries

🔹 1. Top-Selling Product

SELECT Product, SUM(Revenue) AS TotalRevenue
FROM cleaned_sales_dataset1
GROUP BY Product
ORDER BY TotalRevenue DESC;

🔹 2. Regional Sales Performance

SELECT Region, SUM(Revenue) AS TotalRevenue
FROM cleaned_sales_dataset1
GROUP BY Region
ORDER BY TotalRevenue DESC;

🔹 3. Monthly Sales Trend

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(Revenue) AS MonthlyRevenue
FROM cleaned_sales_dataset1
GROUP BY Month
ORDER BY Month;

🔹 4. Channel-wise Comparison

SELECT SalesChannel, SUM(Revenue) AS TotalRevenue
FROM cleaned_sales_dataset1
GROUP BY SalesChannel;

SQL Insight Highlights

North region contributed 30.4% of total revenue

Laptops were the top-selling product

Online and Retail channels performed almost equally

Sales peaked in March and April

📊 Step 3: Data Visualization (Power BI)

The processed data was connected to Power BI for visualization and storytelling.

🖼 Dashboard Overview

🔢 DAX Measures Used

Total Revenue = SUM(cleaned_sales_dataset1[Revenue])
Total Orders = DISTINCTCOUNT(cleaned_sales_dataset1[OrderID])
Avg Order Value = DIVIDE([Total Revenue], [Total Orders])

📈 Visuals Included

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

💡 Key Insights

💻 Laptops generated the highest revenue, indicating strong demand.

🌍 North region dominated sales, contributing nearly one-third of total revenue.

🛒 Online sales slightly outperformed Retail channels.

🗓️ Highest revenue months: February to April.

📊 Sales began stabilizing toward the end of the year.

🧭 Learning Outcomes

Developed a structured workflow combining Excel → SQL → Power BI.

Practiced data transformation and DAX measure creation.

Designed an interactive Power BI dashboard that supports drillthrough and tooltips.

Strengthened understanding of data storytelling and business KPIs.

▶ How to Reproduce This Project

Download the dataset (sales_dataset.csv)

Import into MySQL using analysis_queries.sql

Open the Power BI file (Sales_Analytics_Dashboard.pbix)

Refresh the data connection and explore visuals

📎 Repository Link

GitHub Repo: Sales Analytics Power BI Project

👤 Author

Nandi Hope
📧 Email: nandinijella0095@gmail.com

🔗 www.linkedin.com/in/nandini-jella-a8262b1a0

🔗 https://github.com/nandi-hope/Sales-Analytics-PowerBI-Project



