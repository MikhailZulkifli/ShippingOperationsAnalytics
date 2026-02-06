# Data Model Design

## Dimension: dim_customer
Grain: One row per customer

Primary Key:
- customer_id

---

## Fact: fact_shipments
Grain: One row per shipment

Foreign Keys:
- customer_id

---

## Relationship

dim_customer (1) → (Many) fact_shipments