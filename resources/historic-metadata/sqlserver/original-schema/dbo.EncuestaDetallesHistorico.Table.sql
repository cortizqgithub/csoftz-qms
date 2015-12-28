USE [sqm]
GO
/****** Object:  Table [dbo].[EncuestaDetallesHistorico]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EncuestaDetallesHistorico](
	[idEncuestaDetalle] [int] NOT NULL,
	[idEncuestaOpcion] [int] NULL,
	[idEncuesta] [int] NULL,
	[dblAcumulado] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
