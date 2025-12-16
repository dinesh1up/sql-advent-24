grinch_mischief_log - (log_date: DATE, mischief_score: INTEGER)


The Grinch is tracking his daily mischief scores to see how his behavior changes over time. 
Can you find how many points his score increased or decreased each day compared to the previous day?

SELECT 
    log_date,
    mischief_score,
    mischief_score - LAG(mischief_score) OVER (ORDER BY log_date) AS score_change
FROM 
    grinch_mischief_log
ORDER BY 
    log_date;
