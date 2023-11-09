-- https://platform.stratascratch.com/coding/10351-activity-rank?code_type=3
WITH cte_gmail_emails AS
    (SELECT
        from_user,
        COUNT(*) AS total_emails,
        ROW_NUMBER() OVER(
                    ORDER BY COUNT(*) DESC, from_user ASC) as r
    FROM google_gmail_emails
    GROUP BY from_user)

SELECT
    from_user,
    total_emails,
    r
FROM cte_gmail_emails
GROUP BY from_user


-- select * from google_gmail_emails;