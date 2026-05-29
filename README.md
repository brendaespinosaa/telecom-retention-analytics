# 📦 Telecom Retention Analytics

## 📖 Overview
This project focuses on analyzing customer churn (retention) for a telecom company using data analytics and machine learning techniques.

The main objective is to identify key drivers of customer churn and generate actionable insights to improve customer retention, reduce churn rate, and increase customer lifetime value.

The project combines SQL-based data exploration, Python-based predictive modeling, and dashboard visualizations to support business decision-making.

---

## 🚀 Technologies Used
- Python  
- Pandas  
- NumPy  
- Matplotlib  
- Seaborn  
- Scikit-Learn  
- SQL  
- Jupyter Notebook  
- Power BI (dashboards)

---

## 📊 Business Problem
Telecom companies face significant churn rates driven by multiple factors such as:

- Contract type (month-to-month vs long-term)  
- Monthly charges  
- Tenure duration  
- Customer support experience  
- Service adoption and usage behavior  

Understanding churn is essential to:

- Improve customer retention strategies  
- Reduce revenue loss  
- Increase customer lifetime value (CLV)  
- Identify high-risk customers early  

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

🔍 Exploratory Data Analysis (SQL + Python)

The analysis includes:

Data cleaning and quality checks (SQL)
KPI extraction and business metrics
Customer segmentation analysis
Churn distribution analysis
Cohort and retention analysis
Revenue and risk insights
📈 Visualizations
Executive Overview

Churn Analysis

Cohort Retention

Customer Insights

Feature Importance

Model Results

🧠 Feature Engineering

Key features used in the modeling process:

Tenure groups
Contract type encoding
Monthly charges segmentation
Service usage indicators
Customer behavioral attributes

These features help capture churn risk patterns and customer behavior signals.

🤖 Machine Learning Model

A Random Forest Classifier was used to predict customer churn.

Why this model:

Handles non-linear relationships
Works well with mixed feature types
Provides feature importance insights
📊 Model Evaluation

The model was evaluated using:

Accuracy
Precision
Recall
F1-Score
ROC-AUC

The results show strong performance in identifying customers at risk of churn.

💼 Business Insights

Key insights from the analysis:

Month-to-month contracts show the highest churn rate
Customers with low tenure are more likely to churn
Higher monthly charges increase churn probability
Lack of additional services is linked to churn behavior
Early engagement is critical for retention
🎯 Project Goals

This project demonstrates:

SQL-based data analysis
Data cleaning and transformation
Exploratory data analysis (EDA)
Predictive modeling with Python
Business-oriented storytelling
Dashboard reporting
📌 Future Improvements

Possible next steps:

Hyperparameter tuning (GridSearch / Optuna)
Advanced models (XGBoost, LightGBM)
SHAP explainability for model interpretability
Deployment as a Streamlit app
Real-time churn prediction system
