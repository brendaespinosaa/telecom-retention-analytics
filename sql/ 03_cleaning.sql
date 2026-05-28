```sql id="y5jlwm"
-- =====================================================
-- TELECOM CUSTOMER RETENTION ANALYTICS
-- DATA CLEANING PROCESS
-- =====================================================



-- =====================================================
-- CHECK EMPTY VALUES IN TotalCharges
-- ===================================================== ```

SELECT *
FROM raw_telco_customers
WHERE TRIM(TotalCharges) = '';



-- =====================================================
-- CHECK DUPLICATE CUSTOMERS
-- =====================================================

SELECT
    customerID,
    COUNT(*) AS total
FROM raw_telco_customers
GROUP BY customerID
HAVING COUNT(*) > 1;



-- =====================================================
-- CREATE CLEANED TABLE
-- =====================================================

CREATE TABLE customers_cleaned AS

SELECT

    customerID AS customer_id,

    gender AS gender,

    SeniorCitizen AS senior_citizen,

    Partner AS partner,

    Dependents AS dependents,

    tenure AS tenure,

    PhoneService AS phone_service,

    MultipleLines AS multiple_lines,

    InternetService AS internet_service,

    OnlineSecurity AS online_security,

    OnlineBackup AS online_backup,

    DeviceProtection AS device_protection,

    TechSupport AS tech_support,

    StreamingTV AS streaming_tv,

    StreamingMovies AS streaming_movies,

    Contract AS contract_type,

    PaperlessBilling AS paperless_billing,

    PaymentMethod AS payment_method,



    CAST(MonthlyCharges AS DECIMAL(10,2)) AS monthly_charges,



    CASE
        WHEN TRIM(TotalCharges) = ''
        THEN NULL

        ELSE CAST(TotalCharges AS DECIMAL(10,2))
    END AS total_charges,



    CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END AS churn_flag

FROM raw_telco_customers;


```
