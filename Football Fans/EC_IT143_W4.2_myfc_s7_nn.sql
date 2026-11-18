/******************************************************************************
NAME:    EC_IT143_W4.2_myfc_s7_nn.sql
PURPOSE: Create the stored procedure usp_myfc_players_per_team_load, which
         reloads the table t_myfc_players_per_team from the view
         v_myfc_players_per_team_load.

MODIFICATION LOG:
Ver      Date        Author        Description
-----    ----------  -----------   -------------------------------------------
1.0      11/17/2026  Nathaniel Neyor II     1. Built this script for EC IT143

RUNTIME:
0m 0s

NOTES:
This procedure empties t_myfc_players_per_team and reloads it from the view,
so each run gives a fresh copy of the player count for each team. It can be
called by a larger ETL process.
******************************************************************************/

-- Q: How many players are on each team?

-- A: Let's count the players for each team in the player table,
--    using the team table to show each team's code...

CREATE OR ALTER PROCEDURE dbo.usp_myfc_players_per_team_load
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.t_myfc_players_per_team;

    INSERT INTO dbo.t_myfc_players_per_team (team_code, player_count)
    SELECT team_code
         , player_count
      FROM dbo.v_myfc_players_per_team_load;
END;
GO