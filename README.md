# 🏦 Bank Customer Churn Analysis

## 📌 Project Overview
This project analyzes customer churn for a retail bank to identify the key drivers of customer attrition and highlight high-risk customer segments. The work combines **SQL-based data analysis** with an **interactive Tableau dashboard** to convert raw banking data into actionable retention insights.

---

## 🎯 Business Objectives
- Measure overall customer churn behavior  
- Identify churn patterns across age, gender, geography, and credit score  
- Analyze the relationship between churn, account balance, tenure, and product usage  
- Segment customers into churn risk groups to support targeted retention strategies  

---

## 🗂 Dataset
Customer-level banking dataset containing:

- **Demographics** → Age, Gender, Geography  
- **Account Information** → Balance, Tenure, Number of Products  
- **Engagement Indicators** → Active Member Status, Credit Card Ownership  
- **Financial Profile** → Credit Score  
- **Target Variable** → Churn Status  

---

## 🛠 Tools & Technologies
- **SQL** – Data querying, aggregation, subqueries, and window functions  
- **Tableau** – Interactive dashboard and visual analytics  
- **Excel** – Initial data inspection and validation  

---

## 📊 Key Analysis Performed (SQL)
- Churn rate analysis by **gender, age group, and geography**  
- Identification of high-risk customers using **balance, tenure, and product count**  
- Use of `GROUP BY`, `CASE WHEN`, subqueries, and window functions  
- Customer ranking and benchmarking using `RANK()` and `AVG() OVER()`  
- Risk segmentation based on behavioral and financial indicators  

(SQL queries are included in the repository)

---

## 📈 Dashboard Insights
- Overall churn rate is **~20%**, with significantly higher churn among inactive customers  
- Customers holding **only 1 product** show elevated churn probability  
- Age group **25–44** contributes the highest churn volume  
- Lower credit score segments exhibit increased churn rates  
- **High-balance but low-engagement** customers present strong retention risk  

---

## 📎 Deliverables
- 📊 Interactive Tableau Dashboard  
- 🧾 SQL Scripts for Data Analysis  
- 📄 Project Documentation (this README)  

---

## 🚀 Business Impact
This project demonstrates how SQL and BI tools can be integrated to:

- Translate raw customer data into measurable business insights  
- Identify churn drivers and high-risk segments  
- Enable data-driven retention planning  
- Support strategic decision-making in customer lifecycle management  

---

## 🔗 Project Links
- **Tableau Dashboard:**  
  https://public.tableau.com/app/profile/anshumaan.mishra/viz/BankChurnDashboard_17652200808200/Dashboard1  

- **GitHub Repository:**  
  https://github.com/mi9Ans/bank-customer-churn-analysis-dashboard


