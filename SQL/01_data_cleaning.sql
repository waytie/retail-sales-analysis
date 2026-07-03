DROP TABLE IF EXISTS retail_clean;

CREATE TABLE retail_clean AS
SELECT *
FROM online_retail
WHERE quantity > 0
  AND price > 0
  AND customer_id IS NOT NULL;