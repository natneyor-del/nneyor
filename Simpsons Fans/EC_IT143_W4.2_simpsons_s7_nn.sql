/******************************************************************************
NAME:    EC_IT143_W4.2_simpsons_s7_nn.sql
PURPOSE: Create the stored procedure usp_simpsons_transactions_per_member_load,
         which reloads the table t_simpsons_transactions_per_member from the
         view v_simpsons_transactions_per_member_load.

MODIFICATION LOG:
Ver      Date        Author        Description
-----    ----------  -----------   -------------------------------------------
1.0      11/18/2026  Nathaniel Neyor II     1. Built this script for EC IT143

RUNTIME:
0m 0s

NOTES:
This procedure empties t_simpsons_transactions_per_member and reloads it from
the view, so each run gives a fresh count of card transactions for each
person. It can be called by a larger ETL process.
******************************************************************************/

-- Q: How many card transactions has each person made?

-- A: Let's count the rows in the FBS_Viza_Costmo card table
--    for each member name...

CREATE OR ALTER PROCEDURE dbo.usp_simpsons_transactions_per_member_load
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.t_simpsons_transactions_per_member;

    INSERT INTO dbo.t_simpsons_transactions_per_member (member_name, transaction_count)
    SELECT member_name
         , transaction_count
      FROM dbo.v_simpsons_transactions_per_member_load;
END;
GO