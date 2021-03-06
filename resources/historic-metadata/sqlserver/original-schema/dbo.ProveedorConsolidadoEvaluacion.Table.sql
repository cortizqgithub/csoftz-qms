USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorConsolidadoEvaluacion]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProveedorConsolidadoEvaluacion](
	[idPCEval] [int] IDENTITY(1,1) NOT NULL,
	[dtWhen] [int] NOT NULL,
	[dtStart] [int] NOT NULL,
	[dtEnd] [int] NOT NULL,
 CONSTRAINT [PK_ProveedorConsolidadoEvaluacion] PRIMARY KEY CLUSTERED 
(
	[idPCEval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
