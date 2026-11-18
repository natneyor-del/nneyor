-- Q: What is the current date and time?

-- A: Let's ask SQL Server and find out...

TRUNCATE TABLE dbo.t_hello_world;

INSERT INTO dbo.t_hello_world (my_message, current_date_time)
SELECT my_message
     , current_date_time
  FROM dbo.v_hello_world_load;

-- Test the table
SELECT * FROM dbo.t_hello_world;