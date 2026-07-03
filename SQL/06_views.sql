CREATE OR REPLACE VIEW sales_summary AS
SELECT
country,
ROUND(SUM(quantity*price),2) revenue,
COUNT(DISTINCT invoice) orders,
COUNT(DISTINCT customer_id) customers
FROM retail_clean
GROUP BY country;