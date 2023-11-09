-- https://platform.stratascratch.com/coding/10352-users-by-avg-session-time?code_type=3
SELECT user_id, AVG(TIMESTAMPDIFF(SECOND, load_time, exit_time)) AS session_time -- Get the user_id and average session
FROM (
    SELECT 
        DATE(timestamp), -- The different days
        user_id, 
        MAX(IF(action = 'page_load', timestamp, NULL)), -- Get the latest page load
        MIN(IF(action = 'page_exit', timestamp, NULL))  -- Get the earliest page exit
    FROM facebook_web_log
    GROUP BY 1, 2
) t 
GROUP BY user_id
HAVING session_time IS NOT NULL; -- If session_time is 0

