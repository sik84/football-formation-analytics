/* Checking data quality */
SELECT COUNT(*)
FROM match_stats
WHERE goals IS NULL
   OR shots IS NULL
   OR shots_on_target IS NULL;