```sql id="v4p5ul"
-- =====================================================
-- CHURN RATE BY INTERNET SERVICE
-- ===================================================== ```

SELECT

    internet_service,

    COUNT(*) AS customers,

    SUM(churn_flag) AS churned_customers,

    ROUND(
        100 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate

FROM customers_cleaned

GROUP BY internet_service

ORDER BY churn_rate DESC;


```

```sql id="e9ah3x"
-- =====================================================
-- CHURN RATE BY SENIOR CITIZEN
-- =====================================================

SELECT

    senior_citizen,

    COUNT(*) AS customers,

    ROUND(
        100 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate

FROM customers_cleaned

GROUP BY senior_citizen;


```

```sql id="d2mg6s"
-- =====================================================
-- AVERAGE REVENUE BY CHURN STATUS
-- =====================================================

SELECT

    churn_flag,

    ROUND(AVG(monthly_charges),2) AS avg_monthly_revenue,

    ROUND(AVG(total_charges),2) AS avg_total_revenue

FROM customers_cleaned

GROUP BY churn_flag;


```

```sql id="z7u2yo"
-- =====================================================
-- TECH SUPPORT IMPACT ON CHURN
-- =====================================================

SELECT

    tech_support,

    COUNT(*) AS customers,

    ROUND(
        100 * SUM(churn_flag) / COUNT(*),
        2
    ) AS churn_rate

FROM customers_cleaned

GROUP BY tech_support

ORDER BY churn_rate DESC;


```

```sql id="m3k5yv"
-- =====================================================
-- TOP REVENUE CUSTOMER SEGMENTS
-- =====================================================

SELECT

    contract_type,
    internet_service,

    COUNT(*) AS customers,

    ROUND(SUM(monthly_charges),2) AS total_revenue

FROM customers_cleaned

GROUP BY contract_type, internet_service

ORDER BY total_revenue DESC;


```
