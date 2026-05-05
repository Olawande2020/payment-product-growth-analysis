/* i analyzed a payment product to identify opportunities 
across acquisition, activation, retention, and revenue.*/

-- understanding my dataset
USE payment;

SELECT *
FROM app_events;

SELECT *
FROM transactions;

SELECT *
FROM users;

-- A.User growth & acquisition
SELECT 
    acquisition_channel,
    COUNT(DISTINCT user_id) AS total_users
FROM users
GROUP BY acquisition_channel
ORDER BY total_users DESC;
/* Facebook Ads drives the highest user acquisition, followed by Google Ads and Referrals.*/
