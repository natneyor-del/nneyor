USE [MyFC]
GO

/****** Object:  Table [dbo].[t_myfc_players_per_team]    Script Date: 11/17/2026 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[t_myfc_players_per_team]
GO

CREATE TABLE [dbo].[t_myfc_players_per_team](
    [team_code] [varchar](10) NOT NULL,
    [player_count] [int] NOT NULL
        CONSTRAINT [df_t_myfc_players_per_team_player_count] DEFAULT (0),
    CONSTRAINT [pk_t_myfc_players_per_team] PRIMARY KEY CLUSTERED ([team_code] ASC)
) ON [PRIMARY]
GO

