-- B.FUNNEL ANALYSIS
USE payment;
SELECT 
    COUNT(DISTINCT CASE WHEN event_type = 'signup_completed' THEN user_id END) AS signups,
    COUNT(DISTINCT CASE WHEN event_type = 'add_card' THEN user_id END) AS card_added,
    COUNT(DISTINCT CASE WHEN event_type = 'transaction_success' THEN user_id END) AS transacted
FROM app_events;
/* While all users complete signup, only a portion proceed to add a payment method, 
and an even smaller percentage complete a transaction. 
The largest drop-off occurs between signup and card addition, indicating onboarding friction. */