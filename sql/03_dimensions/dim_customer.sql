CREATE OR REPLACE TABLE dim_customer AS
SELECT
    customer_id,
    customer_name,
    customer_segment,
    account_tier,
    country_code,
    region,
    currency_code
FROM stg_customers;