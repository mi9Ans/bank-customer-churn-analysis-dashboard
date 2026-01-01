# Bank Customer Churn Analysis

## 📌 Project Overview
This project analyzes customer churn for a retail bank to identify key drivers of customer attrition and highlight high-risk customer segments. The analysis combines **SQL-based data exploration** with an **interactive Tableau dashboard** to deliver actionable business insights.

---

## 🎯 Business Objectives
- Understand overall customer churn behavior
- Identify churn patterns across age, gender, geography, and credit score
- Analyze the relationship between churn, account balance, tenure, and product usage
- Segment customers into churn risk buckets to support retention strategies

---

## 🗂 Dataset
- Customer-level banking data including:
  - Demographics (Age, Gender, Geography)
  - Account information (Balance, Tenure, Number of Products)
  - Engagement indicators (Active Member, Credit Card Ownership)
  - Credit Score and Churn Status

---

## 🛠 Tools & Technologies
- **SQL** – Data querying, aggregation, subqueries, window functions
- **Tableau** – Interactive dashboard and visual analytics
- **Excel** – Initial data inspection (if applicable)

---

## 📊 Key Analysis Performed (SQL)
- Churn rate analysis by gender, age group, and geography
- Identification of high-risk customers using balance, tenure, and product count
- Use of `GROUP BY`, `CASE WHEN`, subqueries, and window functions
- Ranking and comparison of customers using `RANK()` and `AVG() OVER()`

(SQL queries are included in the repository)

---

## 📈 Dashboard Insights
- Overall churn rate is ~20%, with higher churn among inactive customers
- Customers with **1 product** show significantly higher churn
- Certain age groups (25–44) contribute most to churn volume
- Lower credit score segments exhibit higher churn rates
- High-balance but low-engagement customers present retention risk

---

## 📎 Deliverables
- 📊 Interactive Tableau Dashboard
- 🧾 SQL Script for Data Analysis
- 📄 Project Documentation (this README)

---

## 🚀 Key Takeaways
This project demonstrates how SQL and BI tools can be used together to:
- Translate raw customer data into business insights
- Identify churn drivers and high-risk segments
- Support data-driven decision-making in customer retention

---

## 🔗 Portfolio
- Tableau Dashboard: https://public.tableau.com/app/profile/anshumaan.mishra/viz/BankChurnDashboard_17652200808200/Dashboard1
- GitHub Repository: https://github.com/mi9Ans/bank-customer-churn-analysis-dashboard

