-- Total Revenue
SELECT
ROUND(SUM(quantity*price),2) AS total_revenue
FROM retail_clean;

-- Total Orders
SELECT
COUNT(DISTINCT invoice) AS total_orders
FROM retail_clean;

-- Total Customers
SELECT
COUNT(DISTINCT customer_id) AS total_customers
FROM retail_clean;

-- Average Order Value
SELECT
ROUND(
SUM(quantity*price)/
COUNT(DISTINCT invoice),2
) AS average_order_value
FROM retail_clean;

-- Average Selling Price
SELECT
ROUND(AVG(price),2) AS average_price
FROM retail_clean;

-- Revenue by Country
SELECT
country,
ROUND(SUM(quantity*price),2) revenue
FROM retail_clean
GROUP BY country
ORDER BY revenue DESC;

-- Monthly Revenue
SELECT
DATE_TRUNC('month',invoicedate) AS month,
ROUND(SUM(quantity*price),2) revenue
FROM retail_clean
GROUP BY month
ORDER BY month;

-- Daily Revenue
SELECT
DATE(invoicedate),
ROUND(SUM(quantity*price),2) revenue
FROM retail_clean
GROUP BY DATE(invoicedate)
ORDER BY DATE(invoicedate);

-- Orders per Country
SELECT
country,
COUNT(DISTINCT invoice) orders
FROM retail_clean
GROUP BY country
ORDER BY orders DESC;

-- Unique Products
SELECT
COUNT(DISTINCT stockcode)
FROM retail_clean;