-- https://platform.stratascratch.com/coding/2017-paid-users-in-april-2020?code_type=3
SELECT COUNT(DISTINCT user_id) 
FROM rc_users
WHERE status ='paid' -- Paid users
    AND user_id IN -- Checking in April 2020
        (SELECT user_id
        FROM rc_calls
        WHERE date BETWEEN '2020-04-01' AND '2020-04-30')