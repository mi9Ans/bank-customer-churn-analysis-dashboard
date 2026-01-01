CREATE DATABASE bank_churn;
USE bank_churn;

SELECT * FROM  bank_churn LIMIT 10;

DESCRIBE bank_churn;

SELECT 
    Gender,
    COUNT(CustomerID) AS total_cusomers,
    AVG(Balance) AS avg_balance,
    AVG(EstimatedSalary) AS avg_salary,
    AVG(Tenure) AS avg_tenure,
    AVG(Age) AS avg_age
FROM bank_churn
GROUP BY Gender;

SELECT
    Gender,
    COUNT(*) AS total_customer,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM bank_churn
GROUP BY Gender;

SELECT 
    Geography,
    COUNT(*) AS total_customer,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM bank_churn
GROUP BY Geography
ORDER BY churn_rate_pct DESC;

SELECT
    CustomerID,
    Geography,
    Balance,
    ROUND(AVG(Balance) OVER (PARTITION BY Geography), 2) AS avg_geo_balance,
    ROUND(Balance - AVG(Balance) OVER (PARTITION BY Geography), 2) AS diff_from_avg
FROM bank_churn
ORDER BY CustomerID;

SELECT
    CustomerID,
    Geography,
    Balance,
    RANK() OVER (PARTITION BY Geography ORDER BY Balance DESC) AS balance_rank
FROM bank_churn;

SELECT
    Tenure,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM bank_churn
GROUP BY Tenure
ORDER BY Tenure;

SELECT
    Age,
    COUNT(*) AS churned_customers,
    SUM(COUNT(*)) OVER (ORDER BY Age) AS cumulative_churn
FROM bank_churn
WHERE Exited = 1
GROUP BY Age
ORDER BY Age;

SELECT
    CustomerID,
    NumOfProducts,
    ROUND(AVG(NumOfProducts) OVER (), 2) AS avg_products,
    CASE
        WHEN NumOfProducts > AVG(NumOfProducts) OVER () THEN 'Above Average'
        ELSE 'Below Average'
    END AS product_segment
FROM bank_churn;

SELECT
    CASE
        WHEN Age < 30 THEN 'Young'
        WHEN Age BETWEEN 30 AND 50 THEN 'Middle-aged'
        ELSE 'Senior'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM bank_churn
GROUP BY age_group;

SELECT
    CustomerID,
    Geography,
    Balance,
    Tenure,
    NumOfProducts,
    Exited,
    ROUND(AVG(Balance) OVER (PARTITION BY Geography), 2) AS avg_geo_balance,
    RANK() OVER (PARTITION BY Geography ORDER BY Balance DESC) AS balance_rank
FROM bank_churn
WHERE Exited = 0;




