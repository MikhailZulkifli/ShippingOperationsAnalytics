
SELECT shipment_id, COUNT(*)
FROM fact_shipments
GROUP BY shipment_id
HAVING COUNT(*) > 1;
