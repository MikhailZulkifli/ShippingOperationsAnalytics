
SELECT *
FROM fact_shipments f
LEFT JOIN dim_customer c
ON f.customer_id = c.customer_id
WHERE c.customer_id IS NULL;
