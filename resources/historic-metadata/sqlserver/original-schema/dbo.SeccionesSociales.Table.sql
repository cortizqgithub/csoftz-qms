USE [sqm]
GO
/****** Object:  Table [dbo].[SeccionesSociales]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeccionesSociales](
	[IdSeccion] [int] IDENTITY(1,1) NOT NULL,
	[szSeccion] [nvarchar](255) NULL,
	[szLink] [nvarchar](255) NULL
) ON [PRIMARY]

GO
