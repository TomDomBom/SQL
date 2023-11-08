-- https://platform.stratascratch.com/coding/2142-third-heaviest-package?code_type=3
WITH cte_amazon_shipment AS -- CTE used to calculate total weight for each shipment and rank based on weight
    (SELECT shipment_id,
    SUM(weight) AS total_weight, -- Get the total weight
    RANK() OVER(
                ORDER BY SUM(weight) DESC) as r -- Order by the heaviest weight on top
    FROM amazon_shipment
    GROUP BY shipment_id)
SELECT
    shipment_id,
    total_weight
FROM cte_amazon_shipment
WHERE r = 3 -- Third heaviest shipment