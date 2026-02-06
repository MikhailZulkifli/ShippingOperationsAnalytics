
CREATE OR REPLACE TABLE stg_customers AS
SELECT DISTINCT
    customer_id,
    customer_name,
    customer_segment,
    account_tier,
    country_code,
    region,
    "Unnamed: 6" AS currency_code
FROM raw_customers
WHERE customer_id IS NOT NULL;
