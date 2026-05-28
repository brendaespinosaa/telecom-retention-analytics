```sql id="b2a6xp"
-- =====================================================
-- DIMENSION TABLE: CUSTOMER
-- ===================================================== ```

CREATE TABLE dim_customer AS

SELECT DISTINCT

    customer_id,

    gender,

    senior_citizen,

    partner,

    dependents

FROM customers_cleaned;


```

```sql id="b6t9ys"
-- =====================================================
-- DIMENSION TABLE: SERVICES
-- =====================================================

CREATE TABLE dim_services AS

SELECT DISTINCT

    customer_id,

    internet_service,

    online_security,

    online_backup,

    device_protection,

    tech_support,

    streaming_tv,

    streaming_movies

FROM customers_cleaned;


```

```sql id="r7m3lp"
-- =====================================================
-- DIMENSION TABLE: CONTRACT
-- =====================================================

CREATE TABLE dim_contract AS

SELECT DISTINCT

    customer_id,

    contract_type,

    payment_method,

    paperless_billing

FROM customers_cleaned;


```

```sql id="f8u2xv"
-- =====================================================
-- FACT TABLE: CUSTOMER METRICS
-- =====================================================

CREATE TABLE fact_customer_metrics AS

SELECT

    customer_id,

    tenure,

    monthly_charges,

    total_charges,

    churn_flag,

    signup_date

FROM customers_cleaned;


```
