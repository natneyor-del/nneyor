/******************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s4_nn.sql
PURPOSE: Create the view v_hello_world_load, which returns a hello world
         message and the current date and time.

MODIFICATION LOG:
Ver      Date        Author           Description
-----    ----------  -----------   -------------------------------------------
1.0      11/17/2026  Nathaniel Neyor II           1. Built this script for EC IT143

RUNTIME:
0m 0s

NOTES:
This view is the source for the table t_hello_world, which is loaded in
the next steps. The view holds no data. It runs its query every time
it is selected.
******************************************************************************/

-- Q: What is the current date and time?

-- A: Let's ask SQL Server and find out...

CREATE OR ALTER VIEW dbo.v_hello_world_load
AS
SELECT 'Hello World' AS my_message
     , GETDATE() AS current_date_time;
GO

-- Test the view
SELECT * FROM dbo.v_hello_world_load;