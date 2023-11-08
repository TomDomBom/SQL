-- https://platform.stratascratch.com/coding/9719-find-all-business-postal-codes-of-restaurants-with-issues-related-to-the-water/official-solution?code_type=3
SELECT 
    distinct business_postal_code
FROM sf_restaurant_health_violations
WHERE 
    violation_description LIKE '%water%'