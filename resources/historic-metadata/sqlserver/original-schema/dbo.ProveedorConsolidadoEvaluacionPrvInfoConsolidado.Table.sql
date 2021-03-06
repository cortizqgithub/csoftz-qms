USE [sqm]
GO
/****** Object:  Table [dbo].[ProveedorConsolidadoEvaluacionPrvInfoConsolidado]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProveedorConsolidadoEvaluacionPrvInfoConsolidado](
	[idPCEValPrvInfoConsolidado] [int] IDENTITY(1,1) NOT NULL,
	[idPCEval] [int] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[iGradoImportancia] [int] NOT NULL,
	[iGradoControl] [int] NOT NULL,
	[szPuntaje] [varchar](50) NOT NULL,
	[bActivo] [smallint] NOT NULL,
 CONSTRAINT [PK_ProveedorConsolidadoEvaluacionPrvInfoConsolidado] PRIMARY KEY CLUSTERED 
(
	[idPCEValPrvInfoConsolidado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
