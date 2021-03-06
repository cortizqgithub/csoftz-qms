USE [sqm]
GO
/****** Object:  Table [dbo].[SabiaQue]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SabiaQue](
	[idSabiaQue] [int] IDENTITY(1,1) NOT NULL,
	[szTitulo] [text] NULL,
	[szNoticia] [varchar](5000) NULL,
	[szDestacado] [varchar](5000) NULL,
	[szImgNoticia] [varchar](5000) NULL,
	[szImgDestacado] [varchar](5000) NULL,
	[iPlantilla] [int] NULL,
	[dtFecha] [int] NULL,
	[dtFechaPub] [int] NULL,
	[iAprobada] [int] NULL,
 CONSTRAINT [PK_SabiaQue] PRIMARY KEY CLUSTERED 
(
	[idSabiaQue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
