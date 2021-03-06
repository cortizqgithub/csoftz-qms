USE [sqm]
GO
/****** Object:  Table [dbo].[Noticamara]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticamara](
	[IdNoticamara] [int] IDENTITY(1,1) NOT NULL,
	[iPosicion] [int] NULL,
	[iPlantilla] [int] NULL,
	[dtFecha] [int] NULL,
	[dtFechaPub] [int] NULL,
	[szTitulo] [nvarchar](255) NULL,
	[szLead] [ntext] NULL,
	[szNoticia] [ntext] NULL,
	[szImageTh] [nvarchar](255) NULL,
	[szImagePr] [nvarchar](255) NULL,
	[szImageFoot] [nvarchar](255) NULL,
	[bJustImage] [int] NULL,
	[szLink] [nvarchar](255) NULL,
	[bInterno] [int] NULL,
	[bAprobada] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
