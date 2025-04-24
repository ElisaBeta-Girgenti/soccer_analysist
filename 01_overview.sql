-- Basic customer count
SELECT COUNT(*) AS total_customers FROM customers;

-- Count by gender
SELECT Gender, COUNT(*) AS count FROM customers GROUP BY Gender;

-- Summary statistics
SELECT 
  MIN(Age) AS min_age,
  MAX(Age) AS max_age,
  AVG(Age) AS avg_age,
  AVG(Income) AS avg_income,
  AVG(CreditScore) AS avg_credit_score
FROM customers;
