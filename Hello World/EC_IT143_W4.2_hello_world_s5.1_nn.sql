-- Q: What is the current date and time?

-- A: Let's ask SQL Server and find out...

DROP TABLE IF EXISTS dbo.t_hello_world;

SELECT *
  INTO dbo.t_hello_world
  FROM dbo.v_hello_world_load;

-- Test the table
SELECT * FROM dbo.t_hello_world;