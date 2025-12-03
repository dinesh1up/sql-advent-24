(prank_id: INTEGER, target_name: VARCHAR, prank_description: VARCHAR, evilness_score: INTEGER, created_at: TIMESTAMP)



WITH ranked AS (
  SELECT
    prank_id,
    created_at,
    target_name,
    evilness_score,
    prank_description,
    ROW_NUMBER() OVER (
      PARTITION BY target_name
      ORDER BY evilness_score DESC, created_at DESC
    ) AS rn
  FROM grinch_prank_ideas
)
SELECT
  prank_id,
  created_at,
  target_name,
  evilness_score,
  prank_description
FROM ranked
WHERE rn = 1
ORDER BY target_name;
