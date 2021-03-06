USE [sqm]
GO
/****** Object:  Table [dbo].[CalidadDocumentoAuditoriaInterna]    Script Date: 16/12/2015 07:59:20 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CalidadDocumentoAuditoriaInterna](
	[idCalidadDocumentoAuditoriaInterna] [int] IDENTITY(1,1) NOT NULL,
	[idCalidadDocumentoAuditoriaInternaPrograma] [int] NOT NULL,
	[idCalidadEmpresa] [int] NOT NULL,
	[szCodigoArea] [char](2) NOT NULL,
	[iSeq] [int] NULL,
	[szNomenclatura] [varchar](30) NULL,
	[szInfoProceso] [text] NULL,
	[idAuditorPrincipal] [int] NOT NULL,
	[iStatus] [smallint] NOT NULL,
	[dtUltimaActualizacion] [int] NULL,
	[bEjecucion] [smallint] NULL,
	[dtAuditoria] [int] NOT NULL,
	[iNumNC] [int] NULL,
	[szNumerales] [text] NULL,
	[idCalidadSistema] [int] NOT NULL,
 CONSTRAINT [PK_CalidadDocumentoAuditoriaInterna] PRIMARY KEY CLUSTERED 
(
	[idCalidadDocumentoAuditoriaInterna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
) ON [GCALIDAD] TEXTIMAGE_ON [GCALIDADTEXT]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_CalidadDocumentoAuditoriaInterna_Nomenclatura]    Script Date: 16/12/2015 07:59:20 a.m. ******/
CREATE NONCLUSTERED INDEX [IDX_CalidadDocumentoAuditoriaInterna_Nomenclatura] ON [dbo].[CalidadDocumentoAuditoriaInterna]
(
	[szNomenclatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [GCALIDAD]
GO
