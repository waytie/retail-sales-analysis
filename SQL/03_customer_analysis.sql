-- Top Customers
SELECT
customer_id,
ROUND(SUM(quantity*price),2) revenue
FROM retail_clean
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 10;

-- Customer Orders
SELECT
customer_id,
COUNT(DISTINCT invoice) total_orders
FROM retail_clean
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;

-- Average Customer Spend
SELECT
customer_id,
ROUND(AVG(quantity*price),2) avg_spend
FROM retail_clean
GROUP BY customer_id
ORDER BY avg_spend DESC
LIMIT 10;

-- Customers by Country
SELECT
country,
COUNT(DISTINCT customer_id)
FROM retail_clean
GROUP BY country
ORDER BY COUNT(*) DESC;