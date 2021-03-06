USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorConsolidadoEvaluacionPendientes]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorConsolidadoEvaluacionPendientes](
	[idPCEvalPend] [int] IDENTITY(1,1) NOT NULL,
	[idPCEval] [int] NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idProveedor] [int] NOT NULL,
 CONSTRAINT [PK_ProveedorConsolidadoEvaluacionPendientes] PRIMARY KEY CLUSTERED 
(
	[idPCEvalPend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
