-- Q: How many players are on each team?

-- A: Let's count the players for each team in the player table,
--    using the team table to show each team's code...

TRUNCATE TABLE dbo.t_myfc_players_per_team;

INSERT INTO dbo.t_myfc_players_per_team (team_code, player_count)
SELECT team_code
     , player_count
  FROM dbo.v_myfc_players_per_team_load;

-- Test the table
SELECT *
  FROM dbo.t_myfc_players_per_team
 ORDER BY team_code;

