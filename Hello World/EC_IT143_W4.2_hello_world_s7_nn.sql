/******************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s7_nn.sql
PURPOSE: Create the stored procedure usp_hello_world_load, which reloads the
         table t_hello_world from the view v_hello_world_load.

MODIFICATION LOG:
Ver      Date        Author        Description
-----    ----------  -----------   -------------------------------------------
1.0      11/17/2026  Nathaniel Neyor II     1. Built this script for EC IT143

RUNTIME:
0m 0s

NOTES:
This procedure empties t_hello_world and reloads it from the view, so each
run gives a fresh copy. It can be called by a larger ETL process.
******************************************************************************/

-- Q: What is the current date and time?

-- A: Let's ask SQL Server and find out...

CREATE OR ALTER PROCEDURE dbo.usp_hello_world_load
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.t_hello_world;

    INSERT INTO dbo.t_hello_world (my_message, current_date_time)
    SELECT my_message
         , current_date_time
      FROM dbo.v_hello_world_load;
END;
GO