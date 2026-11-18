-- Q: What is the current date and time?

-- A: Let's ask SQL Server and find out...

EXEC dbo.usp_hello_world_load;

-- Test the table
SELECT * FROM dbo.t_hello_world;