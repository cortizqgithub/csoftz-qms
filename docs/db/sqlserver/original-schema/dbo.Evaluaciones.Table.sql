USE [sqm]
GO
/****** Object:  Table [dbo].[Evaluaciones]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idEvaluador] [int] NULL,
	[idEvaluado] [int] NULL,
	[bEvaluado] [int] NULL,
	[dtFecha] [int] NULL,
	[szResultados] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
