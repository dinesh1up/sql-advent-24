cookie_batches - (batch_id: INT, oven_id: INT, baking_time_minutes: DECIMAL)

SELECT
  oven_id,
  ROUND(AVG(baking_time_minutes), 1) AS avg_baking_time_minutes
FROM cookie_batches
GROUP BY oven_id
ORDER BY oven_id;
