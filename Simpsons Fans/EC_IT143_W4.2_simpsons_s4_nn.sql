/******************************************************************************
NAME:    EC_IT143_W4.2_simpsons_s4_nn.sql
PURPOSE: Create the view v_simpsons_transactions_per_member_load, which
         returns the number of card transactions made by each person.

MODIFICATION LOG:
Ver      Date        Author        Description
-----    ----------  -----------   -------------------------------------------
1.0      11/17/2026  Your Name     1. Built this script for EC IT143

RUNTIME:
0m 0s

NOTES:
This view is the source for the table t_simpsons_transactions_per_member. It
counts the rows in FBS_Viza_Costmo for each Member_Name. The view holds no
data. It runs its query every time it is selected.
******************************************************************************/

-- Q: How many card transactions has each person made?

-- A: Let's count the rows in the FBS_Viza_Costmo card table
--    for each member name...

CREATE OR ALTER VIEW dbo.v_simpsons_transactions_per_member_load
AS
SELECT Member_Name AS member_name
     , COUNT(*) AS transaction_count
  FROM dbo.FBS_Viza_Costmo
 GROUP BY Member_Name;
GO

-- Test the view
SELECT *
  FROM dbo.v_simpsons_transactions_per_member_load
 ORDER BY member_name;