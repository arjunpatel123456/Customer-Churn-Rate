
-- 1. Churn rate per subscription type
SELECT Subscription_Type, COUNT(*) AS total_customers, 
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS churn_rate
FROM customer_data
GROUP BY Subscription_Type;

-- 2. Churn rate by payment method
SELECT Payment_Method, COUNT(*) AS total_customers, 
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
       (SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS churn_rate
FROM customer_data
GROUP BY Payment_Method;
