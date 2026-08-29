/* Business Question:
Which tactical formations produce the highest average number of shots per match?

Description:
This analysis calculates the average number of shots for each tactical formation. Shots are analysed because creating shooting opportunities is a prerequisite for scoring goals and therefore an important indicator of offensive performance.

Expected Insight:
Formations with a higher average number of shots may indicate a greater ability to create attacking opportunities. However, a high number of shots does not necessarily lead to more goals, making further analyses of shots on target and goal efficiency necessary.
*/

SELECT 
f.formation_name,
AVG(ms.shots) AS average_shots
FROM formations f
JOIN match_stats ms
ON f.match_id = ms.match_id
AND f.team_id = ms.team_id
GROUP BY f.formation_name
ORDER BY average_shots DESC