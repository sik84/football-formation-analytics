CREATE DATABASE IF NOT EXISTS football_analytics;

USE football_analytics;

CREATE TABLE leagues (
    league_id INT AUTO_INCREMENT PRIMARY KEY,
    league_name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    league_level INT
);

CREATE TABLE teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    league_id INT,
    FOREIGN KEY (league_id) REFERENCES leagues(league_id)
);

CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    season VARCHAR(20),
    match_date DATE,
    league_id INT,
    home_team_id INT,
    away_team_id INT,
    FOREIGN KEY (league_id) REFERENCES leagues(league_id),
    FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES teams(team_id)
);

CREATE TABLE formations (
    formation_id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    team_id INT,
    formation_name VARCHAR(20),
    is_home BOOLEAN,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

CREATE TABLE match_stats (
    stat_id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    team_id INT,
    goals INT,
    shots INT,
    shots_on_target INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);