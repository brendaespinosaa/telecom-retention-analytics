```sql
-- =====================================================
-- TELECOM CUSTOMER RETENTION ANALYTICS
-- KPI ANALYSIS
-- =====================================================



-- =====================================================
-- KPI 1: CHURN RATE
-- Objective:
-- Calculate the percentage of customers who canceled
-- ===================================================== ```

SELECT
    COUNT(*) AS total_customers,

    SUM(churn_flag) AS churned_customers,

    ROUND(
        100 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate

FROM customers_cleaned;



-- =====================================================
-- KPI 2: MONTHLY REVENUE
-- Objective:
-- Calculate total monthly revenue
-- =====================================================

SELECT
    ROUND(SUM(monthly_charges),2) AS monthly_revenue
FROM customers_cleaned;



-- =====================================================
-- KPI 3: REVENUE BY CONTRACT TYPE
-- Objective:
-- Analyze revenue generation by contract category
-- =====================================================

SELECT
    contract_type,

    COUNT(*) AS customers,

    ROUND(SUM(monthly_charges),2) AS revenue,

    ROUND(AVG(monthly_charges),2) AS avg_revenue_per_customer

FROM customers_cleaned

GROUP BY contract_type

ORDER BY revenue DESC;



-- =====================================================
-- KPI 4: CHURN RATE BY CONTRACT TYPE
-- Objective:
-- Identify which contracts have the highest churn
-- =====================================================

SELECT
    contract_type,

    COUNT(*) AS customers,

    SUM(churn_flag) AS churned_customers,

    ROUND(
        100 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate

FROM customers_cleaned

GROUP BY contract_type

ORDER BY churn_rate DESC;



-- =====================================================
-- KPI 5: CHURN RATE BY PAYMENT METHOD
-- Objective:
-- Identify payment methods associated with higher churn
-- =====================================================

SELECT
    payment_method,

    COUNT(*) AS customers,

    ROUND(
        100 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate

FROM customers_cleaned

GROUP BY payment_method

ORDER BY churn_rate DESC;



-- =====================================================
-- KPI 6: MONTHLY REVENUE LOST TO CHURN
-- Objective:
-- Estimate monthly revenue lost from churned customers
-- =====================================================

SELECT
    ROUND(SUM(monthly_charges),2) AS monthly_revenue_lost

FROM customers_cleaned

WHERE churn_flag = 1;



-- =====================================================
-- KPI 7: TENURE VS CHURN
-- Objective:
-- Analyze churn behavior by customer lifetime
-- =====================================================

SELECT

    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS tenure_group,

    COUNT(*) AS customers,

    ROUND(
        100 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate

FROM customers_cleaned

GROUP BY tenure_group

ORDER BY churn_rate DESC;


```
