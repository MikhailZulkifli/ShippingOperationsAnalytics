# Shipping Operations Analytics – Data Engineering Case

## Objective
Design and build an analytics-ready data model to analyze shipment performance across customers and time.

This solution prepares operational shipment data for business reporting and analytical insights.

---

## Architecture Overview

A layered data transformation approach was implemented:

Raw Layer → Staging Layer → Dimensional Model → Business Analytics

### Raw Layer
Stores source data as-is.

### Staging Layer
Applies data cleansing, standardization, and deduplication.

### Dimensional Model
Implements star schema optimized for analytics.

---

## Data Model

### Dimension Table
- dim_customer

### Fact Table
- fact_shipments

---

## Key Transformations

### Data Preparation
- Standardized date formats
- Applied consistent data types
- Removed duplicate records

### Currency Normalization
Converted all shipment monetary values to USD using FX rates.

### Derived Fields
- is_on_time
- is_late
- amount_usd

---

## Data Quality Controls
- Primary key uniqueness validation
- Referential integrity checks
- FX coverage validation

---

## Assumptions
- Shipments dataset represents one row per shipment.
- Customers dataset is authoritative.
- FX rate must match shipment date.
- Missing FX rates are flagged as NULL.

---

## Execution Order

1. Run raw layer table scripts
2. Run staging transformations
3. Create dimension tables
4. Create fact tables
5. Execute validation checks
6. Execute business queries

---

## Business Questions Addressed

1. Week-over-week drop in on-time shipments by customer tier.
2. Customer volatility in on-time delivery.
3. Shipment mode impact on late deliveries.

---

## Potential Enhancements

+ Incremental loading - Rather than rebuilding the fact table fully, incremental loading could be implemented using shipment date or ingestion timestamps.
+ Slowly Changing Dimensions - Customer attributes such as account tier or segment may change over time. Implementing SCD Type 2 would allow historical tracking of customer attribute changes.
