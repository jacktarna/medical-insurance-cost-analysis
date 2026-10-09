# Insurance Risk & Pricing Analytics

## Project Overview

This end-to-end data analytics project explores factors associated with medical insurance charges and develops a machine-learning model to estimate insurance costs. The project combines Python-based data cleaning and exploratory analysis, statistical testing, predictive modeling, SQL analysis, and an interactive Power BI dashboard.

## Project Objectives

* Clean and validate medical insurance data.
* Explore relationships between customer characteristics and insurance charges.
* Use statistical tests to investigate differences in charges between groups.
* Build and evaluate a linear regression model to estimate medical insurance charges.
* Analyze the data using SQL and communicate findings through an interactive dashboard.

## Technologies

* **Python**
* **Pandas and NumPy**
* **Matplotlib**
* **SciPy**
* **Scikit-learn**
* **MySQL**
* **Power BI**
* **Google Colab**
* **GitHub**

## Project Workflow

### 1. Data Cleaning and Preparation — Python

* Loaded and inspected the original dataset containing 1,338 records.
* Checked data types, missing values, duplicate records, categorical values, and basic domain validity.
* Removed one exact duplicate, resulting in 1,337 records.
* Created age groups and BMI categories for comparative analysis.
* Exported and validated a cleaned dataset containing nine columns.

### 2. Exploratory Data Analysis — Python

* Examined distributions of medical insurance charges and customer characteristics.
* Compared mean, median, standard deviation, minimum, and maximum charges across smoking-status groups.
* Analyzed insurance charges by age group and BMI category.
* Investigated relationships between age, BMI, number of children, smoking status, and charges.
* Created histograms, box plots, scatter plots, and correlation summaries.

### 3. Statistical Analysis — SciPy

* Conducted Welch's independent-samples t-test to examine differences in average charges between smokers and non-smokers.
* Used one-way ANOVA to investigate differences in charges across age groups.
* Interpreted statistical results in the context of the dataset, recognizing that statistical significance does not establish causation.

### 4. Predictive Modeling — Scikit-learn

* Built a linear regression pipeline to estimate medical insurance charges.
* Applied one-hot encoding to categorical features and retained numerical predictors.
* Split the dataset into training and test sets using an 80/20 split.
* Evaluated model performance using Mean Absolute Error (MAE), Root Mean Squared Error (RMSE), and R-squared.
* Examined model coefficients, actual-versus-predicted values, residuals, and prediction errors across smoking-status groups.

**Model performance on the test set:**

| Metric                         |    Result |
| ------------------------------ | --------: |
| Mean Absolute Error (MAE)      | $4,177.05 |
| Root Mean Squared Error (RMSE) | $5,956.34 |
| R-squared                      |     0.807 |

These results describe performance on one test split and should not be interpreted as a guarantee of prediction accuracy on new data. Prediction errors also differed between smokers and non-smokers.

### 5. SQL Analysis — MySQL

* Created a relational table and imported the cleaned dataset.
* Validated the imported records.
* Wrote queries to compare average charges by smoking status, age group, region, BMI category, and number of children.
* Examined the combined relationship between age group and smoking status.

### 6. Interactive Dashboard — Power BI

* Created a KPI card displaying average medical insurance charges.
* Built comparison charts for smoking status, age group, region, and BMI category.
* Added interactive slicers for smoking status and region.
* Designed the dashboard to make group-level differences easier to explore.

## Key Findings

* **Smoking status:** Average charges were approximately $32,050 for smokers and $8,441 for non-smokers.
* **Age:** Average charges increased across the defined age groups, from approximately $9,111 for ages 18–25 to $18,796 for ages 56–64.
* **BMI category:** The Obese category had the highest average charges, at approximately $15,581.
* **Region:** The Southeast had the highest average charges among the four regions, at approximately $14,735.
* **Model performance:** The linear regression model achieved an R-squared of 0.807 on the held-out test set, with an MAE of approximately $4,177.

These are descriptive findings from this dataset. They do not demonstrate that any individual characteristic causes higher insurance charges.

## Repository Structure

* `notebooks/` — Python notebook for data preparation, exploratory analysis, statistical tests, and predictive modeling.
* `sql/` — SQL scripts for data import and analysis.
* `data/` — Cleaned dataset, if redistribution is permitted.
* `powerbi/` — Power BI report and dashboard preview.
* `README.md` — Project documentation.

## Limitations

* The analysis uses an observational dataset and identifies associations rather than causal effects.
* Model performance was evaluated using a single train/test split.
* The linear regression model may not capture all nonlinear relationships or differences in prediction error across customer groups.
