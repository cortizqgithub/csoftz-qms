USE [sqm]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[szTitulo] [ntext] NULL,
	[szEnunciado] [ntext] NULL,
	[szA] [ntext] NULL,
	[szB] [ntext] NULL,
	[szC] [ntext] NULL,
	[szD] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
