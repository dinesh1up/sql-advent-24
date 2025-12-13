npn_users - (user_id: INT, user_name: VARCHAR)
npn_messages - (message_id: INT, sender_id: INT, sent_at: TIMESTAMP)


The North Pole Network wants to see who's the most active in the holiday chat each day. 
Write a query to count how many messages each user sent, then find the most active user(s) each day. If multiple users tie for first place, return all of them.

WITH daily_counts AS (
    SELECT 
        DATE(m.sent_at) AS chat_date,
        u.user_id,
        u.user_name,
        COUNT(m.message_id) AS message_count
    FROM npn_messages m
    JOIN npn_users u ON m.sender_id = u.user_id
    GROUP BY chat_date, u.user_id
),
daily_max AS (
    SELECT 
        chat_date,
        MAX(message_count) AS max_count
    FROM daily_counts
    GROUP BY chat_date
)
SELECT 
    d.chat_date,
    d.user_name,
    d.message_count
FROM daily_counts d
JOIN daily_max m 
  ON d.chat_date = m.chat_date 
 AND d.message_count = m.max_count
ORDER BY d.chat_date, d.user_name;
