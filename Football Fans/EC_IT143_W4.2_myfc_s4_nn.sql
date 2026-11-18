/******************************************************************************
NAME:    EC_IT143_W4.2_myfc_s4_nn.sql
PURPOSE: Create the view v_myfc_players_per_team_load, which returns the
         number of players on each team.

MODIFICATION LOG:
Ver      Date        Author        Description
-----    ----------  -----------   -------------------------------------------
1.0      11/17/2026  Nathaniel Neyor II     1. Built this script for EC IT143
 
RUNTIME:
0m 0s

NOTES:
This view is the source for the table t_myfc_players_per_team. It counts
players by team using tblTeamDim and tblPlayerDim. The view holds no data. It
runs its query every time it is selected.
******************************************************************************/

-- Q: How many players are on each team?

-- A: Let's count the players for each team in the player table,
--    using the team table to show each team's code...

CREATE OR ALTER VIEW dbo.v_myfc_players_per_team_load
AS
SELECT tm.t_code AS team_code
     , COUNT(pd.pl_id) AS player_count
  FROM dbo.tblTeamDim AS tm
  LEFT JOIN dbo.tblPlayerDim AS pd
    ON tm.t_id = pd.t_id
 GROUP BY tm.t_id
        , tm.t_code;
GO

-- Test the view
SELECT *
  FROM dbo.v_myfc_players_per_team_load
 ORDER BY team_code;