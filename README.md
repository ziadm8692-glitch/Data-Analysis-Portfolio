# Data Analytics & Machine Learning Portfolio

Welcome to my project repository! This portfolio contains my work in Data Analysis, Business Intelligence, and Machine Learning.

## 📌 Featured Projects

### 1. Student Academic Performance & Risk Prediction
- **Description:** End-to-end Machine Learning pipeline predicting academic risk using behavioral, sleep, and mental health metrics.
- **Tech Stack:** Python, Pandas, Seaborn, Scikit-learn (Random Forest Classifier).

### 2. Employee Attrition Analysis & Prediction
- **Description:** Exploratory analysis and classification modeling to identify key turnover drivers using IBM HR dataset.
- **Tech Stack:** Python, Pandas, Scikit-learn.

### 3. Business Intelligence & SQL Analytics
- **Description:** Interactive Power BI dashboards and advanced SQL querying for sales performance and customer trends.
- **Tech Stack:** Power BI, MS SQL Server, Excel.

---
📫 **Contact & Links:**
- **LinkedIn:** [linkedin.com/in/ziad-mostafa-691042378](https://linkedin.com/in/ziad-mostafa-691042378)
- **Portfolio Website:** [coral-spinosaurus-765801.framer.app](https://coral-spinosaurus-765801.framer.app)

# Diabetes Risk Prediction ML Model (50K Patients Dataset)

## 📌 Project Overview
This project performs an end-to-end data science workflow to analyze healthcare metrics and predict the risk of diabetes (`High`, `Moderate`, `Low`) across a dataset of 50,000 patients. It covers data cleaning, feature engineering, exploratory data analysis (EDA), and machine learning classification using Random Forest.

## 🎯 Key Features & Workflow
- **Data Cleaning & Imputation:** Handled missing numerical values (using Median) and categorical values (using Mode).
- **Exploratory Data Analysis (EDA):**
  - Analyzed correlation between Fasting Blood Sugar, BMI, Stress Levels, and Diabetes Risk.
  - Examined lifestyle conditions (Hypertension, Fatty Liver, Exercise Habits, Smoking Status).
  - Derived health metrics like `BMI_Level` categories (`Normal`, `Overweight`, `Obese`, `Underweight`).
- **Data Preprocessing:** Categorical encoding using `OrdinalEncoder` for ML compatibility.
- **Predictive Modeling:** Trained a `RandomForestClassifier` with `train_test_split` (70% train / 30% test).
- **Model Evaluation:** Evaluated using Accuracy Score, Confusion Matrix, and Classification Report (Precision, Recall, F1-Score).

## 🛠️ Tech Stack
- **Python**
- **Libraries:** Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn (`RandomForestClassifier`, `OrdinalEncoder`)

## 📊 Key Insights & Results
- High-risk patients show significant correlation with elevated BMI, high Fasting Blood Sugar, and specific lifestyle factors like hypertension and fatty liver.
- Model Performance achieved high accuracy in classifying diabetes risk levels.

## 🚀 How to Run
1. Clone the repository:
   ```bash
   git clone [https://github.com/your-username/Diabetes-Risk-Prediction.git](https://github.com/your-username/Diabetes-Risk-Prediction.git)
