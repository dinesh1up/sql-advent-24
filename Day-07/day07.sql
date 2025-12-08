Question - Frosty wants to know how many unique snowflake types were recorded on the December 24th, 2025 storm. Can you help him?

  
(flake_id: INT, flake_type: VARCHAR, fall_time: TIMESTAMP)


SELECT COUNT(DISTINCT flake_type) AS unique_snowflake_types
FROM snowfall_log
WHERE fall_time = '2025-12-24';
