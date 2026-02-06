SELECT
    c.account_tier,
    f.mode_of_shipment,
    AVG(is_late) AS late_rate
FROM fact_shipments f
JOIN dim_customer c
    ON f.customer_id = c.customer_id
GROUP BY 1,2
ORDER BY late_rate DESC;