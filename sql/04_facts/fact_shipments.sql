CREATE OR REPLACE TABLE fact_shipments AS
SELECT
    s.shipment_id,
    s.customer_id,
    s.shipment_date,

    DATE_TRUNC('week', s.shipment_date) AS shipment_week,

    s.mode_of_shipment,
    s.warehouse_block,
    s.customer_rating,
    s.customer_care_calls,

    s.order_amount_local AS amount_local,

    s.order_amount_local * fx.fx_to_usd AS amount_usd,

    CASE
        WHEN s.reached_on_time_flag = 1 THEN 1
        ELSE 0
    END AS is_on_time,

    CASE
        WHEN s.reached_on_time_flag = 0 THEN 1
        ELSE 0
    END AS is_late

FROM stg_shipments s

LEFT JOIN dim_customer c
    ON s.customer_id = c.customer_id

LEFT JOIN stg_fx_rates fx
    ON s.currency_code = fx.currency_code
    AND s.shipment_date = fx.fx_date;
