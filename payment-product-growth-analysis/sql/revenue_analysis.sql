-- E. Revenue Analysis
USE payment;
SELECT 
    SUM(amount) AS total_revenue,
    AVG(amount) AS avg_transaction_value
FROM transactions;

-- Revenue Per chanel
SELECT 
    u.acquisition_channel,
    SUM(t.amount) AS revenue
FROM transactions t
JOIN users u ON t.user_id = u.user_id
GROUP BY u.acquisition_channel
ORDER BY revenue DESC;
/* While some channels drive higher user acquisition, 
revenue contribution varies significantly, 
highlighting differences in user quality.*/