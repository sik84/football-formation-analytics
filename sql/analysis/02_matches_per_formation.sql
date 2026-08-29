/*
Business Question:
How many times was each tactical formation used?

Description:
This analysis counts how often each tactical formation appears in the dataset.
The result is used to assess the reliability of the KPI averages calculated in the other analyses.

Expected Insight:
Formations with only a few recorded matches should be interpreted more cautiously than formations with a larger sample size.
*/

SELECT
    formation_name,
    COUNT(*) AS number_of_matches
FROM formations
GROUP BY formation_name
ORDER BY number_of_matches DESC;