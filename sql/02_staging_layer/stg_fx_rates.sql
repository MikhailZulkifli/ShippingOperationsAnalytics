
CREATE OR REPLACE TABLE stg_fx_rates AS
SELECT
    CAST(rate_date AS DATE) AS fx_date,
    quote_currency AS currency_code,
    CAST(fx_to_usd AS FLOAT) AS fx_to_usd
FROM raw_fx_rates;
