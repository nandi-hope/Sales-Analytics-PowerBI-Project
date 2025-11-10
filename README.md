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

🧮 Step 2: Data Analysis (SQL)

This section covers how the cleaned dataset was analyzed in MySQL Workbench to generate key business insights.

2.1 Database Setup

Database Creation:
The analysis begins with creating a new database named sales_analysis.

Table Creation:
A table cleaned_sales_dataset1 is created to store sales transaction records including order details, region, channel, and revenue.

CREATE DATABASE sales_analysis;
USE sales_analysis;

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


📸 Result:


2.2 Data Exploration & Cleaning

1️⃣ Record Count:
Determine total number of records in the dataset.

SELECT COUNT(*) AS TotalRecords FROM cleaned_sales_dataset1;


2️⃣ Distinct Products:
Find out how many unique products exist in the dataset.

SELECT COUNT(DISTINCT Product) AS TotalProducts FROM cleaned_sales_dataset1;


3️⃣ Check for Missing Values:
Identify any records with missing critical data.

SELECT * 
FROM cleaned_sales_dataset1
WHERE Product IS NULL 
   OR Region IS NULL 
   OR Revenue IS NULL;


4️⃣ Revenue Validation:
Ensure that revenue equals Quantity * UnitPrice.

SELECT OrderID, Product, Quantity, UnitPrice, Revenue
FROM cleaned_sales_dataset1
WHERE Revenue <> (Quantity * UnitPrice);


📸 Result:


2.3 Analytical Queries
🔹 1. Top-Selling Product

Identify which products generated the highest total revenue.

SELECT Product, SUM(Revenue) AS TotalRevenue
FROM cleaned_sales_dataset1
GROUP BY Product
ORDER BY TotalRevenue DESC;


📸 Result:


🔹 2. Revenue by Region

Determine which region performed best in terms of sales revenue.

SELECT Region, SUM(Revenue) AS TotalRevenue
FROM cleaned_sales_dataset1
GROUP BY Region
ORDER BY TotalRevenue DESC;


📸 Result:


🔹 3. Monthly Sales Trend

Analyze monthly sales performance to identify growth patterns and seasonality.

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, 
       SUM(Revenue) AS MonthlyRevenue
FROM cleaned_sales_dataset1
GROUP BY Month
ORDER BY Month;


📸 Result:


🔹 4. Online vs Retail Channel Performance

Compare total revenue between Online and Retail channels.

SELECT SalesChannel, SUM(Revenue) AS TotalRevenue
FROM cleaned_sales_dataset1
GROUP BY SalesChannel;


📸 Result:


🔹 5. Best Region for Each Product

Find which region generates the most revenue for each product.

SELECT Product, Region, SUM(Revenue) AS TotalRevenue
FROM cleaned_sales_dataset1
GROUP BY Product, Region
ORDER BY Product, TotalRevenue DESC;


📸 Result:


2.4 SQL Insights Summary
Insight	Finding
💻 Top Product	Laptops generated the highest revenue overall
🌍 Top Region	North region contributed ~30% of total revenue
🛒 Channel Comparison	Online slightly outperformed Retail
🗓️ Best Months	February to April had peak revenue
📉 Data Quality	No major null or inconsistent revenue values found

✅ Next Step: Go to Step 3 → Power BI Visualization

## 📊 Step 3: Data Visualization (Power BI)

The processed data was connected to Power BI for visualization and storytelling.

**🖼 Dashboard Overview**

**🔢 DAX Measures Used**

Total Revenue = SUM(cleaned_sales_dataset1[Revenue])
Total Orders = DISTINCTCOUNT(cleaned_sales_dataset1[OrderID])
Avg Order Value = DIVIDE([Total Revenue], [Total Orders])

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



