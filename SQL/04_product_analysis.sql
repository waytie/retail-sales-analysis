-- Top Products by Quantity
SELECT
description,
SUM(quantity) quantity_sold
FROM retail_clean
GROUP BY description
ORDER BY quantity_sold DESC
LIMIT 10;

-- Top Products by Revenue
SELECT
description,
ROUND(SUM(quantity*price),2) revenue
FROM retail_clean
GROUP BY description
ORDER BY revenue DESC
LIMIT 10;

-- Average Quantity Sold
SELECT
description,
ROUND(AVG(quantity),2)
FROM retail_clean
GROUP BY description
ORDER BY AVG(quantity) DESC
LIMIT 10;

-- Number of Products Sold
SELECT
COUNT(DISTINCT stockcode)
FROM retail_clean;