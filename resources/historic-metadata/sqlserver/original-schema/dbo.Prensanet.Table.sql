USE [sqm]
GO
/****** Object:  Table [dbo].[Prensanet]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prensanet](
	[IdPrensanet] [int] IDENTITY(1,1) NOT NULL,
	[iPosicion] [int] NULL,
	[iSector] [int] NULL,
	[dtFecha] [int] NULL,
	[dtFechaPub] [int] NULL,
	[szFuente] [nvarchar](255) NULL,
	[szTitulo] [nvarchar](255) NULL,
	[szDestacado] [ntext] NULL,
	[szNoticia] [ntext] NULL,
	[szSeccion] [nvarchar](255) NULL,
	[szPagina] [nvarchar](255) NULL,
	[szCentimetros] [nvarchar](255) NULL,
	[szColumnas] [nvarchar](255) NULL,
	[szSubCobertura] [nvarchar](255) NULL,
	[szImagePr] [nvarchar](255) NULL,
	[bAprobada] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
