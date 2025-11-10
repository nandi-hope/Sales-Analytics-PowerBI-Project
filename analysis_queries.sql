CREATE DATABASE sales_analysis;


USE sales_analysis;


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

SELECT * FROM sales_data LIMIT 10 ;

-- FIND THE Top-selling product by revenue

SELECT Product, SUM(Revenue) AS TotalRevenue
FROM sales_data
GROUP BY Product
ORDER BY TotalRevenue DESC;

-- FIND THE Revenue by region

SELECT Region, SUM(Revenue) AS TotalRevenue
FROM sales_data
GROUP BY Region
ORDER BY TotalRevenue DESC;

-- FIND THE Monthly Revenue Trend

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(Revenue) AS MonthlyRevenue
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- FIND Online vs Retail revenue

SELECT SalesChannel, SUM(Revenue) AS TotalRevenue
FROM Sales_data
GROUP BY SalesChannel;

-- FIND THE Best Region for Each Product

SELECT Product, Region, SUM(Revenue) AS TotalRevenue
FROM sales_data
GROUP BY Product, Region
ORDER BY Product, TotalRevenue DESC;

























