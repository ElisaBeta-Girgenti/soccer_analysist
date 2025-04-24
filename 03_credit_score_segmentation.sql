-- Credit score ranges
SELECT 
  CASE 
    WHEN CreditScore < 580 THEN 'Poor'
    WHEN CreditScore BETWEEN 580 AND 669 THEN 'Fair'
    WHEN CreditScore BETWEEN 670 AND 739 THEN 'Good'
    WHEN CreditScore BETWEEN 740 AND 799 THEN 'Very Good'
    ELSE 'Excellent'
  END AS credit_segment,
  COUNT(*) AS customer_count
FROM customers
GROUP BY credit_segment
ORDER BY customer_count DESC;
