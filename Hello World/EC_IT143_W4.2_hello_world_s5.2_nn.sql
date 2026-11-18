USE [EC_IT143_DA database]
GO

/****** Object:  Table [dbo].[t_hello_world]    Script Date: 11/17/2026 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[t_hello_world]
GO

CREATE TABLE [dbo].[t_hello_world](
    [my_message] [varchar](50) NOT NULL,
    [current_date_time] [datetime] NOT NULL
        CONSTRAINT [df_t_hello_world_current_date_time] DEFAULT (GETDATE()),
    CONSTRAINT [pk_t_hello_world] PRIMARY KEY CLUSTERED ([my_message] ASC)
) ON [PRIMARY]
GO

