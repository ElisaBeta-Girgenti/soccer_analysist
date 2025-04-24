-- Average income by gender
SELECT Gender, AVG(Income) AS avg_income
FROM customers
GROUP BY Gender;

-- Income by age group
SELECT 
  CASE
    WHEN Age < 25 THEN '18-24'
    WHEN Age BETWEEN 25 AND 34 THEN '25-34'
    WHEN Age BETWEEN 35 AND 44 THEN '35-44'
    WHEN Age BETWEEN 45 AND 54 THEN '45-54'
    ELSE '55+'
  END AS age_group,
  AVG(Income) AS avg_income
FROM customers
GROUP BY age_group;
