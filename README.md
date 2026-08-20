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

   # Netflix Movies & TV Shows EDA and Prediction Model

## 📌 Project Overview
This project presents a comprehensive Exploratory Data Analysis (EDA) and Machine Learning classification workflow on the Netflix Movies and TV Shows dataset. It explores global content distribution, duration trends, release patterns, top genres, directors, and actors, followed by a Machine Learning model to predict content classifications.

## 🎯 Key Features & Workflow
- **Data Cleaning & Missing Value Handling:**
  - Filled missing values for `director`, `cast`, `country`, `rating`, and `date_added` using domain defaults and modal imputation.
  - Converted dates to `datetime` format and extracted temporal features (`month_added`, `year_added`, `years_to_add`).
- **Outlier Handling & Feature Engineering:**
  - Applied IQR (Interquartile Range) filtering to treat temporal outliers between release year and date added.
  - Categorized content regions (`Domestic (US)` vs. `International`).
  - Extracted individual genres, directors, and cast members using string exploding techniques.
- **Exploratory Data Analysis (EDA):**
  - **Content Ratio:** Analyzed the distribution between Movies (~69.6%) and TV Shows (~30.4%).
  - **Top Categories:** Visualized Top 5 Genres, Top Directors, and Top Actors (e.g., Anupam Kher, Shah Rukh Khan).
  - **Temporal & Duration Insights:** Tracked content added over time, TV Show season counts, and Movie duration distribution.
- **Machine Learning & Modeling:**
  - Encoded categorical features using `LabelEncoder`.
  - Split data using `train_test_split` (80% train / 20% test).
  - Trained a **Random Forest Classifier** (`n_estimators=100`, `max_depth=10`, `class_weight='balanced'`).
  - Evaluated performance using Accuracy, Precision, Recall, F1-Score, and a Seaborn `Confusion Matrix`.

## 🛠️ Tech Stack
- **Python**
- **Data Manipulation & Preprocessing:** Pandas, NumPy, Scikit-Learn (`LabelEncoder`, `train_test_split`)
- **Data Visualization:** Matplotlib, Seaborn
- **Machine Learning:** Scikit-Learn (`RandomForestClassifier`, `classification_report`, `confusion_matrix`)

## 📊 How to Run
1. Clone the repository:
   ```bash
   git clone [https://github.com/your-username/Netflix-EDA-Machine-Learning.git](https://github.com/your-username/Netflix-EDA-Machine-Learning.git)
