USE [sqm]
GO
/****** Object:  Table [dbo].[SocialesMatrimonios]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialesMatrimonios](
	[IdMatrimonio] [int] IDENTITY(1,1) NOT NULL,
	[szDescripcion] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
