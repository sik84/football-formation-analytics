/*
Business Question:
Which tactical formation has the highest average number of goals?

Description:
This analysis compares the average number of goals scored by each tactical formation.

Expected Insight:
Identify formations associated with higher offensive goal output.
*/

SELECT
    f.formation_name,
    AVG(ms.goals) AS average_goals
FROM formations f
JOIN match_stats ms
    ON f.match_id = ms.match_id
   AND f.team_id = ms.team_id
GROUP BY f.formation_name
ORDER BY average_goals DESC;