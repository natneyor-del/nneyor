-- Q: How many players are on each team?

-- A: Let's count the players for each team in the player table,
--    using the team table to show each team's code...

EXEC dbo.usp_myfc_players_per_team_load;

-- Test the table
SELECT *
  FROM dbo.t_myfc_players_per_team
 ORDER BY team_code;

