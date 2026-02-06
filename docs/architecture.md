# Architecture Design

This project follows a layered data engineering architecture.

## Raw Layer
Purpose:
- Store original source data
- Maintain audit traceability

Tables:
- raw_shipments
- raw_customers
- raw_fx_rates

---

## Staging Layer
Purpose:
- Data cleansing
- Type standardization
- Deduplication

Tables:
- stg_shipments
- stg_customers
- stg_fx_rates

---

## Analytics Layer
Purpose:
- Provide analytics-ready star schema

Tables:
- dim_customer
- fact_shipments