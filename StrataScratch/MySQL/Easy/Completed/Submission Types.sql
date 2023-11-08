-- https://platform.stratascratch.com/coding/2002-submission-types?code_type=3
SELECT user_id
FROM loans
WHERE type IN ('Refinance', 'InSchool')
GROUP BY user_id
HAVING COUNT(DISTINCT type) = 2