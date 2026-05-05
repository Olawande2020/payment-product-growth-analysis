-- C. Activation Rate
USE payment;
SELECT 
    COUNT(DISTINCT u.user_id) AS total_users,
    COUNT(DISTINCT t.user_id) AS activated_users
FROM users u
LEFT JOIN transactions t 
    ON u.user_id = t.user_id 
    AND t.transaction_date <= u.signup_date + INTERVAL 7 DAY ;
/* A relatively low percentage of users complete a transaction within their first 7 days, 
suggesting delayed value realization.*/