USE [sqm]
GO
/****** Object:  Table [dbo].[SocialesOtros]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialesOtros](
	[IdSociales] [int] IDENTITY(1,1) NOT NULL,
	[szTitulo] [ntext] NULL,
	[szDescripcion] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
