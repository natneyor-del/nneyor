-- Q: How many players are on each team?


-- A: Let's count the players for each team in the player table,
--    using the team table to show each team's code...

SELECT tm.t_code AS team_code
     , COUNT(pd.pl_id) AS player_count
  FROM dbo.tblTeamDim AS tm
  LEFT JOIN dbo.tblPlayerDim AS pd
    ON tm.t_id = pd.t_id
 GROUP BY tm.t_id
        , tm.t_code
 ORDER BY tm.t_code;

 SELECT COUNT(*) AS total_players FROM dbo.tblPlayerDim;