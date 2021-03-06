USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoAuditoriaInternaPrograma]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoAuditoriaInternaPrograma](
	[idCalidadDocumentoAuditoriaInternaPrograma] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[idTipoAuditoriaCalidad] [int] NOT NULL,
	[iYear] [smallint] NOT NULL,
	[iCiclo] [smallint] NOT NULL,
	[dtFI] [int] NOT NULL,
	[dtFF] [int] NOT NULL,
	[szObjeto] [text] NULL,
	[szAlcance] [text] NULL,
	[szCriterios] [text] NULL,
	[szRecursos] [text] NULL,
	[iNumPrograma] [int] NULL,
	[szEvalPrograma] [varchar](4000) NULL,
 CONSTRAINT [PK_CalidadDocumentoAuditoriaInternaPrograma] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoAuditoriaInternaPrograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
