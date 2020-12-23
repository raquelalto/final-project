-- Create tables for raw data to be loaded into
CREATE TABLE player_stats (
player_id INT PRIMARY KEY,
timeOnIce INT,
assists INT, 
goals INT, 
shots INT
);

CREATE TABLE player_info (
player_id INT PRIMARY KEY, 
firstName TEXT, 
lastName TEXT, 
nationality TEXT
);

-- Joins tables
SELECT player_stats.player_id, player_stats.timeOnIce, player_stats.assists, player_stats.goals, player_stats.shots 
FROM player_stats
JOIN player_info
ON player_stats.player_id= player_info.player_id;