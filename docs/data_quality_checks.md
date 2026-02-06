# Data Quality Strategy

## Deduplication
Distinct selection applied in staging tables.

## Key Validation
Primary keys validated for:
- shipment_id
- customer_id

## Referential Integrity
All fact records validated against dimension tables.

## FX Rate Coverage
Shipments missing FX rate flagged for monitoring.