-- NULL CHECK

SELECT
    COUNT(*) AS null_total_charges
FROM customers_cleaned
WHERE total_charges IS NULL;



-- DUPLICATE CHECK

SELECT
    customer_id,
    COUNT(*) AS total
FROM customers_cleaned
GROUP BY customer_id
HAVING COUNT(*) > 1;