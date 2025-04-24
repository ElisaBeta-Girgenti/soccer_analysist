-- Segment by age and spending
SELECT 
  CASE
    WHEN Age < 30 THEN 'Young'
    WHEN Age BETWEEN 30 AND 50 THEN 'Middle-aged'
    ELSE 'Senior'
  END AS age_segment,
  CASE
    WHEN SpendingScore >= 80 THEN 'High Spender'
    WHEN SpendingScore BETWEEN 50 AND 79 THEN 'Moderate Spender'
    ELSE 'Low Spender'
  END AS spending_category,
  COUNT(*) AS count
FROM customers
GROUP BY age_segment, spending_category
ORDER BY count DESC;
