USE [sqm]
GO
/****** Object:  Table [dbo].[LinksInteres]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinksInteres](
	[IdLink] [int] IDENTITY(1,1) NOT NULL,
	[szNombre] [nvarchar](255) NULL,
	[szeMail] [nvarchar](255) NULL,
	[szUrl] [nvarchar](255) NULL
) ON [PRIMARY]

GO
