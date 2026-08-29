/* Checking logical consistency */
SELECT COUNT(*)
FROM match_stats
WHERE goals > shots
OR shots_on_target > shots;