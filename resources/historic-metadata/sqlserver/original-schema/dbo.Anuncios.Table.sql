USE [sqm]
GO
/****** Object:  Table [dbo].[Anuncios]    Script Date: 16/12/2015 07:59:19 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anuncios](
	[IdAnuncio] [int] IDENTITY(1,1) NOT NULL,
	[dtFecha] [int] NULL,
	[szTexto] [nvarchar](110) NULL
) ON [PRIMARY]

GO
