USE [sqm]
GO
/****** Object:  Table [dbo].[Juridicas]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Juridicas](
	[idJuridica] [int] IDENTITY(1,1) NOT NULL,
	[iPosicion] [int] NULL,
	[iCategoria] [int] NULL,
	[dtFecha] [int] NULL,
	[dtFechaPub] [int] NULL,
	[szFuente] [varchar](500) NULL,
	[szTitulo] [varchar](500) NULL,
	[szDestacado] [varchar](500) NULL,
	[szNoticia] [varchar](5000) NULL,
	[szSeccion] [nvarchar](255) NULL,
	[szPagina] [nvarchar](255) NULL,
	[szImagePr] [nvarchar](255) NULL,
	[iAprobada] [int] NULL,
	[szImgDestacado] [nvarchar](255) NULL,
 CONSTRAINT [PK_Juridicas] PRIMARY KEY CLUSTERED 
(
	[idJuridica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
