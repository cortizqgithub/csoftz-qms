USE [sqm]
GO
/****** Object:  Table [dbo].[Tarifas]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifas](
	[IdTarifas] [int] IDENTITY(1,1) NOT NULL,
	[szFileName] [nvarchar](255) NULL
) ON [PRIMARY]

GO
