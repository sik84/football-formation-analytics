/* Business Question:
Which tactical formations produce the highest average number of shots on target per match?

Description:
This analysis calculates the average number of shots on target for each tactical formation. While the previous analysis considers all shots, this analysis focuses on the shots that actually reach the goal. This provides a more precise indicator of offensive quality, as only shots on target have the potential to become goals.

Expected Insight:
Formations with a high average number of shots on target may indicate greater attacking effectiveness than formations that generate many shots but few accurate attempts.
*/

SELECT
f.formation_name,
AVG(ms.shots_on_target) AS average_shots_on_target
FROM formations f
JOIN match_stats ms
ON f.match_id = ms.match_id
AND f.team_id = ms.team_id
GROUP BY f.formation_name
ORDER BY average_shots_on_target DESC;