CREATE TABLE raw_shipments (
    shipment_id STRING,
    customer_id STRING,
    shipment_date DATE,
    order_amount_local FLOAT,
    currency_code STRING,
    mode_of_shipment STRING,
    warehouse_block STRING,
    customer_rating INT,
    customer_care_calls INT,
    reached_on_time_flag INT
);
