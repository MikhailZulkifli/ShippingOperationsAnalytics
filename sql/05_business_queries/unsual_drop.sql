WITH weekly_stats AS (
    SELECT
        c.account_tier,
        shipment_week,
        SUM(is_on_time) AS on_time_shipments
    FROM fact_shipments f
    JOIN dim_customer c
        ON f.customer_id = c.customer_id
    GROUP BY 1,2
),
lagged AS (
    SELECT
        account_tier,
        shipment_week,
        on_time_shipments,
        LAG(on_time_shipments) OVER (
            PARTITION BY account_tier
            ORDER BY shipment_week
        ) AS prev_week
    FROM weekly_stats
)
SELECT
    account_tier,
    shipment_week,
    prev_week - on_time_shipments AS drop_value
FROM lagged
ORDER BY drop_value DESC;