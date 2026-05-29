# 📦 Telecom Retention Analytics

![Python](https://img.shields.io/badge/Python-3.10-blue)
![SQL](https://img.shields.io/badge/SQL-Advanced-blue)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Wrangling-yellow)
![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-Machine%20Learning-orange)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboards-yellow)
![Analytics](https://img.shields.io/badge/Data%20Analytics-Business-success)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 📌 Executive Summary

This project delivers a **data-driven retention analysis framework** for a telecom company, focusing on identifying the primary drivers of customer churn and quantifying their business impact.

Using a combination of **SQL analytics, Python-based machine learning, and dashboard reporting**, the solution enables the organization to proactively identify at-risk customers and optimize retention strategies.

---

## 🎯 Business Objective

The primary objective of this analysis is to:

- Identify key drivers of customer churn  
- Quantify churn risk across customer segments  
- Enable proactive retention strategies  
- Improve customer lifetime value (CLV)  
- Reduce revenue leakage from avoidable churn  

---

## 🧠 Key Business Questions

- Which customer profiles are most likely to churn?  
- What contract types are associated with higher retention risk?  
- How do pricing and tenure influence churn behavior?  
- Which services reduce churn probability?  
- How can we prioritize retention efforts effectively?  

---

## 📊 Approach & Methodology

This project follows a structured analytics pipeline:

### 1. Data Engineering (SQL Layer)
- Data cleaning and validation  
- KPI extraction  
- Cohort structuring  
- Star schema modeling  

### 2. Exploratory Analysis (EDA)
- Customer segmentation  
- Churn distribution analysis  
- Revenue and tenure insights  
- Behavioral pattern detection  

### 3. Predictive Modeling (Python)
- Feature engineering  
- Classification modeling (Random Forest)  
- Feature importance analysis  
- Model evaluation using classification metrics  

### 4. Visualization Layer
- Executive dashboards  
- Customer insights dashboards  
- Retention cohort analysis  
- Model performance reporting  

---

## 📁 Project Structure

```bash
telecom-retention-analytics/
│
├── data/
│   └── telco_customer_churn.csv
│
├── dashboards/
│   ├── 01_executive_overview.png
│   ├── 02_churn_analysis.png
│   ├── 03_cohort_retention.png
│   ├── 04_customer_insights.png
│
├── images/
│   ├── dashboard_preview.png
│   ├── feature_importance.png
│   └── model_results.png
│
├── python/
│   └── churn_prediction.py
│
├── sql/
│   ├── 03_cleaning.sql
│   ├── 04_data_quality_checks.sql
│   ├── 05_kpis.sql
│   ├── 06_exploratory_analysis.sql
│   ├── 07_cohort_analysis.sql
│   └── 08_star_schema.sql
│
├── requirements.txt
└── README.md
```

### 📈 Key Insights (Business Impact)

Month-to-month contracts represent the highest churn risk segment
Early lifecycle customers (low tenure) show significantly higher attrition
Higher monthly charges correlate with increased churn probability
Lack of additional services increases vulnerability to churn
Retention strategies should prioritize early-stage customer engagement

### 🤖 Predictive Modeling

A Random Forest Classifier was implemented to estimate churn probability.

Model Strengths:
Captures non-linear relationships
Robust performance across mixed feature types
Provides interpretability through feature importance
Evaluation Metrics:
Accuracy
Precision
Recall
F1-Score
ROC-AUC
### 📊 Outcome

The solution enables:

Identification of high-risk customers before churn occurs
Prioritization of retention campaigns
Data-driven decision-making for customer success teams
Improved visibility into revenue at risk
### 🚀 Strategic Recommendations

Implement early-life cycle retention programs (first 3–6 months)
Incentivize long-term contracts to reduce churn exposure
Bundle additional services to increase stickiness
Monitor high-risk segments using predictive scoring models
Integrate churn model into CRM workflows
### 📌 Future Enhancements

Model optimization (XGBoost / LightGBM)
SHAP-based explainability layer
Real-time churn scoring API
Deployment via Streamlit or cloud dashboard
Automated retraining pipeline

*Created by Brenda Espinosa*
