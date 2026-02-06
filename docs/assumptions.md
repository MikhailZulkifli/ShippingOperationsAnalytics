# Assumptions

1. Shipment dataset grain is one row per shipment.
2. FX rates are matched using shipment date and currency.
3. Customers dataset represents authoritative master data.
4. Missing customer references are retained but flagged.
5. Currency conversion uses daily FX rates without interpolation.