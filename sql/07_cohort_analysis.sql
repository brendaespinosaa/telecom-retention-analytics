```sql
-- =====================================================
-- TELECOM CUSTOMER RETENTION ANALYTICS
-- COHORT ANALYSIS
-- =====================================================



-- =====================================================
-- ADD SIGNUP DATE COLUMN
-- ===================================================== ```

ALTER TABLE customers_cleaned
ADD COLUMN signup_date DATE;



-- =====================================================
-- DISABLE SAFE UPDATES
-- =====================================================

SET SQL_SAFE_UPDATES = 0;



-- =====================================================
-- GENERATE RANDOM SIGNUP DATES
-- Simulates customer acquisition dates
-- =====================================================

UPDATE customers_cleaned

SET signup_date = DATE_SUB(
    CURDATE(),
    INTERVAL FLOOR(RAND() * 720) DAY
);



-- =====================================================
-- RE-ENABLE SAFE UPDATES
-- =====================================================

SET SQL_SAFE_UPDATES = 1;



-- =====================================================
-- VALIDATE SIGNUP DATES
-- =====================================================

SELECT
    customer_id,
    signup_date
FROM customers_cleaned
LIMIT 10;



-- =====================================================
-- CUSTOMER COHORT ANALYSIS
-- =====================================================

SELECT

    DATE_FORMAT(signup_date, '%Y-%m') AS cohort_month,

    COUNT(*) AS total_customers,

    SUM(churn_flag) AS churned_customers,

    ROUND(
        100 * (
            COUNT(*) - SUM(churn_flag)
        ) / COUNT(*),
        2
    ) AS retention_rate

FROM customers_cleaned

GROUP BY cohort_month

ORDER BY cohort_month;



-- =====================================================
-- COHORT RETENTION BY CONTRACT TYPE
-- =====================================================

SELECT

    DATE_FORMAT(signup_date, '%Y-%m') AS cohort_month,

    contract_type,

    COUNT(*) AS customers,

    ROUND(
        100 * (
            COUNT(*) - SUM(churn_flag)
        ) / COUNT(*),
        2
    ) AS retention_rate

FROM customers_cleaned

GROUP BY cohort_month, contract_type

ORDER BY cohort_month;


```
