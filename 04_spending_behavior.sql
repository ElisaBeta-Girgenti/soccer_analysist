-- Average spending score by gender
SELECT Gender, AVG(SpendingScore) AS avg_spending
FROM customers
GROUP BY Gender;

-- Spending score vs income correlation 
SELECT Income, SpendingScore FROM customers;

-- Top 10 spenders
SELECT Customer_ID, Income, SpendingScore
FROM customers
ORDER BY SpendingScore DESC
LIMIT 10;
