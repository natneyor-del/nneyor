-- Q: How many card transactions has each person made?

-- A: Let's count the rows in the FBS_Viza_Costmo card table
--    for each member name...

SELECT Member_Name AS member_name
     , COUNT(*) AS transaction_count
  FROM dbo.FBS_Viza_Costmo
 GROUP BY Member_Name
 ORDER BY Member_Name;