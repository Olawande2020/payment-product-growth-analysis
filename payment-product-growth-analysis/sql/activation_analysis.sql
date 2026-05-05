-- D. Retention Analysis
USE payment;
SELECT 
    COUNT(DISTINCT u.user_id) AS total_users,
    COUNT(DISTINCT e.user_id) AS retained_users
FROM users u
LEFT JOIN app_events e 
    ON u.user_id = e.user_id 
    AND e.event_type = 'app_open'
    AND e.event_date BETWEEN 
        u.signup_date + INTERVAL 6 DAY
        AND u.signup_date + INTERVAL 7 DAY;
/* Retention declines significantly after the first week,
 indicating weak habit formation and limited long-term engagement.*/