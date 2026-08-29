INSERT INTO teams (team_name, country)
VALUES
('Bayern München', 'Germany'),
('Borussia Dortmund', 'Germany'),
('Real Madrid', 'Spain'),
('FC Barcelona', 'Spain');

INSERT INTO leagues (league_name, country, league_level)
VALUES
('Bundesliga', 'Germany', 1),
('La Liga', 'Spain', 1);

INSERT INTO matches (match_id, season, match_date, league_id, home_team_id, away_team_id)
VALUES
(1001, '2024/25', '2025-05-01', 1, 1, 2),
(1002, '2024/25', '2025-05-02', 2, 3, 4);

INSERT INTO formations (
    match_id,
    team_id,
    formation_name,
    is_home
)
VALUES
(1001, 1, '4-2-3-1', TRUE),
(1001, 2, '4-3-3', FALSE);

INSERT INTO formations (
    match_id,
    team_id,
    formation_name,
    is_home
)
VALUES
(1002, 3, '4-5-1', TRUE),
(1002, 4, '4-4-2', FALSE);

INSERT INTO match_stats (
    match_id,
    team_id,
    goals,
    shots,
    shots_on_target
)
VALUES
(1001, 1, 3, 15, 8),
(1001, 2, 1, 9, 4);

INSERT INTO match_stats (
    match_id,
    team_id,
    goals,
    shots,
    shots_on_target
)
VALUES
(1002, 3, 2, 11, 6),
(1002, 4, 2, 13, 5);