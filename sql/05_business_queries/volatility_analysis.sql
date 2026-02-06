SELECT
    customer_id,
    STDDEV(is_on_time) AS volatility_score
FROM fact_shipments
GROUP BY customer_id
ORDER BY volatility_score DESC;