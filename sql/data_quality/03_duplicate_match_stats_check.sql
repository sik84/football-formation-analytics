SELECT
    match_id,
    team_id,
    COUNT(*)
FROM match_stats
GROUP BY match_id, team_id
HAVING COUNT(*) > 1;