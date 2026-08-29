/* This analysis evaluates how efficiently each tactical formation converts shots into goals. 
It compares the average number of goals with the average number of shots 
to measure the overall goal-scoring efficiency of each formation.
*/

SELECT
    f.formation_name,
    (SUM(ms.goals) / NULLIF(SUM(ms.shots), 0)) * 100 AS goal_efficiency
FROM formations f
JOIN match_stats ms
    ON f.match_id = ms.match_id
   AND f.team_id = ms.team_id
GROUP BY f.formation_name
ORDER BY goal_efficiency DESC;