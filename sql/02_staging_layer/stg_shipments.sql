
CREATE OR REPLACE TABLE stg_shipments AS
SELECT DISTINCT
    Shipment_ID AS shipment_id,
    customer_id,
    CAST(date AS DATE) AS shipment_date,
    CAST(order_amount_local AS FLOAT) AS order_amount_local,
    Currency_code AS currency_code,
    Mode_of_Shipment AS mode_of_shipment,
    Warehouse_block AS warehouse_block,
    Customer_rating,
    Customer_care_calls,
    Reached.on.Time_Y.N AS reached_on_time_flag
FROM raw_shipments
WHERE Shipment_ID IS NOT NULL;
