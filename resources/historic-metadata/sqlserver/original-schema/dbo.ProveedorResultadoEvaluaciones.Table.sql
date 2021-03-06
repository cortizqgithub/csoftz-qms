USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorResultadoEvaluaciones]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorResultadoEvaluaciones](
	[IdProveedorResultadoEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdProveedor] [int] NOT NULL,
	[dtFechaRegistro] [int] NULL,
	[szRespuestas] [text] NULL,
	[szConclusion] [text] NULL,
	[szAspectos] [text] NULL,
	[dblPuntajeObtenido] [float] NULL,
	[dblPuntajeTotal] [int] NULL,
	[dblPuntajePosible] [int] NULL,
	[iGradoImportancia] [int] NULL,
	[iGradoControl] [int] NULL,
	[bConsolidado] [int] NULL,
 CONSTRAINT [PK_ProveedorResultadoEvaluaciones] PRIMARY KEY CLUSTERED 
(
	[IdProveedorResultadoEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
