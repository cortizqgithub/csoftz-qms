USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorConsolidadoEvaluacionResultado]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorConsolidadoEvaluacionResultado](
	[idPCEvalRslt] [int] IDENTITY(1,1) NOT NULL,
	[idPCEval] [int] NOT NULL,
	[dtFechaRegistro] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[iGradoControl] [int] NOT NULL,
	[iGradoImportancia] [int] NOT NULL,
	[dblPuntajeObtenido] [float] NOT NULL,
	[dblPuntajeTotal] [int] NOT NULL,
	[dblPuntajePosible] [int] NOT NULL,
	[iCntSuppliers] [int] NOT NULL,
	[dblAverage] [float] NOT NULL,
 CONSTRAINT [PK_ProveedorConsolidadoEvaluacionResultado] PRIMARY KEY CLUSTERED 
(
	[idPCEvalRslt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
