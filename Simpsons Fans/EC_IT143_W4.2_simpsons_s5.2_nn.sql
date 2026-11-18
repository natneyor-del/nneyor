USE [Simpsons]
GO

/****** Object:  Table [dbo].[t_simpsons_transactions_per_member]    Script Date: 11/18/2026 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[t_simpsons_transactions_per_member]
GO

CREATE TABLE [dbo].[t_simpsons_transactions_per_member](
    [member_name] [nvarchar](100) NOT NULL,
    [transaction_count] [int] NOT NULL
        CONSTRAINT [df_t_simpsons_transactions_per_member_transaction_count] DEFAULT (0),
    CONSTRAINT [pk_t_simpsons_transactions_per_member] PRIMARY KEY CLUSTERED ([member_name] ASC)
) ON [PRIMARY]
GO

