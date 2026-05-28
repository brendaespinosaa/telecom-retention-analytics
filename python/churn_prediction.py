# =====================================================
# TELECOM CUSTOMER RETENTION ANALYTICS
# CHURN PREDICTION MODEL
# =====================================================

# =====================================================
# IMPORT LIBRARIES
# =====================================================

import pandas as pd
import numpy as np

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import (
    accuracy_score,
    classification_report,
    confusion_matrix
)

import matplotlib.pyplot as plt


# =====================================================
# LOAD DATASET
# =====================================================

df = pd.read_csv('../data/telco_customer_churn.csv')


# =====================================================
# DATA CLEANING
# =====================================================

# Remove blank spaces
df['TotalCharges'] = df['TotalCharges'].replace(' ', np.nan)

# Convert to numeric
df['TotalCharges'] = pd.to_numeric(df['TotalCharges'])

# Fill missing values
df['TotalCharges'] = df['TotalCharges'].fillna(
    df['TotalCharges'].median()
)


# =====================================================
# CREATE TARGET VARIABLE
# =====================================================

df['churn_flag'] = df['Churn'].apply(
    lambda x: 1 if x == 'Yes' else 0
)


# =====================================================
# DROP UNUSED COLUMNS
# =====================================================

df = df.drop(columns=[
    'customerID',
    'Churn'
])


# =====================================================
# ENCODE CATEGORICAL VARIABLES
# =====================================================

categorical_columns = df.select_dtypes(
    include=['object']
).columns

encoder = LabelEncoder()

for column in categorical_columns:
    df[column] = encoder.fit_transform(df[column])


# =====================================================
# SPLIT FEATURES AND TARGET
# =====================================================

X = df.drop('churn_flag', axis=1)

y = df['churn_flag']


# =====================================================
# TRAIN TEST SPLIT
# =====================================================

X_train, X_test, y_train, y_test = train_test_split(
    X,
    y,
    test_size=0.2,
    random_state=42
)


# =====================================================
# TRAIN MODEL
# =====================================================

model = RandomForestClassifier(
    n_estimators=200,
    random_state=42
)

model.fit(X_train, y_train)


# =====================================================
# PREDICTIONS
# =====================================================

y_pred = model.predict(X_test)


# =====================================================
# MODEL EVALUATION
# =====================================================

accuracy = accuracy_score(y_test, y_pred)

print('\n===================================')
print('MODEL ACCURACY')
print('===================================')

print(f'Accuracy: {accuracy:.2f}')


print('\n===================================')
print('CLASSIFICATION REPORT')
print('===================================')

print(classification_report(y_test, y_pred))


print('\n===================================')
print('CONFUSION MATRIX')
print('===================================')

print(confusion_matrix(y_test, y_pred))


# =====================================================
# FEATURE IMPORTANCE
# =====================================================

feature_importance = pd.DataFrame({
    'Feature': X.columns,
    'Importance': model.feature_importances_
})

feature_importance = feature_importance.sort_values(
    by='Importance',
    ascending=False
)


print('\n===================================')
print('TOP FEATURES DRIVING CHURN')
print('===================================')

print(feature_importance.head(10))


# =====================================================
# FEATURE IMPORTANCE CHART
# =====================================================

top_features = feature_importance.head(10)

plt.figure(figsize=(10,6))

plt.barh(
    top_features['Feature'],
    top_features['Importance']
)

plt.xlabel('Importance')
plt.ylabel('Feature')

plt.title('Top Features Driving Customer Churn')

plt.gca().invert_yaxis()

plt.tight_layout()

plt.show()