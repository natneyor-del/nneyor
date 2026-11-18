-- Q: How many card transactions has each person made?

-- A: Let's count the rows in the FBS_Viza_Costmo card table
--    for each member name...

EXEC dbo.usp_simpsons_transactions_per_member_load;

-- Test the table
SELECT *
  FROM dbo.t_simpsons_transactions_per_member
 ORDER BY member_name;