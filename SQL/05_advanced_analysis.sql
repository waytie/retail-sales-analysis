-- Top Customer per Country
WITH ranked AS (
SELECT
country,
customer_id,
SUM(quantity*price) revenue,
ROW_NUMBER() OVER(
PARTITION BY country
ORDER BY SUM(quantity*price) DESC
) rn
FROM retail_clean
GROUP BY country,customer_id
)

SELECT *
FROM ranked
WHERE rn=1;